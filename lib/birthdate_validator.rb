#encoding UTF-8

class BirthdateValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
      record.errors[attribute] << (options[:message] || "birthdate not valid") 
      unless value =~ /^(0[1-9]|[12][0-9]|3[01])-(0[1-9]|1[012])(-(19|20)\d\d)?/
  end
end
