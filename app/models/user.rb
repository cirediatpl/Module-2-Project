class User < ApplicationRecord

    has_many :usergroups
    has_many :groups, through: :usergroups  
    
    has_secure_password

end
