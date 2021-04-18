#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-install-ffmpeg-on-ubuntu-20-04/

sudo apt update

sudo apt install ffmpeg

ffmpeg -version

ffmpeg -encoders

ffmpeg -decoders

ffmpeg -i input.mp4 output.webm

ffmpeg -i input.mp3 output.ogg

ffmpeg -i input.mp4 -c:v libvpx -c:a libvorbis output.webm

ffmpeg -i input.mp3 -c:a libopus output.ogg