class AddPhnumberToTtds < ActiveRecord::Migration[6.1]
  def change
    add_column :ttds, :phnumber, :integer
  end
end
