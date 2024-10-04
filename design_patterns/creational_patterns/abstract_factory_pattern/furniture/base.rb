# frozen_string_literal: true

module Furniture
  # This class represents the furniture base class
  class Base
    def name
      raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
    end

    def category
      raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
    end

    def manufacturer
      raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
    end

    def material
      raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
    end

    def price
      raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
    end
  end
end
