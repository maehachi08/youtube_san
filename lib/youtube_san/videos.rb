class YoutubeSan
  class Videos < YoutubeSan::Request
    def get_by_year(year="#{Date.today.year}")
      struct_videos(videos(term_params(year)),term_params(year))
    end

    def get_by_latest
      struct_videos(videos)
    end

    def videos(options='')
      videos_request(options)
    end

    def struct_videos(_videos=[],options='')
      videos = {}
      next_token = ''
  
      while _videos
        _videos['items'].each do |video|
          videos.merge!(struct_video(video))
        end

	next_token = _videos['nextPageToken']
        if next_token.nil?
	  break
	else
          _videos = videos("&pageToken=#{next_token}#{options}")
	end
      end
  
      videos
    end

    def struct_video(video)
      video_snippet = {}
      video_snippet['id']          = video_id = video['id']['videoId']
      video_snippet['url']         = "https://www.youtube.com/watch?v=#{video_id}"
      video_snippet['thumbnail']   = thumbnail_url(video_request(video_id))
      video_snippet['view_counts'] = view_count(video_id)
      video_snippet['title']       = video['snippet']['title']
      video_snippet['published']   = video['snippet']['publishedAt']
      { video_id => video_snippet }
    end

    def view_count(video_id)
      view_count_request(video_id)['items'].first['statistics']['viewCount'].chomp
    end

    def thumbnail_url(video)
      thumbnails = video['items'].first['snippet']['thumbnails']

      if thumbnails['maxres']
        return thumbnails['maxres']['url'].chomp
      else
        return thumbnails['high']['url'].chomp
      end
    end
  end
end
