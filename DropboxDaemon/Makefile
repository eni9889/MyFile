PROJECT = dropboxd
OBJECTS = $(shell ./getobjname.sh)

LD = ${CC}
CFLAGS = -isysroot ${SYSROOT} \
	 -w \
	 -std=gnu99 \
	 -c
LDFLAGS= -isysroot ${SYSROOT} \
	-w \
	-lobjc \
	-framework Foundation \
	-framework CoreFoundation \
	-framework Security

all: ${PROJECT}

${PROJECT}: ${OBJECTS}
	${LD} ${LDFLAGS} -o ${PROJECT} ${OBJECTS}
	chown root:wheel ${PROJECT}
	chmod 4777 ${PROJECT}

%.o: %.c
	${CC} ${CFLAGS} -o $@ $^

%.o: %.m
	${CC} ${CFLAGS} -o $@ $^

clean:
	rm -rf ${OBJECTS} ${PROJECT}

