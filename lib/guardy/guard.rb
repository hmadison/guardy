module Guardy
  # Guard object,
  # @see .call
  class Guard
    class << self
      # @param conditionals [Boolean] list of conditionals to check
      # @yield Block to run if any conditions are false
      def call(*conditionals)
        yield if conditionals.include?(false)
      end
    end
  end
end
