class CommentsType < ApplicationRecord
    validates :comment_type_description, presence: true
end
