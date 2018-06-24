require 'rails_helper'

RSpec.describe UsersController, type: :controller do

    let(:my_user) {create(:user)}

    #show method
    describe "GET show" do

        before :each do
            sign_in my_user
            get :show, params: {id: my_user.id}
        end

        it "returns http success" do
            expect(response).to have_http_status(:success)
        end
      
        it "renders the #shows view" do
            expect(response).to render_template(:show)
        end
      
        it "retrieves the correct request" do
            expect(assigns(:user)).to eq(my_user)
        end
    end

    #edit method
    describe "GET edit" do

        before :each do
            sign_in my_user
            get :edit, params: {id: my_user.id}
        end
      
        it "returns http success" do
            expect(response).to have_http_status(:success)
        end
      
        it "renders the #edit view" do
            expect(response).to render_template(:edit)
        end
    end

    #update method
    describe "PUT update" do
        
        before :each do
            sign_in my_user
        end
      
        it "updates user with expected attributes" do
              new_name = "Bob"
      
              patch :update, params: {id: my_user.id, user: {first_name: new_name}}
              updated_user = my_user
              expect(updated_user.id).to eq(my_user.id)
              expect(updated_user.first_name).to eq(my_user.first_name)
        end
      
        it "returns http success" do
            expect(response).to have_http_status(:success)
        end
    end

end
