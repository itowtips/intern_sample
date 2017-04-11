class ExportController < ActionController::Base
  layout "application"

  def index
    render "index"
  end

  def update
    ## TODO: import csv
    require "stringio"
    
    item = City.new
    #item.new.name = "example city"
    item.save
    
    fi0 = params[:file]
    fi1 = StringIO.new(fi0)
    fo0 = fi0
    File.open("/home/user1/share/#{fo0}", 'w:Windows-31J:UTF-8') { |f| f.write(fi1.read)}
    
    redirect_to({ action: "index" }, { notice: "インポートしました。" })
  end
end
