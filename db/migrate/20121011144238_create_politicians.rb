require_relative '../config'

# this is where you should use an ActiveRecord migration to 

class CreatePoliticians < ActiveRecord::Migration
  def change
    # HINT: checkout ActiveRecord::Migration.create_table
    create_table :politicians do |t|
      t.string :title
      t.string :first_name
      t.string :middle_name
      t.string :lastname
      t.string :name_suffix
      t.string :nickname
      t.string :party
      t.date   :birthday # or datetime
      t.string :email
      t.string :phone
      t.string :fax
    end
  end
end

