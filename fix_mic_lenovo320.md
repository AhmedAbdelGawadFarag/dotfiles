In `/usr/share/pulseaudio/alsa-mixer/paths/analog-input-internal-mic.conf` and `/usr/share/pulseaudio/alsa-mixer/paths/analog-input-mic.conf`:
- Under `[Element Internal Mic Boost]` set volume to `zero`.
- Under `[Element Int Mic Boost]` set volume to `zero`.
- Under `[Element Mic Boost]` set `volume` to `zero`

Find your source name from the following command; mine is `alsa_input.pci-0000_00_1f.3.analog-stereo`

      $ pacmd list-sources | grep 'name:.*input'
      
Edit `/etc/pulse/default.pa` and add the following lines, where `INPUT_NAME` is name of the input source from above step:

    `load-module module-remap-source source_name=record_mono master=INPUT_NAME master_channel_map=front-left channel_map=mono`
    `set-default-source record_mono`

Then restart PulseAudio:

      $ pulseaudio -k
      $ pulseaudio --start
