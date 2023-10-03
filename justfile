run:
	cargo run &&\
	ffmpeg -y -framerate 1 -pattern_type glob -i 'temp/*.png' -vf "scale=1920:1080:force_original_aspect_ratio=decrease,pad=1920:1080:(ow-iw)/2:(oh-ih)/2:black" video.mp4

