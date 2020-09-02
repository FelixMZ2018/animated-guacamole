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
   ##   @item.render_string = @item.wardrobe_
      @item.condition_array = create_array(@item.lowest_temperature,@item.highest_temperature)
      @item.render_string = @item.wardrobe_template.svg.gsub("**COLOR**",@item.color).gsub("**SKIN_COLOR**",@user_preference.skin_tone)
        if @item.save!
          redirect_to wardrobe_url, notice: 'Wardrobe was successfully created.'
        else
          render :new
        end
      end

    def destroy
        @item = Item.find(params[:id])
        @item.destroy
        redirect_to wardrobe_path
    end

    def create_array(low,high)
      array = []
      if low == high
        array << high
      else
      conditions =  ["freezing", "cold", "just right", "warm", "hot"]
      array = conditions[conditions.find_index(low)..conditions.find_index(high)]
      end
      return array
    end

    def svg_generation(color)


    end


private

    def item_params
        params.require(:item).permit(:color,:wardrobe_templates_id, :item_name, :lowest_temperature, :highest_temperature, :user_preference_id)
    end


end

