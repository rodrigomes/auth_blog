class Post < ActiveRecord::Base
  attr_accessible :author, :description, :price, :title
end
