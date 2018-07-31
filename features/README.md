```ruby
client = HyperClient.new('https://codedata.slsag.ch/api')

client.codes_professions == client._links['codes_professions']
```