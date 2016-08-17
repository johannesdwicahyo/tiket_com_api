require "tiket_com_api/version"
require "tiket_com_api/error"
require "tiket_com_api/configuration"
require "tiket_com_api/api"
require "tiket_com_api/client"
require "tiket_com_api/response"

module TiketComApi
  extend Configuration

  def self.client(options={})
    TiketComApi::Client.new(options)
  end

  def self.method_missing(method, *args, &block)
    return super unless client.respond_to?(method)
    client.send(method, *args, &block)
  end

  def self.respond_to?(method, include_all=false)
    return client.respond_to?(method, include_all) || super
  end
end