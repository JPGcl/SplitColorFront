class ImagesType < ApplicationRecord
    validates :image_type_description, presence: true
end
