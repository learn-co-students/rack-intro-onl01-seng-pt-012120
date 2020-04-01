require "rack"

class MyServer
  def call(env)
    return [
      200,
      {"Content-Type" => "text/html"},
      pretty_response
    ]
  end
  
  def pretty_response
    if (Time.now.to_i % 2).zero?
      ["<em>Hello</em>"]
    else
      ["<strong>Hello</strong>"]
    end
  end
end