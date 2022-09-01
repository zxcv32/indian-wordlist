# Compress wordlists and create system package
SHELL = bash

# Create system package
default:
	mkdir -p build/indian-wordlist-all/usr/share/indian-wordlist/
	tar -cvzf build/indian-wordlist-all/usr/share/indian-wordlist/indian-wordlist.tar.gz indian-passwords*
	dpkg-deb --build build/indian-wordlist-all
