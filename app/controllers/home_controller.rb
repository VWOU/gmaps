class HomeController < ApplicationController
  def index
  	 @characters = Character.all
     @json = Character.all.to_gmaps4rails
     respond_to do |format|
      	format.html # index.html.erb
      	format.json { render json: @characters }
     end
  end
end
