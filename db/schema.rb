# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090127110022) do

  create_table "accounts", :force => true do |t|
    t.integer  "maingroup_id"
    t.integer  "subgroup_id"
    t.string   "acname"
    t.string   "description"
    t.float    "openingbalance"
    t.float    "closingbalance"
    t.string   "category"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fd_details", :force => true do |t|
    t.date     "calculated_date"
    t.float    "intrest"
    t.float    "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fd_items", :force => true do |t|
    t.float    "fd_amount"
    t.string   "paid_vide"
    t.string   "inst_no"
    t.string   "inst_date"
    t.date     "date_of_receipt"
    t.float    "rate_of_interest"
    t.string   "period_of_deposit"
    t.date     "due_date_of_maturity"
    t.string   "fd_certificate_no"
    t.float    "maturity_value"
    t.string   "renewed"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fd_settings", :force => true do |t|
    t.string   "fdsetting_type"
    t.float    "interest_rate"
    t.integer  "calculated"
    t.integer  "compounded"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fixed_deposits", :force => true do |t|
    t.string   "son_daughter_wife_of"
    t.string   "resident_address"
    t.date     "fdopen_date"
    t.string   "name"
    t.string   "age"
    t.string   "father_husband"
    t.string   "relationship_with_member"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "loan_details", :force => true do |t|
    t.date     "payment_date"
    t.float    "begining_balance"
    t.float    "scheduled_payment"
    t.float    "principal"
    t.float    "interest"
    t.float    "ending_balance"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "loan_items", :force => true do |t|
    t.float    "loan_amount"
    t.integer  "installment"
    t.date     "starting_month_of_loan"
    t.float    "emi"
    t.float    "total_interest"
    t.float    "total_amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "loan_schedules", :force => true do |t|
    t.date     "payment_date"
    t.float    "begining_balance"
    t.float    "scheduled_payment"
    t.float    "principal"
    t.float    "interest"
    t.float    "ending_balance"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "loan_settings", :force => true do |t|
    t.string   "loansetting_type"
    t.float    "annual_interest_rate"
    t.float    "dearness_allowance"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "loans", :force => true do |t|
    t.string   "no_of_shares_held"
    t.string   "telephone_office"
    t.string   "telephone_residence"
    t.float    "basic_pay"
    t.float    "take_home_pay"
    t.string   "amount_of_loan_applied"
    t.string   "purpose_of_loan"
    t.string   "outstanding_loan"
    t.string   "other_information"
    t.date     "doj_society"
    t.string   "applicant_mo_no"
    t.float    "eligible_for"
    t.string   "no_of_existing_shares"
    t.string   "no_of_shares_to_be_deducted"
    t.string   "loan_no"
    t.date     "loan_date"
    t.string   "installments"
    t.string   "share"
    t.float    "entrance_fees"
    t.string   "long_term_loan_principle"
    t.float    "interest"
    t.string   "rounding_off"
    t.float    "amount"
    t.string   "priority"
    t.string   "long_term_loan_saction"
    t.string   "deductions"
    t.string   "net_payable"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "members", :force => true do |t|
    t.string   "cc_no"
    t.string   "emp_no"
    t.string   "photo_id"
    t.string   "member_no"
    t.string   "name"
    t.string   "designation"
    t.string   "section"
    t.string   "station"
    t.date     "dob"
    t.string   "age"
    t.date     "doj_npc"
    t.date     "doj_kaiga"
    t.string   "no_of_years_of_service"
    t.date     "date_of_retirement"
    t.string   "band_pay"
    t.string   "grade_pay"
    t.string   "present_address"
    t.string   "permanent_address"
    t.string   "contact_no"
    t.string   "account_no"
    t.string   "first_nominee_name"
    t.string   "first_nominee_relationship"
    t.date     "first_nominee_dob"
    t.string   "first_nominee_age"
    t.string   "first_nominee_address"
    t.string   "second_nominee_name"
    t.string   "second_nominee_relationship"
    t.date     "second_nominee_dob"
    t.string   "second_nominee_age"
    t.string   "second_nominee_address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "photos", :force => true do |t|
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", :force => true do |t|
    t.string "name"
  end

  create_table "roles_users", :id => false, :force => true do |t|
    t.integer "role_id"
    t.integer "user_id"
  end

  create_table "settings", :force => true do |t|
    t.string   "label"
    t.string   "identifier"
    t.text     "description"
    t.string   "field_type",  :default => "string"
    t.text     "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "share_settings", :force => true do |t|
    t.string   "sharesetting_type"
    t.float    "certificate_cost"
    t.float    "share_value"
    t.float    "entrance_fee"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shares", :force => true do |t|
    t.string   "share_certificate_number"
    t.date     "share_issue_date"
    t.string   "number_of_shares"
    t.string   "total_value"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subscription_details", :force => true do |t|
    t.date     "calculated_date"
    t.string   "interest_month"
    t.float    "subscription_amount"
    t.float    "interest_amount"
    t.float    "accrued_amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subscription_settings", :force => true do |t|
    t.string   "subscription_type"
    t.float    "interest_rate"
    t.integer  "calculated"
    t.integer  "compounded"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subscriptions", :force => true do |t|
    t.integer  "member_id"
    t.float    "subscription_amount"
    t.float    "cumulative_subscription"
    t.integer  "subscription_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "transactions", :force => true do |t|
    t.integer  "transactionno"
    t.date     "date"
    t.string   "transaction_category"
    t.string   "narrations"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "login",                     :limit => 40
    t.string   "name",                      :limit => 100, :default => ""
    t.string   "email",                     :limit => 100
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.string   "remember_token",            :limit => 40
    t.string   "activation_code",           :limit => 40
    t.string   "state",                                    :default => "passive"
    t.datetime "remember_token_expires_at"
    t.string   "password_reset_cod"
    t.datetime "activated_at"
    t.datetime "deleted_at"
    t.string   "real_name"
    t.string   "location"
    t.string   "contact_no"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["login"], :name => "index_users_on_login", :unique => true

end
