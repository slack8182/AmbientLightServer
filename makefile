CFLAGS = -fpermissive -L/usr/lib -L/usr/lib/arm-linux-gnueabihf -Wwrite-strings -DRASPBERRY_PI

LIBS = -lopencv_core \
	-lopencv_highgui \
	-lpthread \
	-llog4cplus \
	-ljansson \
	-lboost_system-mt \
	-lboost_date_time-mt \
	-lboost_iostreams-mt \
	-lboost_thread-mt \
	-lboost_timer-mt

# Should be equivalent to your list of C files, if you don't build selectively
SRC=$(wildcard *.cpp) $(wildcard wiringPi/*.c)

AmbiLightServer: $(SRC)
	g++ -o $@ $^ $(CFLAGS) $(LIBS)

clean:
	@rm -f AmbiLightServer *.o