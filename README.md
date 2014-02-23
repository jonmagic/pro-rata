# ProRata

A Ruby gem for calculating pro rata billing amounts.

## Usage

If a customer already has a subscription with start and end dates an upgrade to their subscription needs to be prorated for the amount of time left in their subscription.

In this example the new service costs $5000 for 365 days so we need to calculate the amount to invoice the customer for a $5000 per 365 days upgrade.

```ruby
subscription_starts_at = Time.parse("2014-01-01 10:00:00 -0800")
subscription_ends_at = subscription_starts_at + 1.year

Time.now
=> 2014-02-22 19:56:44 -0800

ProRata.calculate :ends_at => subscription_ends_at,
                  :amount => $5000,
                  :days => 365

=> <ProRata::Result days=312.57781131157407 amount=4281.887826185946>
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
