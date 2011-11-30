class Post < ActiveRecord::Base
  has_many(:comments,:class_name => "Comment",:foreign_key => "post_id")
  belongs_to(:user, :class_name => "User", :foreign_key => "user_id")
  #验证
  validates_presence_of :title, :content #不能为空验证
end
