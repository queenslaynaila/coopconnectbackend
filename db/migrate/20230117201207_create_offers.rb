class CreateOffers < ActiveRecord::Migration[7.0]
  def change
    create_table :offers do |t|
      t.integer :employer_id
      t.integer :seeker_id

      t.timestamps
    end
  end
end
