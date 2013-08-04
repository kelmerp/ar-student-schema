require_relative '../../db/config'

class Student < ActiveRecord::Base
  has_many :courses
  has_many :teachers, :through => :courses

  validates :email, format: { with: /[a-z0-9]+@[a-z0-9]+\.[a-z]{2}/i,
                              message: "must be a valid email address" }
  
  validates :age, numericality: { greater_than_or_equal_to: 5 }
  validates :phone, format: { with: /\(?\d{3}\)?[-.\s]\d{3}[-.\s]\d{4}\s?x?\d*/ }

  # def name
  #   "#{self.first_name} #{self.last_name}"
  # end

  def age
    (Time.now - self.birthday.to_time).to_i / (3600 * 24 * 365)
  end
 
end
