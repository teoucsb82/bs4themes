class BlogsController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]
  before_action :set_blog, only: [:show, :edit, :update, :destroy]
  before_filter :set_navbar_class

  # GET /blogs
  # GET /blogs.json
  def index
    set_meta_tags title: "Blog", 
                  description: "Get the latest Bootstrap 4 news, insights and helpful tips here.", 
                  keywords: "bootstrap, blog, tips, best practices, news, templates, updates, alpha"
    @blogs = Blog.all.order(created_at: :desc)
  end

  # GET /blogs/1
  # GET /blogs/1.json
  def show
    set_meta_tags title: @blog.title.humanize, description: @blog.seo_description, keywords: @blog.seo_keywords
  end

  # GET /blogs/new
  def new
    @blog = Blog.new
  end

  # GET /blogs/1/edit
  def edit
  end

  # POST /blogs
  # POST /blogs.json
  def create
    @blog = Blog.new(blog_params)

    respond_to do |format|
      if @blog.save
        format.html { redirect_to @blog, notice: 'Blog was successfully created.' }
        format.json { render :show, status: :created, location: @blog }
      else
        format.html { render :new }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blogs/1
  # PATCH/PUT /blogs/1.json
  def update
    respond_to do |format|
      if @blog.update(blog_params)
        format.html { redirect_to @blog, notice: 'Blog was successfully updated.' }
        format.json { render :show, status: :ok, location: @blog }
      else
        format.html { render :edit }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blogs/1
  # DELETE /blogs/1.json
  def destroy
    @blog.destroy
    respond_to do |format|
      format.html { redirect_to blogs_url, notice: 'Blog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog
      @blog = Blog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blog_params
      params.require(:blog).permit(:title, :body, :picture, :seo_keywords, :seo_description)
    end

    def set_navbar_class
      @navbar_classes = "navbar-dark bg-inverse"
    end
end
