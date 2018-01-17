module Sidekiq
  class Limiter

    # dummy class
    class NoThrottle
      def within_limit
        yield
      end
    end

    def self.window(a,b,c)
      NoThrottle.new
    end
  end
end