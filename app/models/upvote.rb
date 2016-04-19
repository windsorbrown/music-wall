class Upvote < ActiveRecord::Base
  belongs_to :user
  belongs_to :message
  #after_create :update_messages , if: :message

 # private
    
    # def update_messages
    #   message.upvotes += 1
    #   message.save
    # end


end
