# frozen_string_literal: true

require "erb"
require "yaml"

# Module for accessing the configs
module Config
  CONFIG_DEFAULT_PATH = "./config/config.yaml.default".freeze
  ENV_FILE = "./config/#{ENV['KEYS']}.env".freeze
  ENV_REQUIRED = "./config/environment.env.default".freeze

  CONFIG_KEYS = %w[caps server_url timeouts strings].freeze

  # Loads required environment file, using this way is not required config.yaml
  # This improves CI implementation using environment variables instead config.yaml values
  # Environment variables (for local purposes )
  def self.load_environment
    Dotenv.load(ENV_FILE) if File.file?(ENV_FILE)
    default_file = File.read(ENV_REQUIRED)
    required_keys = []
    default_file.each_line do |line|
      next if line.include? "#"
      required_keys << line.delete("\n")
    end
    begin
      Dotenv.require_keys(required_keys.reject(&:empty?))
    rescue Dotenv::MissingKeys => error
      puts error.message
      raise "Please set properly env file for: '#{ENV}' environment or export above vars"
    end
  end

  def self.load_config_file!
    @config = YAML.safe_load(ERB.new(File.read(CONFIG_DEFAULT_PATH)).result, [Symbol])
  end

  class << self
    CONFIG_KEYS.each { |key| define_method(key) { @config[key] } }
  end
end

