require "spec_helper"

describe ProRata do
  describe "VERSION" do
    it "returns version" do
      assert_equal "0.0.1", ProRata::VERSION
    end
  end

  describe "#calculate" do
    it "returns expected value for README example" do
      ends_at  = Time.parse("2015-01-01 10:00:00 -0800")
      time_now = Time.parse("2014-02-22 19:56:44 -0800")

      Timecop.freeze(time_now) do
        assert_equal Money.new(4279_30), ProRata.calculate({
          :ends_at => ends_at,
          :amount_in_cents => 5000_00
        })
      end
    end
  end
end
