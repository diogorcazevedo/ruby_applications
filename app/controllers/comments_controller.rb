class CommentsController < ApplicationController

  def comments_params
       params.require(:comment).permit(:content, :task_id, :name)
   end

  def create

    @task = Task.find(params[:task_id])

    @comment = @task.comments.new(comments_params) 

    if @comment.save
      flash[:notice] = "Comentario inserido com sucesso!"
    else
      flash[:alert] = "Comentario NAO foi inserido!"
    end
    
    redirect_to @task
  end
  
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to @comment.task, notice: "Comentario removido!"
  end

end