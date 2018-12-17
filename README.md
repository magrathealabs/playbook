# MLabs Playbook

The [playbook](http://playbook.magrathealabs.com/) for MLabs.

## Contributing

We're using [mkdocs](http://mkdocs.org) to build our playbook.

Install dependencies with `pipenv install`.

* `pipenv run mkdocs serve` - Start the live-reloading docs server
* `pipenv run mkdocs build` - Build the documentation site
* `pipenv run mkdocs help` - Print this help message

See the [MkDocs](https://mkdocs.readthedocs.io) and [Theme Documentation](http://squidfunk.github.io/mkdocs-material).

## Deploy

You must have the aws command utility configured in your machine:

```sh
pipenv install
pipenv run aws configure
```

Build and deploy to s3 using the `deploy.sh` script:

```sh
./scripts/deploy.sh
```

## License

The documents in this repository are available under the terms of the [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/).

## About Magrathea Labs

`playbook` is maintained by Magrathea Labs. The names and logos for Magrathea Labs are trademarks of Magrathea Labs.

[Magrathea Labs](http://www.magrathealabs.com/) is a team of specialists in Software Engineering, Distributed Systems, Artificial Intelligence and Data Science. We love to solve challenging problems and build amazing things. [Want to do something amazing with us?](mailto:contact@magrathealabs.com)
