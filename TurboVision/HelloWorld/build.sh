if [ "$TVISION_HOME" = "" ] ; then
	echo "Please define TVISION_HOME to be the git repo with include/ and build/ directories"
	exit 1
fi
g++ -L "$TVISION_HOME/build" -ltvision -lcurses -I "$TVISION_HOME/include" -std=c++14 hello.cpp
