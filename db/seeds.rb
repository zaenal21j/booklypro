# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
if Rails.env.development?
  User.find_or_create_by!(email: "owner@booklypro.test") do |user|
    user.first_name = "Olivia"
    user.last_name = "Owner"
    user.password = "booklypro-demo-password"
    user.password_confirmation = "booklypro-demo-password"
  end
end
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
