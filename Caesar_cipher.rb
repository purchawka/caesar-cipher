
def caesar_cipher (text, key)
	alphabet = ("a".."z").to_a
	u_alphabet = ("A".."Z").to_a

	string = String.new
if key > 25
	puts "key must be lower"
else
	text.each_char do |x|
		if alphabet.include?(x)
			if (alphabet.index(x) + key)< 26
				string << alphabet[alphabet.index(x) + key - 1]
			else 
				string << alphabet[alphabet.index(x) + key - 26]
			end
		elsif u_alphabet.include?(x)
			if (u_alphabet.index(x) + key)< 26
				string << u_alphabet[u_alphabet.index(x) + key - 1]
			else
				string << alphabet[u_alphabet.index(x) + key - 26]
			end
		else 
			string << x
		end
	end


	puts string
end
end

caesar_cipher("Ala ma kota", 2)
caesar_cipher("xyz", 22)

