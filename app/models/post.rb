class Post < ApplicationRecord
    belongs_to :user, foreign_key: :author_id
    has_many :comments
    validates :title, presence: true
    validates :describtion, presence: true
    validates :shorts, presence: true
    resourcify
end
