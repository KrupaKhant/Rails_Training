class CreateForms < ActiveRecord::Migration[7.0]
  def change
    create_table :forms do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :username
      t.integer :phonenumber
      t.integer :zipcode
      t.string :password
      t.date :planstartdate
      t.date :planenddate
      
      t.timestamps
    end
  end
end
