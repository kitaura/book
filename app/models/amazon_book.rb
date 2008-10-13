class AmazonBook
  attr_accessor :isbn, :title, :image, :auther
  
  def AmazonBook.serch_by_title title
    res = Amazon::Ecs.item_search(title, :response_group => 'Large')
    amazon_books = res.items
    amazon_books.collect{|item|
      amazon_isbn = item.get('itemattributes/isbn')
      amazon_title = item.get('itemattributes/title')
      amazon_image = item.get('mediumimage/url')
      amazon_image ||= '/images/noimage.gif'
      amazon_auther = item.get('itemattributes/author')
      
      AmazonBook.new(amazon_isbn,amazon_title,amazon_image,amazon_auther)
    }
  end
  
  def AmazonBook.serch hash
    
    
  end
  
  def initialize(isbn, title = nil, image = nil, auther = nil)
    @isbn = isbn
    @title = title
    @image = image
    @auther = auther
  end
end
