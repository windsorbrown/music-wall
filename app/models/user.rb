class User < ActiveRecord::Base
  has_many :upvotes
  has_many :messages
  
end