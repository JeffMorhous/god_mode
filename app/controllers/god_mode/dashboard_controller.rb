module GodMode
  class DashboardController < ApplicationController
    def index
      @models = ::ApplicationRecord.descendants
    end

    def show
      @model_class = params[:model_name].classify.constantize
      @records = @model_class.all
    rescue NameError
      redirect_to root_path, alert: "Model not found."
    end
  end
end