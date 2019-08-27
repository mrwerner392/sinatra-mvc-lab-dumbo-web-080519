class PigLatinizer

    def piglatinize(text)
        words = text.split(" ")
        pl_words = words.map do |word|
            letters = word.split("")
            if %w(a e i o u A E I O U).include?(letters.first)
                letters.push("w")
            else
                while !%w(a e i o u A E I O U).include?(letters.first) do
                    letter = letters.shift
                    letters.push(letter)
                end
            end
            letters.push("ay")
            letters.join("")
        end
        pl_words.join(" ")

    end

end