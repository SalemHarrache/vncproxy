# WARNING! This file is automatically generated by "rake gen".
# WARNING! Any modification to it would be lost after another "rake gen" operation!

# Automatically generated at Tue Jan 19 15:21:55 +0800 2010

CC=gcc
CFLAGS=-ggdb -Wall -I3rdparty -Isrc -Ixdk -Itest  -D_FILE_OFFSET_BITS=64
LDFLAGS=-lpthread -lm

default: bin obj src 

bin:
	mkdir -p bin

obj:
	mkdir -p obj/3rdparty/bigint
	mkdir -p obj/3rdparty/crypto/md5
	mkdir -p obj/3rdparty/crypto/sha1
	mkdir -p obj/3rdparty/vnc_auth
	mkdir -p obj/src
	mkdir -p obj/test
	mkdir -p obj/xdk


api: 3rdparty/crypto/md5/md5.h 3rdparty/crypto/md5/md5.c 3rdparty/crypto/sha1/sha1.h 3rdparty/crypto/sha1/sha1.c 3rdparty/vnc_auth/d3des.h 3rdparty/vnc_auth/d3des.c 3rdparty/bigint/bigint.h 3rdparty/bigint/bigint.c src/vnc_proxy_ctl.c src/vnc_proxy.c xdk/xhash.h xdk/xmemory.h xdk/xdef.c xdk/xkeepalive.h xdk/xhash.c xdk/xutils.c xdk/xcrypto.h xdk/xlog.h xdk/xnet.c xdk/xstr.c xdk/xvec.h xdk/xcrypto.c xdk/xutils.h xdk/xlog.c xdk/xmemory.c xdk/xnet.h xdk/xvec.c xdk/xkeepalive.c xdk/xbigint.c xdk/xbigint.h xdk/xstr.h xdk/xdef.h 
	doxygen

clean:
	rm -rf bin
	rm -rf obj
	rm -rf api
	find . -iname *~ -delete

3rdparty: bin obj obj/3rdparty/crypto/md5/md5.o obj/3rdparty/crypto/sha1/sha1.o obj/3rdparty/vnc_auth/d3des.o obj/3rdparty/bigint/bigint.o

obj/3rdparty/crypto/sha1/sha1.o: 3rdparty/crypto/sha1/sha1.c 3rdparty/crypto/sha1/sha1.h
	$(CC) $(CFLAGS) -c 3rdparty/crypto/sha1/sha1.c -o obj/3rdparty/crypto/sha1/sha1.o

obj/3rdparty/crypto/md5/md5.o: 3rdparty/crypto/md5/md5.c 3rdparty/crypto/md5/md5.h
	$(CC) $(CFLAGS) -c 3rdparty/crypto/md5/md5.c -o obj/3rdparty/crypto/md5/md5.o

obj/3rdparty/bigint/bigint.o: 3rdparty/bigint/bigint.c 3rdparty/bigint/bigint.h xdk/xbigint.h
	$(CC) $(CFLAGS) -c 3rdparty/bigint/bigint.c -o obj/3rdparty/bigint/bigint.o

obj/3rdparty/vnc_auth/d3des.o: 3rdparty/vnc_auth/d3des.c 3rdparty/vnc_auth/d3des.h
	$(CC) $(CFLAGS) -c 3rdparty/vnc_auth/d3des.c -o obj/3rdparty/vnc_auth/d3des.o


obj/src/vnc_proxy_ctl.o: src/vnc_proxy_ctl.c xdk/xdef.h xdk/xmemory.h xdk/xutils.h xdk/xstr.h
	$(CC) $(CFLAGS) -c src/vnc_proxy_ctl.c -o obj/src/vnc_proxy_ctl.o

obj/src/vnc_proxy.o: src/vnc_proxy.c xdk/xstr.h xdk/xnet.h xdk/xvec.h xdk/xmemory.h xdk/xcrypto.h xdk/xutils.h 3rdparty/vnc_auth/d3des.h
	$(CC) $(CFLAGS) -c src/vnc_proxy.c -o obj/src/vnc_proxy.o

src: bin obj bin/vnc_proxy_ctl obj/src/vnc_proxy_ctl.o bin/vnc_proxy obj/src/vnc_proxy.o

bin/vnc_proxy_ctl: obj/src/vnc_proxy_ctl.o obj/xdk/xdef.o obj/xdk/xmemory.o obj/xdk/xutils.o obj/xdk/xstr.o
	$(CC) $(CFLAGS) $(LDFLAGS) obj/src/vnc_proxy_ctl.o obj/xdk/xdef.o obj/xdk/xmemory.o obj/xdk/xutils.o obj/xdk/xstr.o -o bin/vnc_proxy_ctl

