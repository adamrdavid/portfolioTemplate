class AddMediumToWorks < ActiveRecord::Migration
  def change
    add_column :works, :medium, :string
  end
end
