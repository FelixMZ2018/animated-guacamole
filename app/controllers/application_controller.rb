class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  # private

  # Overwriting the sign_in redirect path method
  def after_sign_in_path_for(*)
    dashboards_path
  end
end
