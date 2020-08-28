#!/usr/bin/env python
from soco import SoCo

if __name__ == '__main__':
    sonos = SoCo('192.168.1.60') # Pass in the IP of your Sonos speaker
    # You could use the discover function instead, if you don't know the IP

    # Pass in a URI to a media file to have it streamed through the Sonos
    # speaker
    sonos.volume = 6
    sonos.play_uri('http://22183.live.streamtheworld.com/SKYRADIO.mp3')
    #sonos.play_uri('https://icecast-qmusicnl-cdp.triple-it.nl/Qmusic_nl_nonstop_96.mp3')

    track = sonos.get_current_track_info()

    #print track['title']

    sonos.pause()

    # Play a stopped or paused track
    sonos.play()


## Python commandline example
# import soco
# sonos = soco.SoCo("192.168.1.56")
# sonos.player_name
# sonos.volume
