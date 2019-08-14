# Note: As of right now, you will need to selectively comment out loops one at a time to layer them correctly. I am still learning about how threads work in Sonic Pi, which seems like it will eliminate that overhead.

# Note 2: This is the "live" demo I gave at the Boston Ruby Group lightning talk night on 08/13/2019.

loop do
  use_synth :dark_ambience
  play choose([:B3,:G4]), attack: 6, release: 6
  sleep 4
end

loop do
  sample :ambi_glass_rub, amp: 0.2, decay: 6
  sleep 1
end

loop do
  use_synth :mod_fm
  play choose([:G4,:E4, :B5, :G5]), amp: 0.3
  sleep 0.5
end


loop do
  with_fx :reverb, mix: 0.9 do
    use_synth :tri
    play :G5, amp: 0.2
    sleep 1
    play :E4, amp: 0.2
    sleep 1
    play :B5, amp: 0.2
    sleep 1
  end
end

loop do
  use_synth :mod_fm
  play choose([:E6,:G6, :B6, :E7]), amp: 0.1
  sleep 0.25
end
