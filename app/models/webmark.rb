class Webmark < ActiveRecord::Base
  belongs_to :user
  
  CATEGORIES = ['General','Funny','Technology','Sports','Politics']
  
  
  
end
