class CreateExperiences < ActiveRecord::Migration[7.0]
  def change
    create_table :experiences do |t|
      t.integer :seeker_id
      t.text :jobtitle
      t.text :description
      t.date :startdate
      t.date :enddate

      t.timestamps
    end
  end
end
