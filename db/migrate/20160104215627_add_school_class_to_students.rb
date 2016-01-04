class AddSchoolClassToStudents < ActiveRecord::Migration
  def change
    add_column :students, :school_class_id, :integer
    add_index :students, :school_class_id
  end
end
