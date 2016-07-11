class CommentsController < ApplicationController
 
 	def create
	 	@post = Post.find(params[:post_id])
	 	@comment = @post.comments.create(comments_params)
	 	redirect_to post_path(@post)
 	end

	def destroy
		@post = Post.find(params[:post_id])		#declare post to be passed on the redirect
		@comment = Comment.find(params[:id])	#query for the comment id
		@comment.destroy						#delete the comment
		redirect_to post_path(@post)			#redirect to the main post after deleting, then flash a notice
		flash[:notice] = "Comment deleted."
	end

  private

  	def comments_params
  		params.require(:comment).permit(:body, :commenter, :user_id, :post_id)
  	end

end
