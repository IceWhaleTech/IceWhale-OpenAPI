# IceWhale-OpenAPI

Include this Git repository as a submodule in any private `IceWhale-*` repository:

```shell
git submodule add https://github.com/IceWhaleTech/IceWhale-OpenAPI.git api
```

If you already have a local `api` folder for OpenAPI, then remove it before adding the submodule:

```shell
git rm --cached api -r
```

This design ensures `IceWhale-*` repositories kept private, while still be able to share common APIs and models with others.