bin/vnc_proxy: obj/src/vnc_proxy.o obj/xdk/xstr.o obj/xdk/xnet.o obj/xdk/xvec.o obj/xdk/xmemory.o obj/xdk/xcrypto.o obj/xdk/xutils.o obj/3rdparty/vnc_auth/d3des.o obj/xdk/xdef.o obj/3rdparty/crypto/md5/md5.o obj/3rdparty/crypto/sha1/sha1.o
	$(CC) $(CFLAGS) $(LDFLAGS) obj/src/vnc_proxy.o obj/xdk/xstr.o obj/xdk/xnet.o obj/xdk/xvec.o obj/xdk/xmemory.o obj/xdk/xcrypto.o obj/xdk/xutils.o obj/3rdparty/vnc_auth/d3des.o obj/xdk/xdef.o obj/3rdparty/crypto/md5/md5.o obj/3rdparty/crypto/sha1/sha1.o -o bin/vnc_proxy


obj/xdk/xhash.o: xdk/xhash.c xdk/xhash.h xdk/xmemory.h xdk/xdef.h
	$(CC) $(CFLAGS) -c xdk/xhash.c -o obj/xdk/xhash.o

obj/xdk/xlog.o: xdk/xlog.c xdk/xlog.h
	$(CC) $(CFLAGS) -c xdk/xlog.c -o obj/xdk/xlog.o

obj/xdk/xbigint.o: xdk/xbigint.c 3rdparty/bigint/bigint.h xdk/xmemory.h xdk/xbigint.h xdk/xdef.h xdk/xstr.h
	$(CC) $(CFLAGS) -c xdk/xbigint.c -o obj/xdk/xbigint.o

obj/xdk/xdef.o: xdk/xdef.c xdk/xdef.h
	$(CC) $(CFLAGS) -c xdk/xdef.c -o obj/xdk/xdef.o

obj/xdk/xstr.o: xdk/xstr.c xdk/xstr.h xdk/xmemory.h xdk/xutils.h xdk/xdef.h
	$(CC) $(CFLAGS) -c xdk/xstr.c -o obj/xdk/xstr.o

obj/xdk/xutils.o: xdk/xutils.c xdk/xmemory.h xdk/xutils.h xdk/xdef.h xdk/xstr.h
	$(CC) $(CFLAGS) -c xdk/xutils.c -o obj/xdk/xutils.o

obj/xdk/xkeepalive.o: xdk/xkeepalive.c xdk/xkeepalive.h xdk/xutils.h xdk/xdef.h
	$(CC) $(CFLAGS) -c xdk/xkeepalive.c -o obj/xdk/xkeepalive.o

obj/xdk/xnet.o: xdk/xnet.c xdk/xnet.h xdk/xmemory.h xdk/xutils.h xdk/xdef.h xdk/xstr.h
	$(CC) $(CFLAGS) -c xdk/xnet.c -o obj/xdk/xnet.o

obj/xdk/xvec.o: xdk/xvec.c xdk/xvec.h xdk/xmemory.h
	$(CC) $(CFLAGS) -c xdk/xvec.c -o obj/xdk/xvec.o

obj/xdk/xmemory.o: xdk/xmemory.c xdk/xdef.h xdk/xmemory.h
	$(CC) $(CFLAGS) -c xdk/xmemory.c -o obj/xdk/xmemory.o

obj/xdk/xcrypto.o: xdk/xcrypto.c xdk/xcrypto.h xdk/xmemory.h 3rdparty/crypto/md5/md5.h 3rdparty/crypto/sha1/sha1.h xdk/xdef.h
	$(CC) $(CFLAGS) -c xdk/xcrypto.c -o obj/xdk/xcrypto.o

xdk: bin obj obj/xdk/xdef.o obj/xdk/xhash.o obj/xdk/xutils.o obj/xdk/xnet.o obj/xdk/xstr.o obj/xdk/xcrypto.o obj/xdk/xlog.o obj/xdk/xmemory.o obj/xdk/xvec.o obj/xdk/xkeepalive.o obj/xdk/xbigint.o


runtest: test
	@clear
	@echo Running test module \'test\'
	@echo ==========================

test: bin obj


all: bin obj obj/xdk/xhash.o obj/src/vnc_proxy_ctl.o obj/xdk/xlog.o obj/xdk/xdef.o obj/xdk/xbigint.o obj/3rdparty/crypto/md5/md5.o obj/3rdparty/crypto/sha1/sha1.o obj/xdk/xutils.o obj/xdk/xstr.o obj/src/vnc_proxy.o obj/xdk/xnet.o obj/xdk/xkeepalive.o bin/vnc_proxy_ctl obj/3rdparty/bigint/bigint.o obj/xdk/xmemory.o obj/xdk/xvec.o obj/3rdparty/vnc_auth/d3des.o obj/xdk/xcrypto.o bin/vnc_proxy 



