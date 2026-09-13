class BusinessController < ApplicationController
  def dashboard
    @appointments = [
      ["09:00", "Nadia Putri", "Signature Haircut", "Maya", "Confirmed", "green"],
      ["10:30", "Sarah Wijaya", "Hair Coloring", "Alya", "In progress", "blue"],
      ["13:00", "Amanda Tan", "Hair Treatment", "Nadia", "Confirmed", "green"],
      ["15:15", "Rina Pratama", "Haircut + Treatment", "Maya", "Pending", "amber"]
    ]
    @nav_items = [["⌂", "Dashboard"], ["◷", "Calendar"], ["▣", "Appointments"], ["♧", "Clients"], ["✦", "Services"], ["♙", "Staff"], ["◈", "Payments"], ["▥", "Reports"], ["✧", "Marketing"], ["⚙", "Settings"]]
  end
end
