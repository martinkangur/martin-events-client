class Message

  def push
    https = Net::HTTP.new(uri.host,uri.port)
    https.use_ssl = true
    req = Net::HTTP::Post.new(uri.path)
    req.body = URI.encode_www_form(body)
    res = https.request(req)
  end

  def uri
    URI('https://api.pushover.net/1/messages.json')
  end

  def body

    {
      user: ENV['PUSHOVER_USER'],
      token: ENV['PUSHOVER_TOKEN'];
      title: 'My message',
      message: 'Message from my app'
    }
  end

end