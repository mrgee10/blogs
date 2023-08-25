class Blog < ApplicationRecord
    belongs_to :author
    has_many :feedbacks

    validates :title, presence: true
    validates :content, presence: true
end
