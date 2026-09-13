class ExploreController < ApplicationController
  def index
    @studios = [
      { name: "Glow Studio", location: "Kemang, Jakarta Selatan", rating: "4.9", reviews: 328, price: "Rp85.000", image: "studio-glow.jpg", tags: %w[Hair Nails Facial], path: new_booking_path },
      { name: "Luna Beauty", location: "Menteng, Jakarta Pusat", rating: "4.8", reviews: 214, price: "Rp75.000", image: "studio-luna.jpg", tags: %w[Nails Makeup Facial], path: "#" },
      { name: "Noir Barber", location: "Tanjung Duren, Jakarta Barat", rating: "5.0", reviews: 189, price: "Rp120.000", image: "studio-noir.jpg", tags: ["Men's grooming", "Haircut"], path: "#" },
      { name: "Serene Spa", location: "Cilandak, Jakarta Selatan", rating: "4.7", reviews: 96, price: "Rp180.000", image: "ritual-detail.jpg", tags: %w[Massage Facial Spa], path: "#" },
      { name: "The Hair Room", location: "Rawamangun, Jakarta Timur", rating: "4.6", reviews: 120, price: "Rp95.000", image: "studio-noir.jpg", tags: %w[Hair Color Treatment], path: "#" }
    ]
  end
end
