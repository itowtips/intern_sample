class ExportController < ActionController::Base
  layout "application"

  def index
    render "index"
  end

  def update
    ## TODO: import csv
    require File.expand_path('../models/city', __FILE__)

    item = City.new
    item.new.name = "example city"
    item.save

    redirect_to({ action: "index" }, { notice: "インポートしました。" })
  end
end
