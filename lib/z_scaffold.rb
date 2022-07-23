# frozen_string_literal: true

require_relative "z_scaffold/version"

module ZScaffold
  class Error < StandardError; end
  # Your code goes here...
  require 'z_scaffold/railtie' if defined?(Rails)
end
