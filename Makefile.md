all: README.md Makefile.md
README.md: guessinggame.sh
	echo "Akshay Unix Workbench Assigment" > README.md
	date >> README.md
	cat guessinggame.sh | wc -l >> README.md
Makefile.md: README.md
	cp ./README.md ./Makefile.md
clean:rm README.md 
      rm Makefile.md
