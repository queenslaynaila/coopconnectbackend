class CreateSavedprofiles < ActiveRecord::Migration[7.0]
  def change
    create_table :savedprofiles do |t|
      t.integer :employer_id
      t.integer :seeker_id

      t.timestamps
    end
  end
end
