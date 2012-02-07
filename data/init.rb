content = File.new("data/database.yml").read
settings = YAML::load content
#DB = Sequel.connect("#{settings['adapter']}://#{settings['username']}:#{settings['password']}@#{settings['host']}/#{settings['database']}"))
DB = Sequel.connect("postgres://udbghijo0ml8o1:pafvhlrn3mfohb2v7p2k87gs159@ec2-107-21-106-178.compute-1.amazonaws.com:5432/dbo67pv6an3qea")
#mysql://root:root@localhost/blog_test_sequel

require './data/models.rb'
