class PostsController < ApplicationController

def index
	#everything here will get run when someone goes to localhost:3030/posts
	@posts = Post.all #loads all the posts from the database, needs to be capitalized to call the database

	end


end
