class YoutubeSan
  class Url < YoutubeSan::Params
    def channel_url
      URI.parse(URI.escape(@youtube_api_url + channel_params))
    end

    def videos_url(options='')
      URI.parse(URI.escape(@youtube_api_url + videos_params + options))
    end
  
    def video_url(video_id)
      URI.parse(URI.escape(@youtube_api_url + video_params(video_id)))
    end

    def view_count_url(video_id)
      URI.parse(URI.escape(@youtube_api_url + view_count_params(video_id)))
    end
  end
end
