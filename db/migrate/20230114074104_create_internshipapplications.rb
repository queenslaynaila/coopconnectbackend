class CreateInternshipapplications < ActiveRecord::Migration[7.0]
  def change
    create_table :internshipapplications do |t|
      t.integer :internship_id
      t.date :dateapplied
      t.integer :seeker_id

      t.timestamps
    end
  end
end
