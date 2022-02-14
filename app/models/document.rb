class Document < ApplicationRecord
    belongs_to :topic, optional: true
    has_and_belongs_to_many :signatories, class_name: "User"
    belongs_to :client, class_name: "User"
    belongs_to :lawyer, class_name: "User"

    belongs_to :type, optional: true
    has_one :template

end
