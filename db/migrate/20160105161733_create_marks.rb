class CreateMarks < ActiveRecord::Migration
  def change
    create_table :marks do |t|
      t.integer :grade
      t.string :comment
      t.integer :subject_id
      t.integer :student_id
      t.index :student_id

      t.timestamps null: false
    end
  end
end
