# Requirements

- `install-nginx`
- `install-certbot-nginx` (if `with_cert` is `true`)

The `package.json` on the project should have the following scripts:
```
npm start       # Starts the application
npm stop        # Stops the application
npm run build   # Builds the source code
npm run cron    # Triggered every minute to do routine tasks (backup database, clean temp files, ...)
```

# Variables

- `site_name`: the site domain name like `test.loc`.
- `site_port`: the port where the site is running like `3000`.
- `with_cert`: a boolean indicating wether to generate the certificate.
- `admin_email`: Used to generate the letsencrypt certificate.
- `site_env_dir`: a path to the site env directory.
- `repo_url`: the site repository URL.
- `repo_branch`: the branch to deploy.
- `with_cron`: a boolean indicating wether to setup the `npm run cron` to run every minute.
