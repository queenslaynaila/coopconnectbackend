class CreateSocialprofiles < ActiveRecord::Migration[7.0]
  def change
    create_table :socialprofiles do |t|
      t.integer :seeker_id
      t.text :platform
      t.string :link

      t.timestamps
    end
  end
end
