class CreateSeekers < ActiveRecord::Migration[7.0]
  def change
    create_table :seekers do |t|

      t.text :firstname
      t.text :secondname
      t.text :gender
      t.date :yearofbirth
      t.string :phone
      t.text :country
      t.text :city
      t.text :about
      t.text :profession
      t.text :yearsinprofesion
      t.text  :usertype, default:"Jobseeker"
      t.timestamps
    end
  end
end
