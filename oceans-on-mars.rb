use_bpm(76)

in_thread(name: :bassdrum) do
  with_fx :echo, phase: 0.25 do
    live_loop :bassdrum do
      sample :drum_bass_hard
      sleep 2.5
      sample :drum_bass_hard
      sleep 1.5
    end
  end
end

in_thread(name: :snare)  do
  with_fx :echo, phase: 0.75 do
    live_loop :snare do
      sleep 1
      sample :drum_snare_hard
      sleep 2
      sample :drum_snare_hard
      sleep 1
    end
  end
end

at 8 do
  in_thread do
    live_loop :hihat do
      sample :drum_cymbal_closed
      sleep 0.5
    end
  end
end

at 8 do
  in_thread do
    live_loop :intro_bass do
      # phrase 1
      use_synth :pretty_bell
      play :As2, sustain: 0.8
      sleep 1
      play :C3, sustain: 0.8
      sleep 1.75
      play :As2
      sleep 0.25
      play :C3
      sleep 0.25
      play :As2
      sleep 0.25
      play :G2
      sleep 0.5
      play :F2, sustain: 1
      sleep 1
      play :D2, sustain: 2
      sleep 3
      # phrase 2
      use_synth :dtri
      play :As1, sustain: 0.3
      sleep 1
      play :C2, sustain: 0.3
      sleep 1.75
      play :As1
      sleep 0.25
      play :C2
      sleep 0.25
      play :As1
      sleep 0.25
      play :G1
      sleep 0.5
      play :F1, sustain: 0.6
      sleep 1
      play :D1, sustain: 0.6
      sleep 3
    end
  end
end

##| at 32 do
in_thread do
  use_synth :blade
  live_loop :lead do
    sleep 2.5
    play :As3, sustain: 0.5
    sleep 0.5
    play :G3, sustain: 0.5
    sleep 0.5
    play :C4, sustain: 1
    sleep 1
    play :As3, sustain: 1
    sleep 6
    play :As3, sustain: 0.5
    sleep 0.5
    play :G3, sustain: 0.5
    sleep 0.5
    play :As3, sustain: 0.5
    sleep 0.25
    play :G3, sustain: 0.8
    sleep 0.75
    play :F3, sustain: 1
    sleep 3.5
  end
end
##| end
