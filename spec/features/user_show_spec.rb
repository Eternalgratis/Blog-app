require 'rails_helper'

RSpec.describe 'users/show.html.erb', type: :view do
  
  it 'I can see the user photo' do
    expect(page).to have_css("img[src='#{@user.photo}']")
  end

end