class User < ApplicationRecord
    acts_as_favoritor

    validates :username, presence: true
    #validates :last_name, presence: true
    validates :email, presence: true
    #validates :phone, presence: true
    validates :password, presence: true
    #validates :user_type_id, presence: true
    #validates :login_type_id, presence: true
    #validates :plan_id, presence: true
    #validates :registration_date, presence: true      
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
    
    devise  :database_authenticatable, 
            :registerable, 
            :recoverable, 
            :rememberable, 
            :validatable
    

end
