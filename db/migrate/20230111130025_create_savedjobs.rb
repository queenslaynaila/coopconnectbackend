class CreateSavedjobs < ActiveRecord::Migration[7.0]
  def change
    create_table :savedjobs do |t|
      t.integer :seeker_id
      t.integer :job_id

      t.timestamps
    end
  end
end
