class Burrito < ActiveRecord::Base
  # mock out how paperclip works
  def photo
    o = OpenStruct.new
    o.url = 'http://www.hackettstownbid.com/images/news/ad158ab6.jpg'
    o
  end
end
