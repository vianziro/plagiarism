module Plagiarism
  module Config
    extend self

    attr_accessor :strategies
    attr_accessor :whitelists
    attr_accessor :bing_key
  end
end