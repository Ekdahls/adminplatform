class Api::QuestionsController < Api::BaseController
  private

    def question_params
      params.require(:question).permit(:id,
                                      :quest,
                                      :c_answer,
                                      :alt1,
                                      :alt2,
                                      :alt3,
                                      :url,
                                      :imgurl,
                                      :tag,
                                      :news_summary,
                                      :active,
                                      :category_id,
                                      :question_type_id,
                                      :valid_from,
                                      :valid_to)
    end

    def query_params
      params.permit(:id,
                    :quest,
                    :c_answer,
                    :alt1,
                    :alt2,
                    :alt3,
                    :url,
                    :imgurl,
                    :tag,
                    :news_summary,
                    :active,
                    :category_id,
                    :question_type_id,
                    :valid_from,
                    :valid_to)
    end
end
