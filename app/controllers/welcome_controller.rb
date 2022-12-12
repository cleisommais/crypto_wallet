class WelcomeController < ApplicationController
  def index
    @query_param = params[:param]
  end
end
