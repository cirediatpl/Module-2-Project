class User < ApplicationRecord

    has_many :usergroups
    has_many :groups, through: :usergroups  
    
    belongs_to :users

end
