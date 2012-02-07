require 'rubygems'
require 'bundler'
require 'sequel'
require 'yaml'
require 'json'
require 'csv'
require './data/init.rb'
class JsonToMysql

  CSV.open('./Arbol-Urbano-2.csv', 'r', ',') do |row|
    Report.create(row)
  end
  
end
