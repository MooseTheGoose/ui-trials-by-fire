if [ "$IMTUI_HOME" = "" ] ; then
	echo "Please define IMTUI_HOME to be the git repo with include/ and build/ directories"
	exit 1
fi


g++ -L "$IMTUI_HOME/build/src" -L "$IMTUI_HOME/build/third-party" -L "$IMTUI_HOME/build/examples" -limtui-examples-common -limgui-for-imtui -limtui -limtui-ncurses -lcurses -iquote "$IMTUI_HOME/include" -iquote "$IMTUI_HOME/third-party/imgui" -std=c++14 hello.cpp
