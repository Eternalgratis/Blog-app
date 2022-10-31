require 'rails_helper'

RSpec.describe UsersController, type: :request do
  describe "GET './index' page" do
    before(:all) do
      @address = get '/users'
    end

    it 'returns a valid status' do
      expect(@address).to eq(200)
    end
    it 'should render the actual template' do
      expect(get('/users')).to render_template('users/index')
    end
    it 'Response body should return correct placeholder text' do
      expect(response.body).to include('<h1>Here is a list of posts for a given user</h1>')
    end
  end

  describe "GET './show' page" do
    before(:all) do
      @address = get '/users/show'
    end

    it 'returns a valid status' do
      expect(@address).to eq(200)
    end
    it 'should render the actual template' do
      expect(get('/users/show')).to render_template('users/show')
    end
    it 'Response body should return correct placeholder text' do
      expect(response.body).to include('<h3>Here is a list of posts for a given user</h3>')
    end
  end
end
