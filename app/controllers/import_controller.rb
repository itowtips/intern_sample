class ImportController < ActionController::Base

  layout "application"

  def index
    render "index"
  end

  def update
    ## TODO: import csv

    item = City.new
    item.name = "example city"
    item.save

    redirect_to({ action: "index" }, { notice: "インポートしました。" })
  end
end
