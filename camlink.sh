# note that this assumes that the camlink is video0 (and 1), and the v4l2loopback device is video2
# teams apparently only does 720p
# not setting exclusive_caps since it seems to stop teams from detecting the loopback device
modprobe v4l2loopback
v4l2loopback-ctl set-caps 'video/x-raw, format=YUY2, width=1280, height=720' /dev/video2
ffmpeg -pix_fmt yuyv422 -s 1920x1080 -r 50 -i /dev/video0 -f v4l2 -s 1280x720 -vcodec rawvideo /dev/video2
