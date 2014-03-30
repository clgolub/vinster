class PostsController < ApplicationController

	def index
	#everything here will get run when someone goes to localhost:3030/posts
	@posts = Post.all #loads all the posts from the database, needs to be capitalized to call the database

	end

	def new
	#make this @post thing just be a new blank post
	@post = Post.new

	end

	def create
		Post.create( post_params )
		#once the user submits you want to redirect them to the posts > index page
		#use "rake routes" in terminal to see the path you want to send them to
		#in a controller you can use shortcut of "_path"
		redirect_to posts_path
	end

	private

	#defining the parameters of the post - only allowing users to input title and description
	#i.e. so people cannot sneak in other hack commands - keeps it more secure
	def post_params
		params.require(:post).permit(:title, :description)
	end

end
