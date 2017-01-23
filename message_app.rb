class MessageApp

  def call(env)
    Rack::Response.new([env['MESSAGE']], 200, {})
  end
end
