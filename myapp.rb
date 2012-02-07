# -*- encoding : utf-8 -*-
require './data/init.rb'

class Datasets < Sinatra::Base  
  get '/dataset/:account.json?:page?' do
    content_type :json
    @data = {}
    @data = {:features => [], :meta => {:type => "FeatureCollection"}}
    if params[:account] = "smadf"
      page = params[:page]

      finish = page.nil?? page : page.to_i * 1000
      @reports = []
      if finish.nil?
        dataset_report = Report.limit(5000)
      else
        dataset_report =  Report.limit(1000, finish)
      end
      dataset_report.each do |report|
        feature = {:geometry => {:coordinates =>  [report.longitude.to_f, report.latitude.to_f], :type => "Point" }, :properties => {:popupContent => report.show_content, :locations => report.location}, :type => "Feature", :id => report.uuid}        
        @data[:features] << feature
      end
      @reports = @data
      @reports.to_json 
    else
       "No data for this account"
    end
  end
end
