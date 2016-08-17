module TiketComApi
  # Wrapper for the TiketComApi REST API
  #
  # @note All methods have been separated into modules and follow the same grouping used in http://instagram.com/developer/
  # @see http://instagram.com/developer/
  class Client < API
    Dir[File.expand_path('../client/*.rb', __FILE__)].each{|f| require f}

    include TiketComApi::Client::Utils

    include TiketComApi::Client::Users
    include TiketComApi::Client::Media
    include TiketComApi::Client::Locations
    include TiketComApi::Client::Geographies
    include TiketComApi::Client::Tags
    include TiketComApi::Client::Comments
    include TiketComApi::Client::Likes
    include TiketComApi::Client::Subscriptions
    include TiketComApi::Client::Embedding
  end
end
