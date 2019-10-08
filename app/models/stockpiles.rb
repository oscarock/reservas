class Stockpiles < ApplicationRecord
    #validations
	validates :name, presence: true
	validates :document, presence: true
    validates :email, presence: true
    validates :movies_id, presence: true

    #relationship
    belongs_to :movies
end
