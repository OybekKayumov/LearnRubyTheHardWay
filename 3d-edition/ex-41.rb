require 'open-uri'

WORD_URL = "http://learncodethehardway.org/words.txt"
WORDS = []

PHRASES = {
  "class ### < ###\nend" =>
    "Make a class named ### that is-a ###.",
  "class ###\n\tdef initialize(@@@)\n\tend\nend" =>
    "class ### has-a initialize that takes @@@ parameters.",
  "class ###\n\tdef ***(@@@)\n\tend\nend" =>
    "class ### has-a function named *** that takes @@@ parameters.",
  "*** = ###.new()" =>
    "Set *** to an instance of class ###.",
  "***.***(@@@)" =>
    "From *** get the *** function, and call it with parameters @@@.",
  "***.*** = '***'" =>
    "From *** get the *** attribute and set it to '***'."
}

PHRASE_FIRST = ARGV[0] == 'english'

open(WORD_URL) { |f|
  f.each_line { |word| WORDS.push(word.chomp) }
}

def craft_names(rand_words, snippet, pattern, caps=false)
  names = snippet.scan(pattern).map do
    word = rand_words.pop()
    caps ? word.capitalize : word
  end

  return names * 2
end

def craft_params(rand_words, snippet, pattern)
  names = (0..snippet.scan(pattern).length).map do
    param_count = rand(3) + 1
    params = (0..param_count).map { |x| rand_words.pop() }
    params.join(', ')
  end

  return names * 2
end
