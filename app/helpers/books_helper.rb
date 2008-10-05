module BooksHelper
  def owners_select
    User.find(:all).collect{|u|[u.name,u.id]}
  end
end
