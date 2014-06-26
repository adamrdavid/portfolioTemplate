class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.string :title
      t.text :description
      t.decimal :price
      t.datetime :created_on

      t.timestamps
    end
  end
end
