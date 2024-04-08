class StaticsController < ApplicationController
  before_action :authenticate_user!, only: [:index]

  def index
    redirect_to welcome_path, notice: "Welcome! #{ ActionController::Base.helpers.link_to 'Please create an account.', '/users/sign_up' }" if current_user.nil?
  end

  def welcome
  end

end

