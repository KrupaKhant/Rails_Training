class User < ApplicationRecord
  before_create :upcase_firstname_lastname
  after_create :send_welcome_email
  validates :firstname, :lastname, presence: true

  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 
  validates :email, uniqueness: true

  validates :username, exclusion: { in: %w(test bacancy),
  message: "%{value} is reserved." }


  validates :planenddate, comparison: { greater_than: :planstartdate }

  validates :phonenumber, length: { is: 10 }
  validates :zipcode, length: { minimum: 6 }

  validates :password, length: { in: 6..20 }

  private

  def upcase_firstname_lastname
    self.firstname = firstname.upcase
    self.lastname = lastname.upcase
  end

  
  def send_welcome_email
    puts "Welcome User in this form"
  end
end
