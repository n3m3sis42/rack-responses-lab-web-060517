class Application

  def self.get_greeting
    Time.now.localtime.hour < 12 ? "Good Morning!" : "Good Afternoon!"
  end

  def call(env)
    resp = Rack::Response.new
    resp.write self.class.get_greeting
    resp.finish
  end
end
