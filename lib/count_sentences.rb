require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    regex_filter = /(\! |\. |\? )/
    new_sentense = self.split(regex_filter)
    
    output = []
    new_sentense.each do |item|
    next if item =~ regex_filter
    output << item
    end 
    output.count
  end
end