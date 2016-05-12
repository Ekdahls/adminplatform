class Api::QuestionTypesController < Api::BaseController
  private

    def question_type_params
      params.require(:question_type).permit(:qtype)
    end

    def query_params
      params.permit(:question_id, :qtype)
    end
end
