# frozen_string_literal: true

require_relative 'jaro_winkler/adjusting_table'
require_relative 'jaro_winkler/jaro_winkler_pure'
require_relative 'jaro_winkler/version'

unless RUBY_ENGINE == 'opal'
  begin
    require 'opal'
    Opal.append_path File.expand_path('..', __FILE__).untaint
  rescue LoadError
  end
end
