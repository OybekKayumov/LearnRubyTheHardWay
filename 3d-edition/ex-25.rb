module Ex25
  
  # this function will break up words for us.
  def Ex25.break_words(stuff)
    words = stuff.split(' ')
    return words
  end
  
  # sorts the words.
  def Ex25.sort_words(words)
    return words.sort
  end
  
  # print the first word after shifting it off.
  def Ex25.print_first_word(words)
    word = words.shift
    puts word
  end

  # print the last word after popping it off.
  def Ex25.print_last_word(words)
    word = words.pop
    puts word
  end

  # takes in a full sentence and returns the sorted words.
  def Ex25.sort_sentence(sentence)
    words = Ex25.break_words(sentence)
    return Ex25.sort_words(words)
  end

  # print the first and last words of the sentence.
  def Ex25.print_first_and_last(sentence)
    words = Ex25.break_words(sentence)
    Ex25.print_first_word(words)
    Ex25.print_last_word(words)
  end

  # print the words then prints the first and last one.
  def Ex25.print_first_and_last_sorted(sentence)
    words = Ex25.sort_sentence(sentence)
    Ex25.print_first_word(words)
    Ex25.print_last_word(words)
  end

end


# >> require "./ex-25.rb"
# => true
# >>
# ?> sentence = "All good things come to those who wait."
# => "All good things come to those who wait."
# >> words = Ex25.break_words(sentence)
# => ["All", "good", "things", "come", "to", "those", "who", "wait."]
# >> words
# => ["All", "good", "things", "come", "to", "those", "who", "wait."]
# >> sorted_words = Ex25.sort_words(words)
# => ["All", "come", "good", "things", "those", "to", "wait.", "who"]
# >> sorted_words
# => ["All", "come", "good", "things", "those", "to", "wait.", "who"]
# >> Ex25.print_first_word(words)
# All
# => nil
# >> Ex25.print_last_word(words)
# wait.
# => nil
# >> words
# => ["good", "things", "come", "to", "those", "who"]
# >> Ex25.print_first_word(sorted_words)
# All
# => nil
# >> Ex25.print_last_word(sorted_words)
# who
# => nil
# >> sorted_words
# => ["come", "good", "things", "those", "to", "wait."]
# >> sorted_words = Ex25.sort_sentence(sentence)
# => ["All", "come", "good", "things", "those", "to", "wait.", "who"]
# >> sorted_words
# => ["All", "come", "good", "things", "those", "to", "wait.", "who"]
# >> Ex25.print_first_and_last(sentence)
# All
# wait.
# => nil
# >> Ex25.print_first_and_last_sorted(sentence)
# All
# who
# => nil
