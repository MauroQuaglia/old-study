class CreateMeridians < ActiveRecord::Migration[5.0]
  def change
    create_table :meridians do |t|
      t.string :name

      t.timestamps
    end
  end
end
