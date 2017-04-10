class ExportController < ActionController::Base
  include ActionView::Controllers::Models::City

  layout "application"

  def index
    render "index"
  end

  def update
    ## TODO: import csv

    item = City.new
    item.new.name = "example city"
    item.save

    redirect_to({ action: "index" }, { notice: "インポートしました。" })
  end
end

class City
  include Document

  seqid :id
  field :name, type: String
end
