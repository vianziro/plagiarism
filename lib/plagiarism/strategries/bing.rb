module Plagiarism
  module Strategies
    class Bing < Engine
      URL = 'https://api.datamarket.azure.com/Bing/SearchWeb/v1/Web'

      class << self

        def fetch(content, params)
          Typhoeus.get(URL, params: params.merge('$format' => :json, 'Query' => "'#{content}'"), userpwd: ":#{Config.bing_key}")
        end

        def exists?(response)
          JSON.parse(response)['d']['results'].all? do |r|
            uri = URI.parse(r['Url'])
            uri.host =~ whitelists_regex
          end
        end

      end

    end
  end
end