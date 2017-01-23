class MessageSetter

  def initialize(app)
    @app = app
  end

  def call(env)
    if env['QUERY_STRING'].empty?
      env['MESSAGE'] = 'Hello, World!'
    else
      env['MESSAGE'] = env['QUERY_STRING']
    end
    @app.call(env)
  end
end
