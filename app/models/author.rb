class Author < ApplicationRecord
    has_many :blogs
    
    validates :email, presence: true
    validates :name, presence: true
end
