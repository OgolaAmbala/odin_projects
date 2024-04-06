# frozen_string_literal: true

def are_you_playing_banjo(name)
  if name.match(/^[Rr]/i)
    "#{name} plays banjo"
  else
    "#{name} does not play banjo"
  end
end

def are_you_playing_banjo(name)
  name.match(/^[Rr]/i) ? "#{name} plays banjo" : "#{name} does not play banjo"
end
