omniauth-trello
===============

Trello OAuth strategy for OmniAuth 1.0

# OmniAuth Trello

This gem contains the Trello strategy for OmniAuth.

Trello uses the OAuth 1.0 flow, you can read about it here: https://trello.com/docs/gettingstarted/

## Installation

```
gem install liangzan_omniauth-trello
```

## Usage

``` ruby
use OmniAuth::Builder do
  provider :trello,
  ENV['TRELLO_KEY'],
  ENV['TRELLO_SECRET'],
  scope: 'read,write',
  app_name: 'YourApp',
  expiration: 'never'
end
```

If you don't set expiration, it defaults to __30days__. The only other workable option is __never__.
