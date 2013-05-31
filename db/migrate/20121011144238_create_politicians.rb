require_relative '../config'

# this is where you should use an ActiveRecord migration to 

class CreatePoliticians < ActiveRecord::Migration
  def change
    # HINT: checkout ActiveRecord::Migration.create_table
    create_table :politicians do |t|
     t.string :title
      t.string :firstname
      t.string :lastname
      t.string :party
      t.string :state
      t.integer :in_office
      t.string :gender
      t.string :phone
      t.string :fax
      t.string :website
      t.string :birthdate
      t.string :twitter_id
    end
  end
end

