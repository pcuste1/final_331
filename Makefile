# Source inspiration: https://github.com/mame/quine-relay/blob/master/Makefile

all: quinerelay2.pl
	@echo
	@echo "#############"
	@echo "##  CHECK  ##"
	@echo "#############"
	@echo
#sdiff quinerelay.pl quinerelay2.pl

quinerelay.rb: quinerelay.pl
	@echo
	@echo "########################"
	@echo "##  1: Perl -> Ruby   ##"
	@echo "########################"
	@echo
	perl quinerelay.pl > quinerelay.rb

quinerelay.cs: quinerelay.rb
	@echo
	@echo "##########################"
	@echo "##  2: Ruby -> C#       ##"
	@echo "##########################"
	@echo
	ruby quinerelay.rb > quinerelay.cs

quinerelay.cpp: quinerelay.cs
	@echo
	@echo "##########################"
	@echo "##  2: C# -> C++        ##"
	@echo "##########################"
	@echo
	mcs quinerelay.cs 
	mono quinerealy.exe > quinerelay.cpp

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
	python quinerelay.py > quinerelay2.pl

clean:
	rm -f quinerelay.*
