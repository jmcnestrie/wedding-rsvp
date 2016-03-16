require 'rails_helper'

describe HomeController do

  describe 'GET index' do

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end

    it "assigns a new rsvp as @rsvp" do
      get :index
      expect(assigns(:rsvp)).to be_a_new(Rsvp)
    end

  end

end
