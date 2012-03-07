RACK_ENV  = ENV['RACK_ENV'] || ENV['RAILS_ENV'] || 'development'
RACK_ROOT = File.expand_path(File.dirname(__FILE__) + '/..')

# std lib
require 'open3'
require 'uri'
require 'base64'
require 'digest'
require 'zlib'
require "rexml/document"

require 'rubygems'
require 'bundler/setup'

# bundled gems
Bundler.require(:default, RACK_ENV)

$LOAD_PATH.unshift File.expand_path(File.dirname(__FILE__))

# hurl
require 'helpers'

require 'models/db'
require 'models/user'

require 'views/layout'
