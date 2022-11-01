class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :comments
  has_many :likes

  validates :title, presence: true, length: { maximum: 250 }
  validates :comments_counter, numericality: { only_integar: true, greater_than_0r_qual_to: 0 }
  validates :comments_counter, numericality: { only_integar: true, greater_than_0r_qual_to: 0 }

  after_save :update_posts_counter
  def update_post_counter
    author.increment!(:posts_counter)
  end

  def recent_comments
    comments.order(created_at: :desc).limit(5)
  end
end
