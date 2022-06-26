use_bpm(76)

in_thread do
  live_loop :bassdrum do
    sample :drum_bass_hard
    sleep 2.5
    sample :drum_bass_hard
    sleep 1.5
  end
  
  live_loop :snare do
    sleep 1
    sample :drum_snare_hard
    sleep 2
    sample :drum_snare_hard
    sleep 1
  end
  
  live_loop :hihat do
    sample :drum_cymbal_closed
    sleep 0.5
  end
  
  use_synth :pretty_bell
  live_loop :intro_basee do
    play :As3
    sleep 1
    play :C4
    sleep 1.75
    play :As3
    sleep 0.25
    play :C4
    sleep 0.25
    play :As3
    sleep 0.25
    play :G3
    sleep 0.5
    play :F3
    sleep 1
    play :D3
    sleep 3
  end
end

