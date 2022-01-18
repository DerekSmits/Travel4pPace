class Api::CommentsController < ApplicationController
  before_action :set_comment, only: %i[ show edit update destroy ]

  # GET /comments or /comments.json
  def index
    @post = Post.find(params[:post_id])
    @comments = @post.comments.all
  end

  # GET /comments/1 or /comments/1.json
  def show
    @post = Post.find(params[:post_id])
  end

  # GET /comments/new
  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new(post_id: params[:post_id])
  end

  # GET /comments/1/edit
  def edit
  end

  # POST /comments or /comments.json
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create!(comment_params)
    redirect_to post_comments_url
  end

  # PATCH/PUT /comments/1 or /comments/1.json
  def update
    @post = Post.find(params[:post_id])
    @post.comments.update!(comment_params)
  end

  # DELETE /comments/1 or /comments/1.json
  def destroy
    @post = Post.find(params[:post_id])
    @post.comments.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def comment_params
      params.require(:comment).permit(:com_text,:post_id)
    end
end