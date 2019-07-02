class Group < ApplicationRecord
  belongs_to :quiz

  has_many :posts
  has_many :usergroups
  has_many :users, through: :usergroups  
end
