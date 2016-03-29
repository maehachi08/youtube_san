require 'open-uri'
require 'net/http'
require 'json'
require 'dotenv'
require 'date'
require "youtube_san/version"
require 'youtube_san/params'
require 'youtube_san/url'
require 'youtube_san/request'
require 'youtube_san/channel'
require 'youtube_san/videos'

class YoutubeSan
  Dotenv.load

  def initialize(opt={})
    @api_key    = ENV['API_KEY'] ? ENV['API_KEY'] : opt[:api_key]
    @channel_id = ENV['CHANNEL_ID'] ? ENV['CHANNEL_ID'] : opt[:channel_id]
    google_api_url   = 'https://www.googleapis.com/'
    @youtube_api_url = google_api_url + 'youtube/v3/'
  end
end
