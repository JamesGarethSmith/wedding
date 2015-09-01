class Accommodation < ActiveRecord::Base
  belongs_to :location

  def to_s
    title
  end
end
