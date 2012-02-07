require 'rubygems'
require 'bundler'
require 'sequel'
require 'yaml'
require 'json'
require 'csv'
require './data/init.rb'
class JsonToMysql

  DB.run("load data local infile '~/projects/smadf_dataset/Arbol-Urbano.txt' into table reports fields terminated by ',' lines terminated by '\r';")
  
end
