# Troubleshooting

## Playbook
If you run `pip install -r requirements.txt` and you project keeps breaking on `mkdocs serve` or `mkdocs build`, try running `mkdocs` with `sudo`.


## Postgres

### Not Connecting

If you installed Postgres from `apt-get` and did not touched postgres configs, you may have some connection problems.

For avoiding this troubles:
- Fix your `pg_hba` on trust/md5 permission directives.
- If you prefer to use `ident` on permission directives, be sure of setting right user system permission.