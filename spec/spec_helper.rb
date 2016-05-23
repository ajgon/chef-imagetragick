# frozen_string_literal: true
require 'chefspec'
require 'chefspec/berkshelf'

# coveralls
require 'coveralls'
Coveralls.wear!

at_exit { ChefSpec::Coverage.report! }
