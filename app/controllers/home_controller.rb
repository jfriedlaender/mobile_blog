class HomeController < ApplicationController
  def index
    respond_to do |format|
      format.html
      format.mobile
    end
  end

end
