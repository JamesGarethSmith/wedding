class Location < ActiveRecord::Base
  has_many :accommodations

  def to_s
    title
  end
end
