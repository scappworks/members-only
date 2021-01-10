class Post < ApplicationRecord
    validates :title, :body, :user_id, presence: true
    validates_length_of :title, maximum: 40, allow_blank: false
    validates_length_of :body, maximum: 50, allow_blank: false


    belongs_to :user
end
