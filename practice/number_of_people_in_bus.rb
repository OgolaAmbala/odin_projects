# frozen_string_literal: true

def number(bus_stops)
  on_the_bus = 0
  bus_stops.each do |on, off|
    on_the_bus += on
    on_the_bus -= off
  end

  on_the_bus
end

passengers = [[3, 0], [9, 1], [4, 10], [12, 2], [6, 1], [7, 10]]

p number(passengers)

# def number(bus_stops)
#   bus_stops.map {|(on,off)| on - off }.reduce(:+)
# end
