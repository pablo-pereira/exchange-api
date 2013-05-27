class ChangetypeToDollars < ActiveRecord::Migration
  def up
    change_table :dollars do |t|
      t.rename :type, :dollar_type
    end
  end


  def down
  end
end
