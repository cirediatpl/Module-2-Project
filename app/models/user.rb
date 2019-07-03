class User < ApplicationRecord

    has_many :usergroups
    has_many :groups, through: :usergroups

    has_many :reacts
    has_many :posts, through: :reacts
    
    has_secure_password

    validates :first_name, :last_name, :username, :email, :password, presence: true

end
