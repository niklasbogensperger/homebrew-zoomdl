# homebrew-zoomdl (archived)

## THIS FORMULA REPO IS ARCHIVED DUE TO ARCHIVAL OF TARGET REPO

To install [zoomdl](https://github.com/niklasbogensperger/zoomdl) using Homebrew:

```shell
brew tap niklasbogensperger/zoomdl
brew install zoomdl
```



## Other methods

Using python to create a self-contained binary (see [zoomdl](https://github.com/niklasbogensperger/zoomdl) repo):

```shell
./devscripts.sh build
```

Alternatively, to create that binary and directly install it to `/usr/local/bin/`:

```shell
./devscripts.sh install
```

Using python to create a wheel to be installed via `pip`:

```shell
python3 ./setup.py sdist bdist_wheel
pip3 install ./dist/<path to .whl>
```

