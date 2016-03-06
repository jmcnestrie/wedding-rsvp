require 'rails_helper'

describe GuestDetailController do

  describe 'POST create' do

    context 'given valid data' do

      let(:valid_params) {
        { attending: true, guest_1_name: "Guest One", email: "test@test.com" }
      }

      it 'should create a guest detail' do
        expect {
          post :create, { guest_detail: valid_params }
        }.to change(GuestDetail, :count).by(1)
      end

      it "should redirect to home path" do
        post :create, { guest_detail: valid_params }
        response.should redirect_to("/")
      end

      it "should flash a success notice" do
        post :create, { guest_detail: valid_params }
        expect(controller).to set_flash[:success]
      end
    end
  end
end
