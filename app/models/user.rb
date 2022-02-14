class User < ApplicationRecord
    

    enum role: [:client, :lawyer]
    has_secure_password
    has_and_belongs_to_many :documents
    has_many :client_documents, class_name: "Document", foreign_key: "client_id"
    has_many :lawyer_documents, class_name: "Document", foreign_key: "lawyer_id"
    validates :email, presence: true, uniqueness: true, format: {with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i, message: "Must be a valid email address"}


end
