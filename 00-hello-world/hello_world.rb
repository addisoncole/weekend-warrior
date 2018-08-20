def hello_world(input = nil)
  if input =~ /\w/
    output = "Hello, #{input}!"
    return output
  else
    output = "Hello, World!"
    return output
  end
end
