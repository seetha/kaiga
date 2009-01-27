class CreateFixedDeposits < ActiveRecord::Migration
  def self.up
    create_table :fixed_deposits do |t|
      t.string :son_daughter_wife_of
      t.string :resident_address
      t.date :fdopen_date
      t.string :name
      t.string :age
      t.string :father_husband
      t.string :relationship_with_member
      t.string :type

      t.timestamps
    end
  end

  def self.down
    drop_table :fixed_deposits
  end
end
