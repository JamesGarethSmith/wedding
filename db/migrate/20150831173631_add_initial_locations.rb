class AddInitialLocations < ActiveRecord::Migration
  def up
    Location.create(title: "Stanford", description: "30 minutes from the venue")
    Location.create(title: "Pearly Beach", description: "25 minutes from the venue")
    Location.create(title: "Franskraal", description: "15 minutes from the venue")
    Location.create(title: "De Kelders", description: "15 minutes from the venue")
    Location.create(title: "Gansbaai, Kleinbaai & Perlemoenbaai", description: "10-15 minutes from the venue")
    Location.create(title: "Uilkraal Valley", description: "0-15 minutes from the venue")
  end

  def down
  end
end