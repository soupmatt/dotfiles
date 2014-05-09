if defined?(Rails) && Rails.env
  if defined?(Rails::ConsoleMethods)
    extend Rails::ConsoleMethods
  end
end
