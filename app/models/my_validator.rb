class MyValidator < ActiveModel::Validator
  def validate(record)
    if record.valid_to < record.valid_from
      record.errors[:base] << '"Giltig från" (Datum) måste vara före "Giltig till:" (Datum)'
    end
  end
end