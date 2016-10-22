class HomeController < ApplicationController
  def index
    @manittos = Manitto.all
    @presents = Present.all.reverse
    # @comments = Comment.all
    # @num = Manitto.where(love: true).count
  end
  
  def testing
  end
  
  def sending
    @present = Present.create(manitto_id: params[:manitto_id])
    @present.save
    
    redirect_to :back
  end
  
  def comment
    @comment = Comment.create(present_id: params[:present_id], content: params[:content])
    @comment.save
    
    redirect_to :back
  end
  
  def destroy
    @present = Present.find(params[:id])
    @present.destroy
    
    redirect_to :back
  end
  
  def destroy_comment
    @comment = Comment.find(params[:id])
    @comment.destroy
    
    redirect_to :back
  end
  
  # Manitto check
  def update
    @manitto = Manitto.find(params[:id])
    @manitto.update(love: params[:love])
    
    redirect_to :back    
  end
  
  # Finding someone who doesn't have manitto => It was me! :(
  def admin
    @num = Manitto.where(love: true).count
    @manittos = Manitto.all
  end
  
  # private
  # def manitto_params
  #   params.require(:manitto).permit(:who, :name, :love)
  # end
end
