class TopController < ApplicationController
  def index
    @post = Post.all
  end

  def show
  end
end
