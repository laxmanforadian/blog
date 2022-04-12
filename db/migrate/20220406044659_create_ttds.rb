class CreateTtds < ActiveRecord::Migration[6.1]
  def change
    create_table :ttds do |t|
      t.string :name
      t.string :age
      t.string :email
      t.string :place
      t.string :time
      
      t.timestamps
    end
  end
end
