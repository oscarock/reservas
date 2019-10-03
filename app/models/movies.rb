class Movies < ApplicationRecord
    #validations
	validates :name, presence: true
	validates :description, presence: true
	validates :url_image, presence: true
end
