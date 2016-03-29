class YoutubeSan
  class Channel < YoutubeSan::Request
    def channel
      channel_request['items']
    end
  
    def result_per_page
      channel_request['pageInfo']
    end
  
    def title
      channel.first['snippet']['title'].to_s
    end
  
    def description
      channel.first['snippet']['description'].to_s
    end
  
    def publishedAt
      channel.first['snippet']['publishedAt'].to_s
    end
  
    def thumbnails
      channel.first['snippet']['thumbnails']
    end
  
    def localized
      channel.first['snippet']['localized'].to_s
    end
  
    def country
      channel.first['snippet']['country'].to_s
    end
  end
end
