class Author < ActiveRecord::Base
  validates_presence_of :name
  validates_uniqueness_of :email
  validates :phone_number, length: { is: 10 }
end

# name, email, number 10
