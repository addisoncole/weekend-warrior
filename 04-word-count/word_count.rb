
def word_count(words)
  words_arr = words.split(' ')
  word_count_hash = {}
  words_arr.each do |word|
    if word_count_hash.has_key?(word)
      word_count_hash[word] += 1
    else
      word_count_hash.merge!(word => 1)
    end
  end
  return word_count_hash
end
