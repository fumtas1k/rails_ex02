class BlogsController < ApplicationController
  before_action :set_blog, only: [:show, :cofirm, :edit, :update, :destroy]
  def index
    @blogs = Blog.all
  end

  def new
    @blog = Blog.new
  end


  def confirm
  end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save
      redirect_to blogs_path, notice: "ブログを作成しました!"
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def show
  end

  def destroy
    @blog.destroy
    redirect_to blogs_path, notice: "１件のブログを削除しました!"
  end

  private
  def blog_params
    params.require(:blog).permit(:title, :content)
  end

  def set_blog
    @blog = Blog.find(params[:id])
  end

end