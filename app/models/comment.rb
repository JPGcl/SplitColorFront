class Comment < ApplicationRecord
    validates :image_id, :presence => true
    validates :comment, :presence => true
end
