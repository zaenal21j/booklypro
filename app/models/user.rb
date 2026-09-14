class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, :last_name, length: { maximum: 80 }
  validates :provider, :uid, :avatar_url, length: { maximum: 255 }, allow_blank: true

  def display_name
    [first_name, last_name].compact_blank.join(" ").presence || email
  end
end
