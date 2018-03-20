class Entry < ActiveRecord::Base
  validates :photo_url, presence: true
end