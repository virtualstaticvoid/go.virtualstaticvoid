# GO Package Redirection

This project uses GitHub Pages to serve up redirects for my go project imports.

See the [remote import paths][remote_import_paths] documentation for how this works.

## Usage

Use `import "go.virtualstaticvoid.com/<package_name>"` in your code and
the corresponding `<package_name>` will resolve to a GitHub repository of the same name.

This works with `go get go.virtualstaticvoid.com/<package_name>` too.

## Adding Packages

Add a new package name to the [packages](packages) file and run `make build`.

A page for each package listed will be generated.

## License

MIT License. Copyright (c) 2020 Chris Stefano. See [LICENSE](LICENSE) for details.

<!-- link -->
[remote_import_paths]: https://golang.org/cmd/go/#hdr-Remote_import_paths
