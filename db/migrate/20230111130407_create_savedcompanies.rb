class CreateSavedcompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :savedcompanies do |t|
      t.integer :seeker_id
      t.integer :employer_id

      t.timestamps
    end
  end
end
