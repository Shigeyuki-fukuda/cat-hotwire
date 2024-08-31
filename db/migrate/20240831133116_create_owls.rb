class CreateOwls < ActiveRecord::Migration[7.2]
  def change
    create_table :owls do |t|
      t.string :name
      t.integer :age

      t.timestamps
    end
  end
end
