module Turnip
  module Execute
    def timer(&block)
      beginning_time = Time.now
      block.call
      return Time.now - beginning_time
    end

    def step_with_logging(description, *extra_args)
      Rails.logger.info("TURNIP: '#{description}'")
      seconds = timer { step_without_logging(description, *extra_args) }
      if seconds > 10 
        puts("    WARNING: #{description} took #{seconds} seconds")
      end
    end
    alias_method_chain :step, :logging
  end
end

