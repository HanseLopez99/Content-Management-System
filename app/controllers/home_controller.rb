class HomeController < ApplicationController
  # GET /blogs or /blogs.json
  def index
    @blogs = Blog.all
  end
end
