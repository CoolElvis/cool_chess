require 'rubygems'
require 'bundler/setup'


@env = ENV['RAILS_ENV'] || 'development'

Bundler.require(:default, @env)

require 'active_support/all'
# require 'carrierwave/orm/activerecord'



Dir['./models/*.rb'].each do |file_name|
  require file_name
end
