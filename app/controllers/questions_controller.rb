class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :edit, :update, :destroy]

  # GET /questions
  # GET /questions.json
  def index
    q_param = params[:q]
    page = params[:page]

    @q = Question.ransack q_param
    @questions = @q.result.page(page)
    @todays_date = Date.today.to_time
  end

  # GET /questions/1
  # GET /questions/1.json
  def show
  @question = Question.find(params[:id])
  @todays_date = Date.today.to_time
  end

  # GET /questions/new
  def new
    @question = Question.new
    @categories = Category.all
    @question_types = QuestionType.all
  end

  # GET /questions/1/edit
  def edit
    @categories = Category.all
    @question_types = QuestionType.all
  end

  # POST /questions
  # POST /questions.json
  def create
    @question = Question.new(question_params)

    respond_to do |format|
      if @question.save
        format.html { redirect_to @question, notice: 'Question was successfully created.' }
        format.json { render :show, status: :created, location: @question }
      else
        format.html { render :new }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /questions/1
  # PATCH/PUT /questions/1.json
  def update
    respond_to do |format|
      if @question.update(question_params)
        format.html { redirect_to @question, notice: 'Question was successfully updated.' }
        format.json { render :show, status: :ok, location: @question }
      else
        format.html { render :edit }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /questions/1
  # DELETE /questions/1.json
  def destroy
    @question.destroy
    respond_to do |format|
      format.html { redirect_to questions_url, notice: 'Question was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def search
    index
    render :index
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question
      @question = Question.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def question_params
      params.require(:question).permit(:question_name, :c_answer, :alt1, :alt2, :alt3, :news_url, :img_url, :tag, :news_summary, :category_id, :question_type_id, :valid_from, :valid_to)
    end
end
