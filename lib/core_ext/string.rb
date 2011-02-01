#coding: utf-8
require 'unicode_utils'

class String
  def to_yodish
    s = self.scan(/([A-zА-я]+(\-[A-zА-я]+)?)([,:;\ -\.\?\!\ ]+)?/).map{|f,s,t|[f,t]}
    new_s = []

    s.each_with_index do |pair, i| 
      word, mark = pair
      new_s[i] = [s[-1 - i][0].dup, mark]
    end

    new_order = new_s.map(&:first)
    new_order.each_with_index do |new_word, word_index|
      old_word = s[word_index]
      old_word.first.chars.each_with_index do |char, char_index| 
        if char_index < new_word.length
          if UnicodeUtils.uppercase_char?(char)
            new_order[word_index][char_index] = UnicodeUtils.upcase(new_word[char_index])
          elsif UnicodeUtils.uppercase_char?(new_word[char_index])
            new_order[word_index][char_index] = UnicodeUtils.downcase(new_word[char_index])
          end
        end
      end
    end
    
    new_order.each_with_index do |word, i|
      new_s[i] = "#{word}#{new_s[i][1]}"
    end
    new_s.join
  end
end
