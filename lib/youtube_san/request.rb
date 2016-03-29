class YoutubeSan
  class Request < YoutubeSan::Url
    def channel_request
      json = Net::HTTP.get(channel_url)
      JSON.parse(json)
    end
  
    def videos_request(options='')
      json = Net::HTTP.get(videos_url(options))
      JSON.parse(json)
    end
  
    def view_count_request(video_id)
      json = Net::HTTP.get(view_count_url(video_id))
      JSON.parse(json)
    end

    def video_request(video_id)
      json = Net::HTTP.get(video_url(video_id))
      JSON.parse(json)
    end
  end
end
