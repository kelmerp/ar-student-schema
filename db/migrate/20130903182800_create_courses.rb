require_relative '../config'

class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.belongs_to :student
      t.belongs_to :teacher
    end
  end
end
