class DietQuestionsController < ApplicationController

  def index
    @diet_questions = DietQuestion.all
    render json: @diet_questions
  end

  def show
    @diet_question = DietQuestion.find(params[:id])
    render json: @diet_question
  end

  def create
    @diet_question = DietQuestion.create(diet_question_params)
    render json: @diet_question
  end

  private

  def diet_question_params
    params.require(:diet_question).permit(:user_id, :question)
  end
end
