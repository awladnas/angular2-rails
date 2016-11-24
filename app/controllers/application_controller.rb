class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
    respond_to do |format|
      format.json {render json: {some: 'Welcome Home'}}
    end
  end

  def about
    respond_to do |format|
      format.json {render json: {some: 'Welcome About'}}
    end
  end

end
