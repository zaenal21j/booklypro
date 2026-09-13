class HomeController < ApplicationController
  def index
    @categories = [
      ["Hair", "scissors"], ["Nails", "sparkles"], ["Facial", "face"], ["Massage", "waves"],
      ["Spa", "flower"], ["Makeup", "brush"], ["Eyebrows", "eye"], ["More", "grid"]
    ]

    @studios = [
      { name: "Glow Studio", location: "Kemang, Jakarta Selatan", rating: "4.9", reviews: 328,
        price: "Mulai Rp85.000", image: "studio-glow.jpg", tags: %w[Hair Nails Facial] },
      { name: "Luna Beauty", location: "Menteng, Jakarta Pusat", rating: "4.8", reviews: 214,
        price: "Mulai Rp75.000", image: "studio-luna.jpg", tags: %w[Nails Makeup Facial] },
      { name: "Noir Barber", location: "Senopati, Jakarta Selatan", rating: "5.0", reviews: 189,
        price: "Mulai Rp120.000", image: "studio-noir.jpg", tags: ["Men's grooming", "Haircut"] }
    ]
  end
end
