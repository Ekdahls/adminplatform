json.array! @questions do |question|
  json.id             question.id
  json.question_name  question.question_name
  json.c_answer       question.c_answer
  json.alt1           question.alt1
  json.alt2           question.alt2
  json.alt3           question.alt3
  json.news_url       question.news_url
  json.img_url        question.img_url
  json.tag            question.tag
  json.news_summary   question.news_summary

  json.category_id question.category ? question.category.category_name : nil
  json.category_hex_code question.category.category_hex_code
  json.question_type_id question.question_type ? question.question_type.question_type_name : nil

  json.valid_from     question.valid_from
  json.valid_to       question.valid_to
end
