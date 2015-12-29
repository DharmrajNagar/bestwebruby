class PostsController < ApplicationController
	def index 
		@posts = Post.all.order("created_at desc")
	end

	def show 
		@post = Post.find(params[:id])
		 # render 'test'
	end

	def new 
		@post = Post.new
	end

	def create
	  
	  @post = Post.new(post_params)
	 
	  if @post.save
            flash[:success] = "Your post has been saved.!"
	    redirect_to @post
	  else
	    render 'new'
	  end
	end

	def edit
	    @post = Post.find(params[:id])
	  end 

	def update
	  @post = Post.find(params[:id])
	 
	  if @post.update(post_params)
	    redirect_to @post
	  else
	    render 'edit'
	  end
	end

	def destroy
	  @post = Post.find(params[:id])
	  @post.destroy
	 
	  redirect_to posts_path
	end
	
	def hello
	end	


	private
	  def post_params
	    params.require(:post).permit(:title, :content,:text)
	  end
	
	


	

end
