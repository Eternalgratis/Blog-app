class Post < ApplicationRecord
    belongs_to :author, class_name: 'User'
    has_many :comments
    has_many :likes
    def Update_post_counter
        author.increment!(:posts_counter)
    end
    def Recent_comments
        comments.order(created_at: DESC).limit(5)
    end
end