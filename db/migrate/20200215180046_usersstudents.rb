class Usersstudents < ActiveRecord::Migration
  def change
    create_table :users_students do |t|
      t.integer :user_id 
      t.integer :student_id 
  end
end
