class OptionsController < ApplicationController
  before_action :new_option, only: [:new, :create]
  # before_action :set_option, only: [:show, :edit, :update]
  def index
    @question = Question.find(params[:question_id])
    @options = @question.options
  end

  def show
  end

  def new
 
  end

  def create

  end

  def edit
  end

  def update


  end

  def addvote
    puts "successfully voted"

  end

  def destroy
  end

  private

  def new_option
    @question = Question.find(params[:question_id])
  end
  
  def option_params
    params.require(:option).permit(:option_id, :question_id)
  end
end
