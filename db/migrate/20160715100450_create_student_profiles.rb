class CreateStudentProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :student_profiles do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name

      t.timestamps
    end
  end
end
