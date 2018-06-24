class ItemsController < ApplicationController
    
    def index 
        @items = Item.all
    end 

    def new 
        @item = Item.new
    end 

    def create 
        @item = Item.new(item_params)

        if @item.save
            flash[:success] = "Your item has been saved to your grocery list!"
            redirect_to items_path 
        else
            flash.now[:danger] = "There was an error saving your item. Please try again."
            render :new 
        end
    end 

    def show 
        @item = Item.find(params[:id])
    end 

    def edit    
        @item = Item.find(params[:id])
    end 

    def update 
        @item = Item.find(params[:id])
    
        if @item.update(item_params)
          flash[:success] = "Your item was successfully updated!"
          redirect_to items_path
        else
          flash.now[:danger] = "An error occurred. Your item was not updated."
          render :edit
        end
    end 

    def destroy
        @item = Item.find(params[:id])

        if @item.destroy
            flash[:secondary] = "Your item was deleted from the list."
            redirect_to items_path
        else
            flash[:danger] = "Your item was not deleted. Please try again."
            redirect_to items_path
        end

        respond_to do |format|
            format.html
            format.js
        end
    end 

    private

    #Parameters are whitelisted for security measures.
    def item_params
        params.require(:item).permit(:id, :name, :price, :quantity, 
            :item_type, :priority, :purchased)
    end
end
