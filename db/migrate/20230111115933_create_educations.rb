class CreateEducations < ActiveRecord::Migration[7.0]
  def change
    create_table :educations do |t|
      t.integer :seeker_id
      t.text :level
      t.date :startdate
      t.date :enddate
      t.text :certificatename
      t.text :institution

      t.timestamps
    end
  end
end
