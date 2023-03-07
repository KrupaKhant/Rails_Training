class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :username
      t.integer :phonenumber
      t.integer :zipcode
      t.string :password
      t.date :planstartdate
      t.date :planenddate
      t.integer :totaldaysofplan

      t.timestamps
    end
  end
end
