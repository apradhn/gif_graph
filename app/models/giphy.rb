class Giphy 
  attr_reader :query, :url

  def initialize(query)
    @query = query
    @url = "http://api.giphy.com/v1/gifs/search?q=#{@query}&api_key=dc6zaTOxFJmzC&limit=20"
  end

  def search
    doc = Nokogiri::HTML(open(url))
    json = JSON.parse(doc)

    results = json["data"].collect do |data|
      {rating: data["rating"], name: data["id"], url: data["images"]["fixed_width"]["url"]}
    end
  end

end