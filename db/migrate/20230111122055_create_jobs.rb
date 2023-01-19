class CreateJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :jobs do |t|
      t.integer :employer_id
      t.integer :category_id
      t.text :jobtitle
      t.integer :positionsavailable
      t.integer :experienceinyears
      t.integer :minsalary
      t.integer :maximumsalary
      t.text :minimumeducationallevel
      t.text :senioritylevel
      t.text :location
      t.text :keyskills
      t.text :responsibilities
      t.text  :overallsummarry
      t.date :dateposted
      t.text :interviewprocess
      t.text :apply
      
      t.timestamps
    end
  end
end
