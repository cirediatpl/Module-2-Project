class User < ApplicationRecord

    has_many :usergroups
    has_many :groups, through: :usergroups

    has_many :reacts
    has_many :posts, through: :reacts
    
end
