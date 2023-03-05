class Form < ApplicationRecord
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 
  validates :email, uniqueness: true

  validates :username, exclusion: { in: %w(test bacancy),
  message: "%{value} is reserved." }

  validates :firstname, :lastname, presence: true

  validates :planenddate, comparison: { greater_than: :planstartdate }

  validates :phonenumber, length: { is: 10 }
  validates :zipcode, length: { minimum: 6 }

  validates :password, length: { in: 6..20 }
end
