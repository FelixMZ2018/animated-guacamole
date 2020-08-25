class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :show ]

  def home
    @user = current_user

  end

  def show

  end

  private 

  def api_call

    
  end
  
end
