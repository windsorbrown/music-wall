class Message < ActiveRecord::Base
  belongs_to :user
  has_many :upvotes
  validates :title, presence: true
  validates :author, presence: true
#validates :url, format: {with: /(^$)|^(https?:\/\/(?:www\.|(?!www))[^\s\.]+\.[^\s]{2,}|www\.[^\s]+\.[^\s]{2,})$/, :multiline => true}

  def total_upvotes
    upvotes.count
  end

  def self.sort_by_votes
    Message.find_by_sql("
      SELECT  messages.*  , COUNT(upvotes.message_id) AS num_votes
      FROM messages
      LEFT JOIN upvotes 
      ON messages.id = upvotes.message_id
      GROUP BY messages.id
      ORDER BY  num_votes desc")
  end

end