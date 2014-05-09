def copy(*args)
  IO.popen('pbcopy', 'r+') do |clipboard|
    clipboard.puts args.map(&:inspect)
  end
end

begin
  require "pry"
  Pry.start
  exit
rescue LoadError
  warn "=> Unable to load pry"
end
