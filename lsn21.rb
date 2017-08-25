module Lsn

  #this function breaks up words
  def Lsn.break_words(stuff)
    words = stuff.split(' ')
    return words
  end

  #sorts the words
  def Lsn.sort_words(words)
    return words.sort
  end

  #prints the first word after shifting it off
  def Lsn.print_first_word(words)
    word = words.shift
    puts word
  end

  #prints the last word after popping it off
  def Lsn.print_last_word(words)
    word = words.pop
    puts word
  end

  #takes in a full sentance and returns the sorted words
  def Lsn.sort_sentence(sentence)
    words = Lsn.break_words(sentence)
    return Lsn.sort_words(words)
  end

  #prints the first and last words of a sentence
  def Lsn.print_first_and_last(sentence)
    words = Lsn.break_words(sentence)
    Lsn.print_first_word(words)
    Lsn.print_last_word(words)
  end

  #sorts the words and then prints the first and last one
  def Lsn.print_first_and_last_sorted(sentence)
    words = Lsn.sort_sentence(sentence)
    Lsn.print_first_word(words)
    Lsn.print_last_word(words)
  end

end
