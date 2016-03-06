require 'rails_helper'

RSpec.describe AdminController, type: :controller do

  describe 'GET index' do

    it 'redirects to the login page when not logged in' do
      session[:logged_in] = nil
      get :index
      expect(response).to redirect_to '/login'
    end

  end

end
