# frozen_string_literal: true

def get_grade(score1, score2, score3)
  average_score = ((score1 + score2 + score3) / 3)

  if average_score.between?(90, 100)
    'A'
  elsif average_score.between?(80, 90)
    'B'
  elsif average_score.between?(70, 80)
    'C'
  elsif average_score.between?(60, 70)
    'D'
  else
    'F'
  end
end

p get_grade(50, 60, 98)
