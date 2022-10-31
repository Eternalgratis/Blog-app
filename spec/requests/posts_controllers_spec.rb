require 'rails_helper'

RSpec.describe PostsController, type: :request do
    describe "GET './index' page" do
        before (:all) do
            @address = get '/users/:id/posts'
        end

        it 'returns a valid status' do
            expect(@address).to eq(200)
        end
        it 'should render the actual template' do
           expect(get('/users/:id/posts')).to render_template('posts/index')
    end
    it 'Response body should return correct placeholder text' do
        expect(response.body).to include('<p>Here is a list of posts for a given user</p>')
 end
    end

    describe "GET './show' page" do
        before (:all) do
            @address = get '/users/:id/posts/:id'
        end

        it 'returns a valid status' do
            expect(@address).to eq(200)
        end
        it 'should render the actual template' do
           expect(get('/users/:id/posts/:id')).to render_template('posts/show')
    end
    it 'Response body should return correct placeholder text' do
        expect(response.body).to include('<h6>Here is a list of posts for a given user</h6>')
 end
    end
end