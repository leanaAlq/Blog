class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  helper_method :show_categories, :show_latest_post, :comments

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end

  def show_categories
    @categories = Category.all
  end

  def show_latest_post
    @latest_post = Post.last
  end
end
