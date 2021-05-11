# Requirements

- `install-nginx`
- `install-certbot-nginx` (if `with_cert` is `true`)

# Variables

- `site_name`: the site domain name like `test.loc`.
- `site_port`: the port where the site is running like `3000`.
- `with_cert`: a boolean indicating wether to generate the certificate.
- `admin_email`: Used to generate the letsencrypt certificate.
