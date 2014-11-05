require 'noun-project-api/retriever'

module NounProjectApi
  class Icons < Retriever
    API_PATH = "/icons/"

    def find(term, limit = nil, offset = nil, page = nil)
      raise ArgumentError unless term

      search = term

      args = { "limit" => limit, "offset" => offset, "page" => page }.reject { |k, v| v.nil? }
      if args.size > 0
        search += '?'
        args.each { |k, v| search += "#{k}=#{v}&" }
      end

      result = self.access_token.get("#{API_BASE}#{API_PATH}#{search}")
      raise ArgumentError unless ['200', '404'].include? result.code

      if result.code == '200'
        JSON.parse(result.body)["icons"]
      else
        []
      end
    end

    def recent_uploads(limit = nil, offset = nil, page = nil)
      args = { "limit" => limit, "offset" => offset, "page" => page }.reject { |k, v| v.nil? }
      if args.size > 0
        search = '?'
        args.each { |k, v| search += "#{k}=#{v}&" }
      else
        search = ''
      end

      result = self.access_token.get("#{API_BASE}#{API_PATH}recent_uploads#{search}")
      raise ArgumentError unless result.code == '200'

      JSON.parse(result.body)["recent_uploads"]
    end
  end
end