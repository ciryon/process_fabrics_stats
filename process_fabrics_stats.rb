#!/usr/bin/env ruby
require 'time'

def process(filename, startdate, enddate)

  start_range = Time.parse(startdate)
  end_range = Time.parse(enddate)
  range = start_range..end_range
  csv_file = File.read(filename)

  sum  = 0
  daycount = 0

  csv_file.lines.each do |line|
    if line =~ /^\"(\d+-\d+-\d+)\",\"(\d+)\"/
      date  = Time.parse($1)
      count = $2.to_i
      if range === date
        puts "#{date.strftime("%Y-%m-%d (%a)")}: #{count}"
        sum = sum + count
        daycount = daycount + 1
      end
      if date == end_range
        break # move out
      end
    end
  end

  puts "=============================="
  puts "Total: #{sum} in #{daycount} days"

end

if ARGV.length != 3
  puts "Usage: #{ARGV[0]} [filename.csv] [start_date] [end_date]" 
else
  process(ARGV[0], ARGV[1], ARGV[2])
end
