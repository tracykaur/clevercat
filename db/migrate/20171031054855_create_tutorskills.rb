class CreateTutorskills < ActiveRecord::Migration[5.1]
  def change
    create_table :tutorskills do |t|
      t.references :tutor, foreign_key: true
      t.references :skill, foreign_key: true

      t.timestamps
    end
  end
end
