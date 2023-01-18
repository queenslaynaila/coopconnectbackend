class CreateInternships < ActiveRecord::Migration[7.0]
  def change
    create_table :internships do |t|
      t.integer :employer_id
      t.integer :category_id
      t.text :positiontitle
      t.integer :positionsvailable
      t.string :salary
      t.text :location
      t.text :keyskills
      t.text :jobsummary
      t.text :responsibilities
      t.text :interviewprocess
      t.text :apply
      t.timestamps
    end
  end
end
