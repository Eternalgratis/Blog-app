require 'rails_helper'

RSpec.describe User, type: :model do
  before(:all) do
    @user = User.create(
      name: 'Eternalgratis',
      photo: 'https://github.com/Eternalgratis/Blog-app',
      bio: 'I am wonderfully made',
      posts_counter: 1
    )
    @post = Post.create(
      title: 'Love conquers all',
      text: 'Let love lead',
      comments_counter: 5,
      likes_counter: 1,
      author_id: @user.id
    )
  end

  it 'post is valid as shown' do
    expect(@post).to be_valid
  end

  it 'title should not be blank' do
    @post.title = 'ROR is interesting'
    expect(@post).to be_valid
  end

  it 'comments_counter must have an integer greater_than_or_equal_to 0' do
    @post.comments_counter = '0'
    expect(@post).to be_valid
  end

  it 'likes_counter must be an integer greater_than_or_equal_to 0' do
    @post.likes_counter = 10
    expect(@post).to be_valid
  end
end
