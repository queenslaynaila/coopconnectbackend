class CreateEmployers < ActiveRecord::Migration[7.0]
  def change
    create_table :employers do |t|

      t.text :name
      t.text :firstname
      t.text :secondname
      t.text :companytype
      t.string :websiteurl
      t.text :description
      t.text :designation
      t.text :location
      t.date :foundedin
      t.text :user_type, default:"Employer"

      t.timestamps
    end
  end
end
