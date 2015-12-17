Vostok
========

The Hashrocket Middleman template.

## Installation

Clone the repo into `.middleman` ...

```
git clone git@github.com:hashrocket/vostok.git ~/.middleman/vostok
```

... initialize a new project with it ...

```
middleman init your_project --template=vostok
cd your_project
```

... and bundle.

```
gem install bundler
bundle
```

## Deploying to S3

Vostok comes with S3 deployment ready to go:

1. Comment out the lines in `config.rb` related to `s3_sync` and specify your bucket
2. Add your credentials to `.s3_sync` using `.s3_sync.example` as a guide
3. `middleman build`
4. `middleman s3_sync`
