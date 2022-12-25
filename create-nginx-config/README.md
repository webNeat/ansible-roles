# Requirements

- `install-nginx`
- `install-certbot-nginx` (if `with_cert` is `true`)
- `install-php` with `php8.0-fpm` in extensions (if `type` is `php-fpm`)

# Variables

- `site_name`: the site domain name like `test.loc`.
- `nginx_config_type`: One of `proxy`, `php-fpm`.
- `home_dir`: Something like `/home/webneat`.
- `site_port` (if proxy): the port where the site is running like `3000`.
- `with_cert`: a boolean indicating wether to generate the certificate.
- `admin_email`: Used to generate the letsencrypt certificate.
