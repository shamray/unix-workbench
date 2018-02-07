all: readme

readme: 
	echo "# Guessing Game" > README.md
	echo "Creation date:" >> README.md
	date +"%B %d, %Y %H:%M:%S" >> README.md
	echo "" >> README.md
	echo "Number of lines in guessinggame.sh:" >> README.md
	cat guessinggame.sh | wc -l >> README.md

clean:
	rm README.md

