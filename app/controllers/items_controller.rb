class ItemsController < ApplicationController

    def index
        @user = current_user
        @user_preference = User.find(current_user.id).user_preference
        @items = Item.where(user_preference_id: @user_preference.id)
    end

    def new
        @user_preference = User.find(current_user.id).user_preference
        @templates = WardrobeTemplate.all
        @item = Item.new
    end


   def create
      @item = Item.new(item_params)
      @user_preference = User.find(current_user.id).user_preference
      @item.user_preference_id = @user_preference.id
      @item.condition_array = create_array(@item.lowest_temperature,@item.highest_temperature)
        if @item.save!
          redirect_to wardrobe_url, notice: 'Wardrobe was successfully created.'
        else
          render :new
        end
      end

    def destroy

    end

    def create_array(low,high)
      conditions =  ["freezing", "cold", "just right", "warm", "hot"]
      array = conditions[conditions.find_index(low)..conditions.find_index(high)]
      return array

    end
    

private

    def item_params
        params.require(:item).permit(:wardrobe_templates_id, :item_name, :lowest_temperature, :highest_temperature, :user_preference_id)
    end


end

