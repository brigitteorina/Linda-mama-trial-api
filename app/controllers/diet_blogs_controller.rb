class DietBlogsController < ApplicationController

  def show
    diet_blog = DietBlog.find(params[:id])
    render json: diet_blog
  end

  def index
    diet_blogs = DietBlog.all
    render json: diet_blogs
  end

  def create
    @diet_blog = DietBlog.new(diet_blog_params)
    if @diet_blog.save
      render json: @diet_blog
    else
      render 'new'
    end
  end

  private

  def diet_blog_params
    params.require(:diet_blog).permit(:title, :image, :content)
  end
end
