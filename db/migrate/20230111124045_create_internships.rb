class CreateInternships < ActiveRecord::Migration[7.0]
  def change
    create_table :internships do |t|
      t.integer :employer_id
      t.integer :category_id
      t.text :positiontitle
      t.integer :positionsvailable
      t.integer :salary
      t.text :location
      t.text :keyskills

      t.timestamps
    end
  end
end
