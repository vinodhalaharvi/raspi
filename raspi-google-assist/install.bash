pip install --upgrade google-assistant-sdk
pip install --upgrade google-auth-oauthlib[tool]
google-oauthlib-tool --client-secrets raspi-assistant.json --scope https://www.googleapis.com/auth/assistant-sdk-prototype --save --headless
sudo apt-get install portaudio19-dev libffi-dev libssl-dev
pip install --upgrade google-assistant-sdk[samples]
export PYTHONPATH=/usr/lib/python2.7/dist-packages:/usr/local/lib/python2.7/dist-packages/
googlesamples-assistant-audiotest --record-time 10
googlesamples-assistant-audiotest --record-time 10 --audio-block-size=3200 --audio-flush-size=6400

sudo apt-get install portaudio19-dev libffi-dev libssl-dev
pip install --upgrade google-assistant-sdk[samples]
googlesamples-assistant-pushtotalk

pip install --upgrade google_assistant_library-0.0.2-py2.py3-none-linux_armv7l.whl
pip install --upgrade google-assistant-sdk[samples]
googlesamples-assistant-hotword

#google_assistant_library-0.0.2-py2.py3-none-linux_armv7l.whl

