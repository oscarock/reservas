class Stockpiles < ApplicationRecord
    #validations
	validates :name, presence: true
	validates :document, presence: true
    validates :email, presence: true
    validates :movie_id, presence: true
end
