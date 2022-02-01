class Comment < ApplicationRecord
    belongs_to :post
    validates :author_id, presence: true
    validates :post_id, presence: true
    validates :com_text,presence: true
end
