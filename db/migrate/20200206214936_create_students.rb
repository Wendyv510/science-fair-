class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name 
      t.string :grade_level 
      t.string :project 
    end 
  end
end
