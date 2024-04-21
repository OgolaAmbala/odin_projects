# frozen_string_literal: true

def feast(beast, dish)
  beast[0] == dish[0] && beast[-1] == dish[-1]
end

p feast('great blue heron', 'garlic naan')
# p feast('chickadee', 'chocolate cake')
# p feast('brown bear', 'bear claw')
