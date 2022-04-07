# Integration

Data Persistence Layer.

The data is persisted on a [CockroackDB](https://www.cockroachlabs.com/) database.

The connectionstring can be edited in the settings file `common.json`

All the libraries use the `dao-helper` library that persists the collections using the *Singleton* design pattern.