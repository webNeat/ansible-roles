# Requirements

- `install-nginx`
- `install-certbot-nginx` (if `with_cert` is `true`)

The site project should have the following scripts:
```
scripts/deploy      # Install dependencies and prepare the code for production use and restart the app if needed
scripts/cron        # Triggered every minute to do routine tasks (backup database, clean temp files, ...)
```
These scripts will be executed from the project root.

# Variables

- `site_name`: the site domain name like `test.loc`.
- `nginx_config_type`: One of `proxy`, `php-fpm`.
- `home_dir`: Something like `/home/webneat`.
- `site_port`: the port where the site is running like `3000` (only required when `php-fpm`).
- `with_cert`: a boolean indicating wether to generate the certificate.
- `admin_email`: Used to generate the letsencrypt certificate.
- `site_env_dir`: a path to the site env directory.
- `repo_url`: the site repository URL.
- `repo_branch`: the branch to deploy.
- `with_cron`: a boolean indicating wether to setup the `npm run cron` to run every minute.
