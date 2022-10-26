class User < ApplicationRecord
  has_many :posts, foreign_key: 'author_id'
  has_many :comments, foreign_key: 'author_id'
  has_many :likes, foreign_key: 'author_id'

  validates :name, presence: true
  validates :posts_counter, numericality: { only_integar: true, greater_than_0r_qual_to: 0 }

  def most_recent_post
    post.order(created_at: DESC).limit(3)
  end
end
