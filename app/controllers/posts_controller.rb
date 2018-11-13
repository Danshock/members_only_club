class PostsController < ApplicationController
  before_action :logged_in_user, only: [:new, :create]

  def new
  	@post = Post.new
  end

  def create
    @post = Post.new(post_params)
      if @post.save
        flash[:success] = "Your post has been successfully created"
        redirect_to(root_url)
      else
        render :new
      end
  end

  def index
  	#@posts = Post.all
    @posts = Post.paginate(page: params[:page], per_page: 5).order('id DESC')
  end

  private

  def post_params
  	params.require(:post).permit(:title, :user_id)
  end

  def logged_in_user
  	unless logged_in?
  		store_location
  		flash[:danger] = "You must log in to create a new post"
  		redirect_to login_path
    end
  end

end
