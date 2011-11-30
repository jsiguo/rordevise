class HomeController < ApplicationController
before_filter :authenticate_user!, :except => [:show, :index]  #添加这一句  
def index
  end

end
