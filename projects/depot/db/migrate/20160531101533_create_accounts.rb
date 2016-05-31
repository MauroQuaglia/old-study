class CreateAccounts < ActiveRecord::Migration

  def change
    create_table(:accounts, force: true) do |table|
      table.string(:number)
      table.decimal(:balance, precision: 10, sclae: 2, defaul: 0)
    end
  end

end
