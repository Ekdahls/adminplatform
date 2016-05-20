class Question < ActiveRecord::Base
  include ActiveModel::Validations
  validates_with MyValidator
  
  belongs_to :category
  belongs_to :question_type
end
