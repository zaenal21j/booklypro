class BookingsController < ApplicationController
  def new
    @services = [
      { name: "Signature Haircut", duration: "45 min", description: "A considered cut, wash, and finish tailored to you.", price: "Rp 85.000" },
      { name: "Haircut + Treatment", duration: "1 hr 15 min", description: "Precision haircut followed by a restorative treatment.", price: "Rp 150.000" },
      { name: "Hair Coloring", duration: "2 hr", description: "Dimensional color consultation, application, and finish.", price: "Rp 350.000" },
      { name: "Hair Treatment", duration: "1 hr", description: "Deep conditioning ritual for softer, healthier-looking hair.", price: "Rp 150.000" }
    ]
    @professionals = [
      { name: "Any available professional", specialty: "Let Glow Studio match you", note: "Recommended", image: "/staff-maya.jpg" },
      { name: "Maya Putri", specialty: "Senior Hair Artist", note: "Color and precision cuts · 4.9 ★", image: "/staff-maya.jpg" },
      { name: "Alya Rahman", specialty: "Beauty Specialist", note: "Styling and treatments · 4.8 ★", image: "/staff-alya.jpg" },
      { name: "Nadia Sari", specialty: "Nail Artist", note: "Minimal nail artistry · 4.9 ★", image: "/staff-nadia.jpg" }
    ]
    @dates = ["30", "31", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30"]
    @times = { "Morning" => ["09:00", "09:45", "10:30", "11:15"], "Afternoon" => ["13:00", "13:45", "15:15", "16:00"] }
  end
end
