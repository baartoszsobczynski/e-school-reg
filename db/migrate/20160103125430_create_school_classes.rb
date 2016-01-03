class CreateSchoolClasses < ActiveRecord::Migration
  def change
    create_table :school_classes do |t|
      t.integer :level
      t.string :indication

      t.timestamps null: false
    end
  end
end
