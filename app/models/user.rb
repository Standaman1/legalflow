class User < ApplicationRecord
    

    has_secure_password
    has_and_belongs_to_many :documents
    validates :email, presence: true, uniqueness: true, format: {with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i, message: "Must be a valid email address"}

    

end
