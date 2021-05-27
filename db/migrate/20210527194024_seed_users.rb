class SeedUsers < ActiveRecord::Migration[6.1]
  def change
    User.transaction do
      User.find_or_create_by(email: "bteng@g.hmc.edu", name: "Ben Teng")
      User.find_or_create_by(email: "benjamin.roland.teng@gmail.com", name: "Ana Villa")
    end
  end
end
