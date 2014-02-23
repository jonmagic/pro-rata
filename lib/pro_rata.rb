require "money"

module ProRata
  VERSION = "0.0.1"

  def self.calculate options
    per_day = Money.new(options[:amount_in_cents]) / 365.25
    days = (options[:ends_at] - Time.now) / (60 * 60 * 24)
    per_day * days
  end
end
