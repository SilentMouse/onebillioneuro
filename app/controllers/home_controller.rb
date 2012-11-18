class HomeController < ApplicationController
  before_filter :check_auth
  def index
    @ses=session
    @posts=Post.all
    @post = Post.new
  end
end
