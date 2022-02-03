class Stageone < ApplicationRecord
    has_one :document

    belongs_to :user

    validates :name, presence: true
end
