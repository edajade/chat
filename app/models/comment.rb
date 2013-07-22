class Comment < ActiveRecord::Base
  attr_accessible :text
  
  has_attached_file :attachment
end
