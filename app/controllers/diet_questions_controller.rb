class DietQuestionsController < ApplicationController
  before_action :set_diet_question, only: %i[ show update destroy ]

  # GET /diet_questions
  def index
    @diet_questions = DietQuestion.all

    render json: @diet_questions
  end

  # GET /diet_questions/1
  def show
    render json: @diet_question
  end

  # POST /diet_questions
  def create
    @diet_question = DietQuestion.new(diet_question_params)

    if @diet_question.save
      render json: @diet_question, status: :created, location: @diet_question
    else
      render json: @diet_question.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /diet_questions/1
  def update
    if @diet_question.update(diet_question_params)
      render json: @diet_question
    else
      render json: @diet_question.errors, status: :unprocessable_entity
    end
  end

  # DELETE /diet_questions/1
  def destroy
    @diet_question.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_diet_question
      @diet_question = DietQuestion.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def diet_question_params
      params.require(:diet_question).permit(:user_id, :question)
    end
end
