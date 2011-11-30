class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me ,:username,
          :role,:avatar
  has_one(:profile, :class_name => "Profile", :foreign_key => "user_id")
  has_many(:comments,:class_name => "Comment",:foreign_key => "user_id")
  has_many(:posts,:class_name => "Post",:foreign_key => "user_id")

  before_create:Profile
end
