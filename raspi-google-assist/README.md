```
# INSTALL 

pip install --upgrade google-assistant-sdk
pip install --upgrade google-auth-oauthlib[tool]
google-oauthlib-tool --client-secrets raspi-assistant.json --scope https://www.googleapis.com/auth/assistant-sdk-prototype --save --headless
sudo apt-get install portaudio19-dev libffi-dev libssl-dev
pip install --upgrade google-assistant-sdk[samples]
googlesamples-assistant-audiotest --record-time 10
googlesamples-assistant-audiotest --record-time 10 --audio-block-size=3200 --audio-flush-size=6400

sudo apt-get install portaudio19-dev libffi-dev libssl-dev
pip install --upgrade google-assistant-sdk[samples]
googlesamples-assistant-pushtotalk

pip install --upgrade google_assistant_library-0.0.2-py2.py3-none-linux_armv7l.whl
pip install --upgrade google-assistant-sdk[samples]
googlesamples-assistant-hotword


speaker-test -t wav
# Check the recording by replaying it.
$ aplay --format=S16_LE --rate=16k out.raw

# Adjust the playback and recording volume.
$ alsamixer

# Note the card number and device number for recording.
$ arecord -l
# Note the card number and device number for playback.
$ aplay -l


#Create a new file named .asoundrc in the home directory (/home/pi). Make sure it has the right slave definitions for microphone and speaker:
pcm.!default {
  type asym
  capture.pcm "mic"
  playback.pcm "speaker"
}
pcm.mic {
  type plug
  slave {
    pcm "hw:<card number>,<device number>"
  }
}
pcm.speaker {
  type plug
  slave {
    pcm "hw:<card number>,<device number>"
  }
}

$ sudo raspi-config
#Go to Advanced options > Audio and select the desired output device.
```
