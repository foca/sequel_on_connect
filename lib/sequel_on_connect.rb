module Sequel
  class << self
    alias_method :connect_without_callbacks, :connect

    # Connect to a database (see <tt>Sequel.connect</tt>), and run any
    # <tt>on_connect</tt> callbacks specified.
    def connect(*args, &block)
      connect_without_callbacks(*args, &block)
      run_on_connect_callbacks
    end

    # Add a callback to be run after a database connection is established.
    def on_connect(&block)
      on_connect_callbacks << block
    end

    private

      def on_connect_callbacks #:nodoc:
        @on_connect_callbacks ||= []
      end

      def run_on_connect_callbacks #:nodoc:
        on_connect_callbacks.each {|cb| cb.call }
      end
  end
end
