require_relative '../../lib/zonetor'

class WelcomeController < ApplicationController

  def index
    respond_to do |format|
      format.html do
        @foods = Food.all
        carb = @foods.select {|food| food.carb?}.shuffle.first
        fat = @foods.select {|food| food.fat?}.shuffle.first
        protein = @foods.select {|food| food.protein?}.shuffle.first

        save_session(carb, fat, protein)
        @zonetor = Zonetor.new(carb, fat, protein)
      end
      format.js do
        carb = Food.find(session[:carb])
        fat = Food.find(session[:fat])
        protein = Food.find(session[:protein])
        current = Food.find(params['id'])

        foods = selected_foods(current, carb, fat, protein)

        session[:carb] = foods[:carb].id
        session[:fat] = foods[:fat].id
        session[:protein] = foods[:protein].id

        @zonetor = Zonetor.new(foods[:carb], foods[:fat], foods[:protein])
      end
    end
  end

  def index2
  end

  def database
    `rake db:drop`
    `rake db:migrate`
    `rake db:setup`
    `rake db:seed`
    `rake assets:precompile`
  end

  private

  def selected_foods(current, carb, fat, protein)
    selected ={
        carb.type => carb,
        fat.type => fat,
        protein.type => protein
    }
    selected[current.type] = current
    selected
  end

  def save_session(carb, fat, protein)
    session[:carb] = carb.id
    session[:fat] = fat.id
    session[:protein] = protein.id
  end

end
