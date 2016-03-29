class YoutubeSan
  class Params < YoutubeSan
    # https://developers.google.com/youtube/v3/docs/channels
    def channel_params
      method = 'channels'
      part = '?part=snippet'
      id = '&id=' + @channel_id
      api_key = '&key=' + @api_key
      method + part + id + api_key 
    end
 
    # https://developers.google.com/youtube/v3/docs/search/list 
    def videos_params
      method = 'search'
      part = '?part=snippet'
      max_result = '&maxResults=50'
      sort_param = '&order=date'
      query_type = '&type=video'
      channel = '&channelId=' + @channel_id
      api_key = '&key=' + @api_key
      method + part + channel + api_key + max_result + sort_param + query_type
    end
  
    # https://developers.google.com/youtube/v3/docs/videos/list
    def video_params(video_id)
      method = 'videos'
      part = '?part=snippet'
      id = '&id=' + video_id
      api_key = '&key=' + @api_key
      method + part + id + api_key
    end

    # https://developers.google.com/youtube/v3/docs/videos/list
    def view_count_params(video_id)
      method = 'videos'
      part = '?part=contentDetails,statistics'
      id = '&id=' + video_id
      api_key = '&key=' + @api_key
      method + part + id + api_key
    end

    def term_params(year)
      "&publishedAfter=#{year}-01-01t00:00:00z" + "&publishedBefore=#{year}-12-31t23:59:59z"
    end
  end
end
