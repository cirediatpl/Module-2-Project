class Post < ApplicationRecord
    belongs_to :group
    has_many :reacts
    has_many :users, through: :reacts
end
