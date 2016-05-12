json.array!(@questions) do |question|
  json.extract! question, :id, :question_name, :c_answer, :alt1, :alt2, :alt3, :news_url, :img_url, :tag, :news_summary, :category_id, :question_type_id, :valid_from, :valid_to
  json.url question_url(question, format: :json)
end
