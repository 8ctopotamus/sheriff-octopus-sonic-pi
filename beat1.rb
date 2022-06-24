define :drumbeat do
  sample :drum_bass_hard
  sleep 0.5
  sample :drum_snare_hard
  sleep 0.5
end

define :bassline do
  use_synth :dull_bell
  play :C3
  sleep 0.25
  play :C3
  sleep 0.25
  play :A3
  sleep 0.25
  play :G3
  sleep 0.25
end

define :leadsynth do
  use_synth :tb303
  with_fx :echo do
    play :G4, release: 1.5
    play :E5, release: 1.5
    sleep 2
    play :C4, release: 1.5
    play :F5, release: 1.5
    sleep 2
    play :F5, release: 2
    play :As5, release: 1.5
    sleep 2
    play :A5
    sleep 0.5
    play :G5
    sleep 0.5
    play :C5
    sleep 0.5
    play :G5
    sleep 0.5
  end
end

live_loop :bass_loop do
  bassline
end

live_loop :drum_loop do
  drumbeat
end

live_loop :lead_loop do
  leadsynth
end
