# `Makefile-scripts`

Generate and maintain a `Makefile` based on scripts in `package.json`.

## Usage

Install in your project and copy your scripts from `package.json` into `Makefile`:

```shell
curl https://raw.githubusercontent.com/lgarron/Makefile-scripts/master/Makefile > Makefile
make first-run
```

Now, you can run:

```shell
make build # invokes `npm run build`
```

### Updating `Makefile`

If you add/remove/rename scripts in `package.json`, then run:

```shell
make update-Makefile
```

This is necessary because the script names from `package.json` are serialized into the `Makefile` to help shell autocompletion.

#### Dynamic Makefile

If you don't want to have to update your `Makefile` when you edit your set of scripts, copy [`dynamic.Makefile`](./dynamic.Makefile) instead. Your commands will be a tad slower and shell autocompletion might not work, but the functionality should be the same.

## Why?

I work on projects in a lot of different languages. I always include a `Makefile` because:

1) `make` is available on every platform I might use.
2) It works well enough for [my use cases](https://github.com/lgarron/Makefile-convention).
3) The syntax and semantics are likely to be stable long into the future.

`Makefile-scripts` allows me to use modern Javascript "best practices" by writing project scripts in `package.json`, but still run `make` without having to think about the context switch when I move between repositories in different languages.

## Limitations

If you give your scripts names containing unusual characters (e.g. other than `[A-Za-z0-9-_]`), this might break the `Makefile`.
