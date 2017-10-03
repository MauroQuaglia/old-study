class CreateFoods < ActiveRecord::Migration[5.1]

  def change
    create_table(:foods) do |table|
      table.string(:name)
      table.decimal(:energy, :precision => 6, :scale => 2)
      table.decimal(:carbs, :precision => 6, :scale => 2)
      table.decimal(:fats, :precision => 6, :scale => 2)
      table.decimal(:proteins, :precision => 6, :scale => 2)
      table.string(:badges)
      table.timestamps
    end
  end

end