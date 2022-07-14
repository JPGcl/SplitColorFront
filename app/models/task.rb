class Task < ApplicationRecord
    validates :user_id, :presence => true
    validates :image_id, :presence => true
    validates :process_type_id, :presence => true
    validates :state_process_id, :presence => true
    validates :state_date, :presence => true
    validates :creation_date, :presence => true
end
