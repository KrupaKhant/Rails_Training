class ChangeDatatypeOfSurnameColumn < ActiveRecord::Migration[7.0]
  def change
    def up
      change_column :users, :surname, :string
    end

    def down
      change_column :users, :surname, :text
    end
  end
end
