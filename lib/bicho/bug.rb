
module Bicho

  class Bug

    def initialize(client, data)
      @client = client
      @data = data
    end

    def method_missing(name, *args)
      @data[name.to_s]
    end

    def to_s
      "##{id} - #{summary} (#{url})"
    end

    # URL where the bug can be viewed
    # Example: http://bugs.foo.com/2345
    def url
      "#{@client.url}/#{id}"
    end

  end

end