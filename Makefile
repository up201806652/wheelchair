sym-links:
ifeq ($(OS),Windows_NT)     # is Windows_NT on XP, 2000, 7, Vista, 10...
	echo "Not implemented"
else
	rm -f ./arduino/tests/*.cpp
	rm -f ./arduino/tests/*.h
	cp --symbolic-link $(PWD)/arduino/main/*.h $(PWD)/arduino/tests/
	cp --symbolic-link $(PWD)/arduino/main/*.cpp $(PWD)/arduino/tests/
endif