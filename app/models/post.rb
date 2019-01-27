class Post < ApplicationRecord
  has_one_attached :post_picture
  attribute :new_post_picture
  
  before_save do
  if new_post_picture
    self.post_picture = new_post_picture
  end
end
end
