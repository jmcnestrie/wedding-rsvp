require 'rails_helper'

RSpec.describe LoginController, type: :controller do

  describe 'GET index' do

    it 'renders the index template' do
      get :index
      expect(response).to render_template 'index'
    end

  end

  describe 'POST create' do

    render_views

    context 'given valid data' do

      let (:valid_password) { 'dummy' }

      it 'should redirect to the admin page' do
        post :do_login, { password: :valid_password }
        expect(response).to redirect_to '/admin'
      end

    end

    context 'given invalid data' do

      let (:invalid_password) { 'invalid password' }

      it 'should render the index template with errors' do
        post :do_login, { password: :invalid_password }
        expect(response).to render_template 'index'
      end

    end

  end

end
