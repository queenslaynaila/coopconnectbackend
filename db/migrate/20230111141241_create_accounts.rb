class CreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts do |t|
      t.integer :seeker_id
      t.integer :employer_id
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
