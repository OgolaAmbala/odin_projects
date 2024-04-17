# frozen_string_literal: true

def solution(str, ending)
  str.end_with?(ending)
end
p solution('abcde', 'abc')
