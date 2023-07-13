# Restable

Building a REST API — even with Rails — is tedious work. This project aims to eliminate all that tedious work by providing the generic boilerplate functionality that all APIs require so that you can start building out your custom business logic right away.

This project is highly inspired by ideas and concepts found in the [Stripe API](https://stripe.com/docs/api) and [Shopify API](https://shopify.dev/docs/api/admin-rest), and aims to allow you to build APIs of similar quality with as little work as possible.

## Building Blocks

Rather that lock you into using a custom DSL or particular architecture, RestEasy will expose opt-in functionality through concerns, helpers, etc. and suggest patterns for organizing your code. Think of RestEasy as a tiny framework for building REST APIs rather than a drop-in, pre-packaged solution.

### Planned Features

- Management of **API Secrets** & generating **secure** tokens
- **Authentication** with basic and bearer token
- Consistent **error handling**
- **JSON Serialization** of API resources using JBuilder
- **Versioning** encouraged through convention over configuration

### Potential Future Features

- **Pagination** with Kaminari
- **Webhook** delivery to **Endpoints**
- Generators for quickly scaffolding a new API resource
- RSpec helpers for testing your API
- Request logging
- Expanding responses
- Request IDs and logging
- Rate limiting
- Admin monitoring dashboard
- Documentation generator

## Usage

How to use my plugin.

## Installation

Add this line to your application's Gemfile:

```ruby
gem "restable"
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install restable
```

## Contributing

Contributions are welcome.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
