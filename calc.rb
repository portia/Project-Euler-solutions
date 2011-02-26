def ask question
	goodAnswer = false
	while (not goodAnswer)
		puts question
		reply = gets.chomp.downcase

		if (reply == 'да' or reply == 'нет')
			goodAnswer = true
			if (reply == 'да')
				answer = true
			else
				answer = false
			end
		else
			puts 'Пожалуйста, отвечайте "да" или "нет"'
		end
	end
answer
end

ask 'Вам нравится буритос?'
wets_bed = ask 'Вы мочитесь в постель?'
ask 'Вам нравится тамалес?'
