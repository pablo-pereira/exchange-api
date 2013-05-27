class CreateDollars < ActiveRecord::Migration
  def change
    create_table :dollars do |t|
      t.float :seller
      t.float :buyer
      t.integer :type

      t.timestamps
    end
  end
end
