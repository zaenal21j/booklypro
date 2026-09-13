class StudiosController < ApplicationController
  def show
    @services = [
      { name: "Signature Haircut", duration: "45 min", description: "A considered cut, wash, and finish tailored to you.", price: "Rp 85.000" },
      { name: "Haircut + Treatment", duration: "1 hr 15 min", description: "Precision haircut followed by a restorative treatment.", price: "Rp 150.000" },
      { name: "Hair Coloring", duration: "2 hr", description: "Dimensional color consultation, application, and finish.", price: "Rp 350.000" },
      { name: "Hair Treatment", duration: "1 hr", description: "Deep conditioning ritual for softer, healthier-looking hair.", price: "Rp 150.000" }
    ]
    @professionals = [
      { name: "Maya Putri", specialty: "Senior Hair Artist", note: "Color and precision cuts", rating: "4.9", image: "studio-glow.jpg" },
      { name: "Alya Rahman", specialty: "Beauty Specialist", note: "Styling and treatments", rating: "4.8", image: "studio-luna.jpg" },
      { name: "Nadia Sari", specialty: "Nail Artist", note: "Minimal nail artistry", rating: "4.9", image: "studio-noir.jpg" }
    ]
  end
end
