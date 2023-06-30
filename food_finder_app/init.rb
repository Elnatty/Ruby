#### Food Finder ####
#
# launch this Ruby file from the cmd line to get started.
#

APP_ROOT = File.dirname(__FILE__) # Absolute path.

# importing the "guide.rb" file in here, using require.
# require "#{APP_ROOT}/lib/guide.rb" # or
# require File.join(APP_ROOT, 'lib', 'guide.rb') # this is better or,

$:.unshift(File.join(APP_ROOT, 'lib'))
require 'guide'

guide = Guide.new('restaurants.txt')
guide.launch!