# IceWhale-OpenAPI

This Git repository is all IceWhale's OpenAPI Documentation. including:
- [CasaOS](https://github.com/IceWhaleTech/CasaOS)
- [ZimaOS](https://github.com/IceWhaleTech/ZimaOS)

API V2 is our latest API, but it not contain all API. some operation is in V1 yet.

# ZimaOS OpenAPI Live Preview
- [ZimaOS API V2](https://editor.swagger.io/?url=https://raw.githubusercontent.com/IceWhaleTech/IceWhale-OpenAPI/main/zimaos/zimaos/openapi.yaml): Miscellaneous APIs, GPU, Remote Access, etc.
- [ZimaOS API V1](https://editor.swagger.io/?url=https://raw.githubusercontent.com/IceWhaleTech/IceWhale-OpenAPI/main/zimaos/zimaos/openapi_v1.yaml): Miscellaneous APIs, System APIs
- [ZimaOS Local Storage API](https://editor.swagger.io/?url=https://raw.githubusercontent.com/IceWhaleTech/IceWhale-OpenAPI/main/zimaos-local-storage/local_storage/openapi.yaml): Disk and RAID, etc. APIs
- [ZimaOS Local Storage API V1](https://editor.swagger.io/?url=https://raw.githubusercontent.com/IceWhaleTech/IceWhale-OpenAPI/main/zimaos-local-storage/local_storage/openapi_v1.yaml): USB Mount about APIs.
- [APP Management API V2](https://editor.swagger.io/?url=https://raw.githubusercontent.com/IceWhaleTech/IceWhale-OpenAPI/main/zimaos-app-management/app_management/openapi.yaml): App and AppStore APIs: Docker Compose and App Store
- [APP Management API V1](https://editor.swagger.io/?url=https://raw.githubusercontent.com/IceWhaleTech/IceWhale-OpenAPI/main/zimaos-app-management/app_management/openapi_v1.yaml): App and AppStore APIs: Docker Container(Deprecated)
- [User API V2](https://editor.swagger.io/?url=https://raw.githubusercontent.com/IceWhaleTech/IceWhale-OpenAPI/main/zimaos-user-service/users/openapi.yaml): User APIs: Samba, etc.
- [User API V1](https://editor.swagger.io/?url=https://raw.githubusercontent.com/IceWhaleTech/IceWhale-OpenAPI/main/zimaos-user-service/users/openapi_v1.yaml): User APIs: Login, Register, etc.
- [ZimaOS File API](https://editor.swagger.io/?url=https://raw.githubusercontent.com/IceWhaleTech/IceWhale-OpenAPI/main/icewhale-files/openapi.yaml): File APIs
- [Installer API](https://editor.swagger.io/?url=https://raw.githubusercontent.com/IceWhaleTech/IceWhale-OpenAPI/main/casaos-installer/installer/openapi.yaml): OTA APIs
- [Mod Management API](https://editor.swagger.io/?url=https://raw.githubusercontent.com/IceWhaleTech/IceWhale-OpenAPI/main/zimaos-mod-management/mod_management/openapi.yaml): Mod APIs
- [ZVM(Virtual Machine) API](https://editor.swagger.io/?url=https://raw.githubusercontent.com/IceWhaleTech/IceWhale-OpenAPI/main/zimaos-virt-management/virt_management/openapi.yaml): Virtual Machine APIs
- [Message Bus API](https://editor.swagger.io/?url=https://raw.githubusercontent.com/IceWhaleTech/IceWhale-OpenAPI/main/casaos-message-bus/message_bus/openapi.yaml): Message Bus APIs

# CasaOS OpenAPI Live Preview
- [CasaOS API](https://editor.swagger.io/?url=https://raw.githubusercontent.com/IceWhaleTech/IceWhale-OpenAPI/main/casaos/casaos/openapi.yaml): Miscellaneous APIs and File APIs
- [APP Management API V2](https://editor.swagger.io/?url=https://raw.githubusercontent.com/IceWhaleTech/IceWhale-OpenAPI/main/casaos-app-management/app_management/openapi.yaml): App and AppStore APIs
- [APP Management API V1](https://editor.swagger.io/?url=https://raw.githubusercontent.com/IceWhaleTech/IceWhale-OpenAPI/main/casaos-app-management/app_management/openapi_v1.yaml): App and AppStore APIs
- [User API](https://editor.swagger.io/?url=https://raw.githubusercontent.com/IceWhaleTech/IceWhale-OpenAPI/main/casaos-user-service/users/openapi.yaml): User APIs
- [Message Bus API](https://editor.swagger.io/?url=https://raw.githubusercontent.com/IceWhaleTech/IceWhale-OpenAPI/main/casaos-message-bus/message_bus/openapi.yaml): Message Bus APIs

# How to use
## Use in Javascript/Typescript
you can find npm package in [npmjs.com](https://www.npmjs.com/settings/icewhale/packages)
such as:
```
npm install @icewhale/zimaos-localstorage-openapi
```

```typescript
import { StorageMethodsApi } from '@icewhale/zimaos-localstorage-openapi'
...
export const storageApi = new StorageMethodsApi(configuration, '/v2/local_storage', axios)
...
storageApi.getDisk()
```

## Golang
you can use the openapi.yaml file to generate the API code.

such as, add the following code to the header of your `main.go` file
```go
//go:generate bash -c "mkdir -p codegen/local_storage && go run github.com/deepmap/oapi-codegen/cmd/oapi-codegen@v1.12.4 -generate types,client -package local_stroage https://raw.githubusercontent.com/IceWhaleTech/IceWhale-OpenAPI/main/zimaos-local-storage/local_storage/openapi.yaml > codegen/local_storage/api.go"
```

then run the following command to generate the API code.
```go
go generate
```

## Other Language
you can use the openapi.yaml file to generate the API code.

# Contributing
the repo is mirror of OpenAPI of IceWhale's project. if you want to modify the API, please go to the project's repo to modify.

# License
MIT

# Contact
Feel free to contact us by Issue.