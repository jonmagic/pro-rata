# ProRata

A Ruby gem for calculating pro rata billing amounts.

## Usage

If a customer already has a subscription with start and end dates an upgrade to their subscription needs to be prorated for the amount of time left in their subscription.

In this example the new service costs $5000 for 1 year so we need to calculate the amount to invoice the customer prorated to when their existing subscription ends.

```ruby
ends_at  = Time.parse("2015-01-01 10:00:00 -0800")
time_now = Time.parse("2014-02-22 19:56:44 -0800")

Timecop.freeze(time_now) do
  assert_equal Money.new(4279_30), ProRata.calculate({
    :ends_at => ends_at,
    :amount_in_cents => 5000_00
  })
end
```

## Running Specs

For continous integration use [guard](https://github.com/guard/guard):

```bash
bundle exec guard
```

To run the spec suite once use [rake](https://github.com/jimweirich/rake):

```bash
bundle exec rake
```
