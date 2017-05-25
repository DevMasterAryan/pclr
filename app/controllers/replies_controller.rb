class RepliesController < ApplicationController
	def new
		@reply = Reply.new
	end
	def create
		#debugger
		#@post = Post.find(params[:post_id])
		@comment = Comment.find(params[:comment_id])
		@reply = @comment.replies.new(reply_params)
		if @reply.save
			redirect_to post_path(@comment.post, @comment)
		else
			render 'new'
		end
	end

	def edit
   	@post = Post.find(params[:post_id])
   	@comment = @post.comments.find(params[:comment_id])
   	@reply = @comment.replies.find(params[:id])
   end

   def update
   	debugger
   	 @post = Post.find(params[:post_id])
   	 @comment = @post.comments.find(params[:comment_id])
   	 @reply = @comment.replies.find(params[:id])
   	 if @reply.update(reply_params)
   	 	redirect_to post_path(@reply.comment.post)
   	 else
   	 	render 'edit'
   	 end
   end

    def destroy
    	@reply = Replay.find(params[:id])
    	if @reply.destroy
          redirect_to post_path(@reply.comment.post)
      else
      	  render 'posts/show'
      end
    end

	private
    def reply_params
      params.require(:reply).permit(:reply_on_comment)
    end
end
