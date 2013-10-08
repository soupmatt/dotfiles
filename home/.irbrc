def copy(*args)
  IO.popen('pbcopy', 'r+') do |clipboard|
    clipboard.puts args.map(&:inspect)
  end
end
