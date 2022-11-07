require 'rails_helper'

RSpec.describe 'users/show.html.erb', type: :view do
  
  it 'I can see the user photo' do
    expect(page).to have_css("img[src='#{@user.photo}']")
  end

  it 'I can see the user name' do
    expect(page).to have_content(@user.name)
  end

  it 'I can see the number of post' do
    expect(page).to have_content(@user.posts_counter)
  end

  it 'I can the user bio' do
    expect(page).to have_content(@user.bio)
  end

end