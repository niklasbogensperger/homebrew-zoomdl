# homebrew-zoomdl

To install [zoomdl](https://github.com/niklasbogensperger/zoomdl) using Homebrew:

```shell
brew tap niklasbogensperger/zoomdl
brew install zoomdl
```



## Other methods

Using python to create a self-contained binary:

```shell
./devscripts.sh build
./devscripts.sh install
```

Using python to create a wheel to be installed via pip:

```shell
python3 setup.py sdist bdist_wheel
pip3 install ./dist/<path to .whl>
```

