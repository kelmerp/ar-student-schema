require_relative '../config'

class ChangeStudents < ActiveRecord::Migration
  def change
    change_table :students do |s|
      t.integer :teacher_id
    end
  end
  def change
    change_table :students do |s|
      s.belongs_to :teacher
    end
  end
end
