class AddUsers < ActiveRecord::Migration
  def change
    User.create(email: "james.gareth.smith@gmail.com", password: "rhodes49")
    User.create(email: "anouk.gorgens@gmail.com", password: "anoukandjames")
  end
end
