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
  provider :github, ENV['TRELLO_KEY'], ENV['TRELLO_SECRET'], scope: 'read,write', name: 'YourApp'
end
```
