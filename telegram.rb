require 'telegram/bot'

token = '123456789:XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXxxx'    

Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    case message.text
    when '/start'
      bot.api.send_message(chat_id: message.chat.id, text: "I am the SitePoint bot, My commands are /sitepoint /map")
    when '/sitepoint'
      bot.api.send_message(chat_id: message.chat.id, text: "Welcome to http://sitepoint.com")
    when '/map'
      bot.api.send_location(chat_id: message.chat.id, latitude: 23.022505, longitude: 72.5713621)
   end
  end
end

