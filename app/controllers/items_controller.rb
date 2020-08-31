class ItemsController < ApplicationController

    def index
        @user = User.find(current_user.id)
        @items = Item.where(user_id: @user.id)
    end

    def new
        @templates = WardrobeTemplate.all
        @item = Item.new

    end


   def create
      @item = Item.new(item_params)
      @user = User.find(params[:user_id])
      @item.user = @user
        if @item.save
          redirect_to @user, notice: 'wardrobe was successfully created.'
        else
          render :new
        end
      end

    def destroy

    end

private

    def item_params
        params.require(:item).permit(:temp_br1, :temp_br2, :temp_br3, :temp_br4)
    end


end

