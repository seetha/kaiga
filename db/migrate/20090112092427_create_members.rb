class CreateMembers < ActiveRecord::Migration
  def self.up
    create_table :members do |t|
      t.string :cc_no
      t.string :emp_no
      t.string :photo_id
      t.string :member_no
      t.string :name
      t.string :designation
      t.string :section
      t.string :station
      t.date :dob
      t.string :age
      t.date :doj_npc
      t.date :doj_kaiga
      t.string :no_of_years_of_service
      t.date :date_of_retirement
      t.string :band_pay
      t.string :grade_pay
      t.string :present_address
      t.string :permanent_address
      t.string :contact_no
      t.string :account_no
      t.string :first_nominee_name
      t.string :first_nominee_relationship
      t.date :first_nominee_dob
      t.string :first_nominee_age
      t.string :first_nominee_address
      t.string :second_nominee_name
      t.string :second_nominee_relationship
      t.date :second_nominee_dob
      t.string :second_nominee_age
      t.string :second_nominee_address

      t.timestamps
    end
  end

  def self.down
    drop_table :members
  end
end
