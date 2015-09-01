class SiteController < ApplicationController
  def details
  end

  def rsvp
  end

  def accommodation
    @locations = Location.all.includes(:accommodations)
    @accommodation_count = Accommodation.count
  end

  def gifts
  end

  def directions
  end

  def transport
  end
end