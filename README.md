# spassword

TODO: Write a description here

## Installation

1. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     spassword:
       github: taufikmaulanaa/spassword
   ```

2. Run `shards install`

## Usage

```crystal
require "spassword"
```

Cara membuat password baru 
```crystal
Spassword.create("password")
```

Cara verifikasi password
```crystal
Spassword.verify("hashPassword","password")
```

## Development

TODO: Write development instructions here

## Contributing

1. Fork it (<https://github.com/taufikmaulanaa/spassword/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Taufik](https://github.com/taufikmaulanaa) - creator and maintainer
