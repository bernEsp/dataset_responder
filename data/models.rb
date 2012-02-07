# -*- encoding : utf-8 -*-
require 'rubygems'
require 'sequel'
require "erb"
include ERB::Util
class Report < Sequel::Model(:reports) 
  def to_json
   to_s.to_json
  end
  
  def show_content
    if self.body.nil? || self.body.size <= 250
      html_escape self.subject
    else
      html_escape self.body
    end                       
  end
end

class Sequel::Dataset
  def to_json
    naked.all.to_json
  end
end

class Sequel::Model
  def self.to_json
    dataset.to_json
  end

end
