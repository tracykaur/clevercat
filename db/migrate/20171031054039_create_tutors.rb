class CreateTutors < ActiveRecord::Migration[5.1]
  def change
    create_table :tutors do |t|
      t.references :user, foreign_key: true
      t.decimal :hourly_rate
      t.boolean :upgrade
      t.string :headline
      t.text :description

      t.timestamps
    end
  end
end
