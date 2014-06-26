class AddCollectionToWorks < ActiveRecord::Migration
  def change
    add_column :works, :collection, :string
  end
end
