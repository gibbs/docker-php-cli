# Docker PHP CLI

![Docker](https://github.com/Gibbs/docker-php-cli/actions/workflows/build.yml/badge.svg)

A minimal general purpose PHP CLI Docker image (with Composer added).

## Versions

| Release | PHP Version | Tag              |
|---------|-------------|------------------|
| Stretch | 5.6         | genv/php-cli:5.6 |
| Stretch | 7.0         | genv/php-cli:7.0 |
| Stretch | 7.1         | genv/php-cli:7.1 |
| Stretch | 7.2         | genv/php-cli:7.2 |
| Buster  | 7.3         | genv/php-cli:7.3 |
| Buster  | 7.4         | genv/php-cli:7.4 |
| Buster  | 8.0         | genv/php-cli:8.0 |
| Buster  | 8.1         | genv/php-cli:8.1 |
| Buster  | 8.2         | genv/php-cli:8.2 |
| Bookworm | 8.3         | genv/php-cli:8.3 |
| Bookworm | 8.4         | genv/php-cli:8.4 |

## Example Usage

Get the CLI version

```bash
docker run genv/php-cli:5.6 --version
```

Get the CLI PHP modules available

```bash
docker run genv/php-cli:7.0 -m
```

Get the Composer version

```bash
docker run --entrypoint composer genv/php-cli:7.3 --version
```

As composer is written in PHP you can alternatively run it directly:

```bash
docker run genv/php-cli:7.3 /usr/local/bin/composer --version
```

Install PHPUnit

```bash
docker run -v "$(pwd):/data/" --entrypoint composer genv/php-cli:5.6 require phpunit/phpunit
```

## Build

Local build:

```bash
make build
```

## Test

Local builds can be tested with:

```bash
make test
```
