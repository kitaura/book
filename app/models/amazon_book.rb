class AmazonBook
  attr_accessor :asin, :title, :image
  
  def AmazonBook.serch_by_title title
    res = Amazon::Ecs.item_search(title, :response_group => 'Large')
    amazon_books = res.items
    amazon_books.collect{|item|
      amazon_asin = item.get('asin')
      amazon_title = item.get('itemattributes/title')
      amazon_image = item.get('mediumimage/url')
      AmazonBook.new(amazon_asin,amazon_title,amazon_image)
    }
  end
  
    def initialize(asin, title = nil, image = nil)
    @asin = asin
    @title = title
    @image = image
  end
end
