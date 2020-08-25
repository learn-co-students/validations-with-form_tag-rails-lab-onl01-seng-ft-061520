class Author < ActiveRecord::Base
    include ActiveModel::Validations
    validates_with AuthorValidator
    validates :name, presence: true
    validates :email, uniqueness: { case_sensitive: false }
    validates :phone_number, length: { is: 10 }
end
