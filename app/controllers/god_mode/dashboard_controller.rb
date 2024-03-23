module GodMode
  class DashboardController < ApplicationController
    def index
      load_models
      @models = ::ApplicationRecord.descendants
    end

    def show
      @model_class = params[:model_name].classify.constantize
      @records = @model_class.all
    rescue NameError
      redirect_to root_path, alert: "Model not found."
    end

    private

    def load_models
      # Get all Ruby files in the app/models directory
      model_files = Dir[Rails.root.join('app', 'models', '*.rb')]
      model_files.each do |file_path|
        # Require each file to load the model into memory
        require_dependency file_path
      end
    end


  end
end