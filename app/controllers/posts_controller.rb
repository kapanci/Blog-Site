class PostsController < ApplicationController
  before_action :set_post, only: %i[ show edit update destroy ]
  before_action :authenticate_user! # Kullanıcıların giriş yapmış olmasını sağlar
  before_action :authorize_user!, only: %i[ edit update destroy ]

  # GET /posts or /posts.json
  def index
    @posts = Post.all # Sadece giriş yapan kullanıcının gönderilerini getirir
  end

  # GET /posts/1 or /posts/1.json
  def show
  end

  # GET /posts/new
  def new
    @post = current_user.posts.build # Yeni gönderi oluştururken mevcut kullanıcıya ait olarak oluşturur
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts or /posts.json
  def create
    @post = current_user.posts.build(post_params) # Yeni gönderiyi mevcut kullanıcıya ait olarak oluşturur

    respond_to do |format|
      if @post.save
        format.html { redirect_to post_url(@post), notice: "Post was successfully created." }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1 or /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to post_url(@post), notice: "Post was successfully updated." }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1 or /posts/1.json
  def destroy
    if @post.destroy
      respond_to do |format|
        format.html { redirect_to posts_url, notice: "Post was successfully destroyed." }
        format.json { head :no_content }
      end
    else
      respond_to do |format|
        format.html { redirect_to posts_url, alert: "Failed to destroy the post. There might be associated records preventing the deletion." }
        format.json { render json: { error: "Failed to destroy the post" }, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def post_params
      params.require(:post).permit(:title, :content)
    end

    # Ensure that the current user is authorized to perform actions on this post.
    def authorize_user!
      redirect_to posts_url, alert: "You are not authorized to perform this action." unless @post.user == current_user
    end
end
