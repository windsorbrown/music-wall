class Message < ActiveRecord::Base
validates :title, presence: true
validates :author, presence: true
#validates :url, format: {with: /(^$)|^(https?:\/\/(?:www\.|(?!www))[^\s\.]+\.[^\s]{2,}|www\.[^\s]+\.[^\s]{2,})$/, :multiline => true}

end