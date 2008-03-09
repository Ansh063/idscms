$:.reject! {|e| e.include? 'TextMate'} # MLA: Reference http://tinyurl.com/2bbfyd
require 'rubygems'
require 'merb-core'
require 'spec'


# TODO: Boot Merb, via the Test Rack adapter
Merb.start :environment => (ENV['MERB_ENV'] || 'test'),
           :merb_root  => File.join(File.dirname(__FILE__), ".." )


Spec::Runner.configure do |config|
  config.include(Merb::Test::ViewHelper)
  config.include(Merb::Test::RouteHelper)
  config.include(Merb::Test::ControllerHelper)
end
