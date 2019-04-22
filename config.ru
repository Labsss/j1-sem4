require 'sinatra'
require 'shotgun'
require 'rubygems'

$:.unshift File.expand_path("./../lib", __FILE__)

require './lib/controller/'

run ApplicationController