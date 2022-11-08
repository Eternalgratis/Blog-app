require 'rails_helper'

RSpec.describe User, type: :feature do
    describe 'index page' do
        before(:each) do
            visit users_path
            @users = User.all
        end

        it 'should see the username of all other users.' do
            @users.each do |user|
                expect(page).to have_content(user.name)
            end
        end

        it 'should see the profile picture for each user.' do
            @users.each do |user|
                expect(page).to have_css("img[src='#{user.photo}']")
            end
        end

        it 'should see the number of posts each user has written.' do
            @users.each do |user|
                expect(page).to have_content(user.posts_counter)
            end
        end

        # it 'should redirect user to that user\'s show page when user is clicked.' do
        #     @users.each do |user|
        #         click_link(user.name)
        #         expect(page).to have_current_path(user_path('Eternalgratis'))
        #     end
    end
end
