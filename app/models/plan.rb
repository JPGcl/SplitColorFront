class Plan < ApplicationRecord
    validates :type_plans_id, presence: true
end
