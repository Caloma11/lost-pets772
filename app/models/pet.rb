class Pet < ApplicationRecord

  SPECIES = ["Cat", "Dog", "Antelope", "Turtle", "Bird", "Fish", "Dinosaur"]

  validates :species, inclusion: { in: SPECIES }

  validate :check_if_later_than_today


  def check_if_later_than_today
    if (Date.today < lost_at)
      errors.add(:lost_at, "Date can't be larger than today")
    end
  end


  def days_ago
    today = Date.today
    days = (today - self.lost_at)

    return "lost #{days.to_i} days ago"
  end


end
