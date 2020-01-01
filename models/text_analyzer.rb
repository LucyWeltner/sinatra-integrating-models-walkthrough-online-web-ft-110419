class TextAnalyzer
	attr_reader :text

	def initialize(text)
		@text = text.downcase
	end

	def count_of_words
		@text.split(" ").length
	end

  	def count_of_vowels
    	@text.scan(/[aeoui]/).count
  	end
 
  	def count_of_consonants
    	@text.scan(/[bcdfghjklmnpqrstvwxyz]/).count
  	end

	def letter_frequencies
		char_array = @text.split("").delete_if{|char| !char.match(/[a-z]/)}
		freq_hash = Hash.new
		char_array.uniq.each do |char|
			count = char_array.count(char)
			freq_hash[char] = count
		end
		freq_hash
	end

	def most_used_letter
		freq_hash = self.letter_frequencies
		freq_hash.max_by{|char, freq| freq}
	end 

	def least_used_letter
		freq_hash = self.letter_frequencies
		freq_hash.min_by{|char, freq| freq}
	end	

end# Your TextAnalyzer model code will go here.

