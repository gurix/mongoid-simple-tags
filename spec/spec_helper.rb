require 'mongoid'
require 'mongoid-simple-tags'

Mongoid.configure do |config|
  config.connect_to('mongoid-simple-tags')
end

RSpec.configure do |config|
  config.after(:each) do
    Mongoid::Config.purge!
  end
end