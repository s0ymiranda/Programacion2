class SearchController < ApplicationController
  def create
    palabra = "%#{params[:keyword]}%"
    @states = State.where("name LIKE ? OR id LIKE ?",palabra,palabra)
    
    respond_to do |format|
      format.json { render json: @states }
      format.html { redirect_to root_path }
    end

  end
end
