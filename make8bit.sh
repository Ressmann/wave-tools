#!/bin/sh

for file in *.wav
do
	sox $file -b 8 -D ${file%.wav}-8bit.wav
	rm $file
	mv ${file%.wav}-8bit.wav $file
done