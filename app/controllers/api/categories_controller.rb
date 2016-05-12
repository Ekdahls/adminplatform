class Api::CategoriesController < Api::BaseController
  private

    def category_params
      params.require(:category).permit(:cat)
    end

    def query_params
      params.permit(:question_id, :cat)
    end
end
