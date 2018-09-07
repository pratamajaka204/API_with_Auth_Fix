class CreateBicycles < ActiveRecord::Migration[5.2]
  def change
    create_table :bicycles do |t|
      t.string :name
      t.string :series

      t.timestamps
    end
  end
end
