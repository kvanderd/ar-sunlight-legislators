require_relative '../../db/config'
#this is a model, 
#create is new + save
class Politician < ActiveRecord::Base

validates :email, :uniqueness => true

 
end