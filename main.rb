WordList = File.readlines('/usr/share/dict/words').map do |line|
  line.strip.downcase
end


Length = 4..7

ordered_words = {}
Length.step do |len|
  ordered_words[len] = []
end

WordList.each do |word|
  ordered_words[word.length] << word if Length.include? word.length
end

output = []
4.times do
  output << ordered_words[rand(Length)].sample
end

puts output.join(" ")
