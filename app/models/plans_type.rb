class PlansType < ApplicationRecord
    validates :type_plans_description, presence: true
end
