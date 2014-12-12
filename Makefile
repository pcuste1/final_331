# Source inspiration: https://github.com/mame/quine-relay/blob/master/Makefile

all: finalquine.pl
	@echo
	@echo "#############"
	@echo "##  CHECK  ##"
	@echo "#############"
	@echo
	diff quinerelay.pl finalquine.pl

quinerelay.rb: quinerelay.pl
	@echo
	@echo "########################"
	@echo "##  1: Perl -> Ruby   ##"
	@echo "########################"
	@echo
	perl quinerelay.pl > quinerelay.rb

quineRelay.java: quinerelay.rb
	@echo
	@echo "##########################"
	@echo "##  2: Ruby -> Java     ##"
	@echo "##########################"
	@echo
	ruby quinerelay.rb > quineRelay.java

quinerelay.cpp: quineRelay.java
	@echo
	@echo "##########################"
	@echo "##  2: Java -> C++      ##"
	@echo "##########################"
	@echo
	javac quineRelay.java 
	java quineRelay > quinerelay.cpp

quinerelay.py: quinerelay.cpp
	@echo
	@echo "##########################"
	@echo "##  2: C++ -> Python    ##"
	@echo "##########################"
	@echo
	g++ -o quinerelay quinerelay.cpp && ./quinerelay > quinerelay.py

quinerelay2.pl: quinerelay.py
	@echo
	@echo "##########################"
	@echo "##  2: Python -> Perl   ##"
	@echo "##########################"
	@echo
	python quinerelay.py > fnalquine.pl

clean:
	rm -f quinerelay*
	rm -f quineRelay.*
