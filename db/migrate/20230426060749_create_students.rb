class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string:student_name
      t.string:roll
      t.string:section
      t.integer:maths
      t.integer:english
      t.integer:science
      t.float:total

      t.timestamps
    end
  end
end
