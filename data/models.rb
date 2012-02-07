# -*- encoding : utf-8 -*-
require 'rubygems'
require 'sequel'

class Report < Sequel::Model 
  def to_json
    to_s.to_json
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
