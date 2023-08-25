class Feedback < ApplicationRecord
    belongs_to :blog

    validates :content, presence: true
end
