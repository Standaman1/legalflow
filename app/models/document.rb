class Document < ApplicationRecord
    belongs_to :topic, optional: true
    has_and_belongs_to_many :users, optional: true
    belongs_to :type, optional: true
    has_one :template

end
