require_relative '../../db/config'

class Student < ActiveRecord::Base
# implement your Student model 

  def name
    "#{self.first_name} #{self.last_name}"
  end

  def age
    student = Student.find(self.id)
    (Time.now - student.birthday.to_time).to_i / (3600 * 24 * 365)
  end
 
end


  #rake db:create => creates database
  #rake db:migrate => runs migrations 
  #rake db:seed => run seed file, add shit to tables
  #rake console => run irb, using the data in your application 
  #rake db:drop => drops the entire the entire db
# student = S
