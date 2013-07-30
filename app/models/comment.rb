class Comment < ActiveRecord::Base
  attr_accessible :text, :attachment, :user_name
  
  has_attached_file :attachment,
    styles: { thumb: "32x32>" }

  validates_presence_of :text, :user_name
end
