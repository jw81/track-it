class Location < ApplicationRecord
  validates :city, presence: true
  validates :state, presence: true, length: { is: 2 }
  validates :description, length: { maximum: 255 }, allow_blank: true

  has_many :games

  def full_location
    "#{self.city}, #{self.state}, (#{self.description})"
  end
end
