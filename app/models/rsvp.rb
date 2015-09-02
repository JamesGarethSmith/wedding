class Rsvp < ActiveRecord::Base
  validates :name, :email, :total_attending, presence: true
  validates :email, uniqueness: true
end