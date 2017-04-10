class ExportController < ActionController::Base
  layout "application"

  def index
    render "index"
  end

  def update
    ## TODO: import csv
    require "csv"

    item = City.new
    #item.new.name = "example city"
    item.save
    
    csv0 = CSV.open(params[:file])
    csv1 = CSV.open("/home/user1/share/output2.csv", "w")
    csv0.each do |do0|
      str0 = do0[0].encode(Encoding::UTF_8)
      str1 = do0[1].encode(Encoding::UTF_8)
      array0.push([str0,str1])
    end
    array1 = array0.sort_by {|a0, b0| a0 }
    array1.each do |array2|
      puts array2[0] + " " + array2[1]
      csv1 << (array2)
    end

    redirect_to({ action: "index" }, { notice: "インポートしました。" })
  end
end
