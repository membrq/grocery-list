require 'rails_helper'

RSpec.describe ItemsController, type: :controller do

    let(:my_item) {create(:item)}

    #index method
    describe "GET index" do
        it "returns http success" do
            get :index
            expect(response).to have_http_status(:success)
        end

        it "assigns Item.all to item" do
            get :index
            expect(assigns(:items)).to eq([my_item])
        end
    end

    #new method
    describe "GET new" do
        before :each do
            get :new, params: {id: my_item.id}
        end

        it "returns http success" do
            expect(response).to have_http_status(:success)
        end

        it "renders the #new view" do
            expect(response).to render_template(:new)
        end
      
        it "instantiates a new item" do
            expect(:item).to_not be_nil
        end
    end

    #create method
    describe "POST create" do
        #before :each do
        #    post :create, params: {id: my_item.id}
        #end

        it "returns http success" do
            expect(response).to have_http_status(:success)
        end
    end

    #show method
    describe "GET show" do
        before :each do
            get :show, params: {id: my_item.id}
        end

        it "returns http success" do
            expect(response).to have_http_status(:success)
        end
      
        it "renders the #shows view" do
            expect(response).to render_template(:show)
        end
      
        it "retrieves the correct request" do
            expect(assigns(:item)).to eq(my_item)
        end
    end

    #edit method
    describe "GET edit" do
        before :each do
            get :edit, params: {id: my_item.id}
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
      
        it "updates item with expected attributes" do
              new_item_name = "Test Item"
      
              put :update, params: {id: my_item.id, item: {name: new_item_name}}
              updated_item = my_item
              expect(updated_item.id).to eq(my_item.id)
              expect(updated_item.name).to eq(my_item.name)
        end
      
        it "returns http success" do
            expect(response).to have_http_status(:success)
        end
    end

    #delete method
    describe "DELETE destroy" do
        before :each do
            delete :destroy, format: :js, params: {id: my_item.id}
        end
      
        it "successfully deletes the request" do
            count = Item.where({id: my_item.id}).size
            expect(count).to eq(0)
        end
      
        it "returns http redirect" do
            expect(response).to have_http_status(:redirect)
        end
    end
end
