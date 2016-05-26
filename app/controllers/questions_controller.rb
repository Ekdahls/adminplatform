class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :edit, :update, :destroy]

  # GET /questions
  # GET /questions.json
  #When index view is called @qestions load all the questions from db
  #ransack gem is used for search
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
  #When view for new question is called class Question.new is called
  #all categories and question_types loads for use in dropdown list in form.
  def new
    @question = Question.new
    @categories = Category.all
    @question_types = QuestionType.all
  end

  # GET /questions/1/edit
  #Function when edit questions is called. Loads all categories and questiontypes
  #for drop-down list in form
  def edit
    @categories = Category.all
    @question_types = QuestionType.all
  end

  # POST /questions
  # POST /questions.json
  #Function called when create button is pressed in form. 
  #the response is sucess or error.
  def create
    @question = Question.new(question_params)

    @categories = Category.all
    @question_types = QuestionType.all
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
  # Function called when update button in form is pressed. 
  def update

    @categories = Category.all
    @question_types = QuestionType.all

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
    # Function called when destroy button is pressed on question in index view
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

#Other functions for search and approved parameters.
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
