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
    count = 0;
    items = self.split("!")
    items.each do |item|
      items2 = item.split(".")
      items2.each do |item2|
        items3 = item2.split("?")
        items3.each do |item3|
          if item3 != ""
            count += 1   
          end       
        end
      end
    end
    return count
  end
end