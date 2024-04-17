# frozen_string_literal: true

def get_middle(s)
  s.length.odd?
end

p get_middle('test') # 'es'

p get_middle('testing') # 't'
