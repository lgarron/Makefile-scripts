# `Makefile-scripts`

Generate and maintain a `Makefile` based on scripts in `package.json`.

## Usage

Install in your project and copy your scripts from `package.json` into `Makefile`:

```shell
curl https://raw.githubusercontent.com/lgarron/Makefile-scripts/master/Makefile > Makefile
make
```

Now, you can run:

```shell
make build # invokes `npm run build`
```

If you change the scripts in `package.json`, then run:

```shell
make update-Makefile
```

This is necessary because the script names from `package.json` are serialized into the `Makefile` to help shell autocompletion.

## Why?

I work on projects in a lot of different languages. I always include a `Makefile` because:

1) `make` is available on every platform I might use.
2) It works well enough for my use cases.
3) The syntax and semantics are likely to be stable long into the future.

## Limitations

If you give your scripts names containing unusual characters (e.g. other than `[A-Za-z0-9-_]`), this might break the `Makefile`.
