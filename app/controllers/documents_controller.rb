class DocumentsController < ApplicationController
  
  before_action :check_if_logged_in, except: [:index, :show]
  
  def new
    @document = Document.new
  end

  def create
    
    @document = Document.new document_params
    @document.user_ids = @current_user.id
    @document.template_id = params[:id]
    @document.save
    # raise 'hell'
    
    if @document.persisted?
      redirect_to document_path(@document.id)
    else
      render :new
    end
    # redirect_to document_path(@document.user_ids) and return
  end

  def index
    @documents = Document.all
   
  end

  def show
    @document = Document.find params[:id]
  end


  def edit
    @document = Document.find params[:id]
    # redirect_to login_path unless @document.user_ids == @current_user.id
  end

  def update
    @document = Document.find params[:id]
    # if @document.user_ids != @current_user.id
    #   redirect_to login_path and return
    # end

    if @document.update document_params
      redirect_to document_path(@document)
    else
      render :edit

  end
end

  def destroy
    @document = Document.find params[:id]
    @document.destroy
    redirect_to '/templates', notice: "Your document has been deleted"

  end


  private 

  def document_params
    params.require(:document).permit(:title, :description, :image, :lawyer_signature, :lawyer_name, :user_name, :user_signature, :document_id)
  end 

end
