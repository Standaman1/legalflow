class StageonesController < ApplicationController
  
  before_action :check_if_logged_in, except: [:index, :show]
  
  def new

  end

  def create
    
      @stageone = Stageone.create stageone_params
      @stageone.user_id = @current_user.id
      @stageone.save
      redirect_to stageone_path
  
      if @stageone.persisted?
        redirect_to documents_path
      else
        render :new
      end
    
  end

  def index

  end

  def show
  end

  def edit
    @stageone = Stageone.find params[:id]
  end

  def update
  end

  def destroy
  end

  # private
  # def stageone_params

  # end

end
