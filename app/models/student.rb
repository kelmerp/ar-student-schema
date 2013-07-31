require_relative '../../db/config'

class Student < ActiveRecord::Base

  def name
    "#{self.first_name} #{self.last_name}"
  end

  def age
    (Time.now - self.birthday.to_time).to_i / (3600 * 24 * 365)
  end
 
end
