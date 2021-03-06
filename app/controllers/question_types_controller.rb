class QuestionTypesController < ApplicationController
  before_action :set_question_type, only: [:show, :edit, :update, :destroy]

  # GET /question_types
  # GET /question_types.json
  #Function called when index view is rendered. Ransack is used for search
  def index
    q_param = params[:q]
    page = params[:page]

    @q = QuestionType.ransack q_param
    @question_types = @q.result.page(page)
  end

  # GET /question_types/1
  # GET /question_types/1.json
  def show
  end

  # GET /question_types/new
  def new
    @question_type = QuestionType.new
  end

  # GET /question_types/1/edit
  def edit
  end

  # POST /question_types
  # POST /question_types.json'
  # when create button is pushed in new question type
  def create
    @question_type = QuestionType.new(question_type_params)

    respond_to do |format|
      if @question_type.save
        format.html { redirect_to @question_type, notice: 'Question type was successfully created.' }
        format.json { render :show, status: :created, location: @question_type }
      else
        format.html { render :new }
        format.json { render json: @question_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /question_types/1
  # PATCH/PUT /question_types/1.json
  #When update  button is pushed in edit question type
  def update
    respond_to do |format|
      if @question_type.update(question_type_params)
        format.html { redirect_to @question_type, notice: 'Question type was successfully updated.' }
        format.json { render :show, status: :ok, location: @question_type }
      else
        format.html { render :edit }
        format.json { render json: @question_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /question_types/1
  # DELETE /question_types/1.json
  # when destroy question type is called in index view
  def destroy
    @question_type.destroy
    respond_to do |format|
      format.html { redirect_to question_types_url, notice: 'Question type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

#Other functions 
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question_type
      @question_type = QuestionType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def question_type_params
      params.require(:question_type).permit(:question_type_name)
    end
end
