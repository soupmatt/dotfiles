def copy(*args)
  IO.popen('pbcopy', 'r+') do |clipboard|
    clipboard.puts args.map(&:inspect)
  end
end

begin
  if RUBY_VERSION >= "1.9"
    require "pry"
    Pry.start
    exit
  end
rescue LoadError
  warn "=> Unable to load pry"
end
