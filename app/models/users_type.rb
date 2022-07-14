class UsersType < ApplicationRecord
    validates :user_description, presence: true
end
