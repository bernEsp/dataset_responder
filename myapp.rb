# -*- encoding : utf-8 -*-
require './data/init.rb'
class Datasets < Sinatra::Base
  
  get '/dataset/:account.json?:page?' do
    content_type :json
    if params[:account] = "smadf"
      page = params[:page]

      finish = page.nil?? page : page.to_i * 1000
      if finish.nil?
         reports = Report.limit(5000)
      else
        reports = Report.limit(1000, finish)
      end
      reports.to_json
    else
       "No data for this account"
    end
  end
end
