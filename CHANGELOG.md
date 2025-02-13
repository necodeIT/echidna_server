# Changelog

All notable changes to this project will be documented in this file. See [commit-and-tag-version](https://github.com/absolute-version/commit-and-tag-version) for commit guidelines.

## [1.1.2](https://github.com/necodeIT/echidna_server/compare/v1.1.1...v1.1.2) (2025-02-13)


### Bug Fixes

* resolve cors error with sign header ([661298b](https://github.com/necodeIT/echidna_server/commit/661298bee641e1978fe7151302d8f9a73f50d6a6))

## [1.1.1](https://github.com/necodeIT/echidna_server/compare/v1.1.0...v1.1.1) (2025-02-12)


### Bug Fixes

* change verify call method to post ([bb17a4b](https://github.com/necodeIT/echidna_server/commit/bb17a4b7881c0ae277d46e540303a3c38e98f9fc))
* make verify endpoint working ([057ba4a](https://github.com/necodeIT/echidna_server/commit/057ba4af76663da897ace1fb0baf7d96e776d88e))

## 1.1.0 (2025-01-07)


### Features

* add CI workflow for building and pushing Docker images ([ac2dd4e](https://github.com/necodeIT/echidna_server/commit/ac2dd4e053b36a81a92e8c3d4273bb66c618eada))
* add docker file ([e67eed4](https://github.com/necodeIT/echidna_server/commit/e67eed442609fbe07956fc165d16818ab7325523))
* add feature and payment handlers ([2209d15](https://github.com/necodeIT/echidna_server/commit/2209d15ce228fa4c82b4612a6ddb80227ebce25a))
* add logging for client connection and disconnection in LogsResource ([e0e92fa](https://github.com/necodeIT/echidna_server/commit/e0e92fa659aa5e76e6129e1a4724ba57ff83fcc7))
* add logs endpoint ([cfe0951](https://github.com/necodeIT/echidna_server/commit/cfe0951a73a5aa533d4ef611cbeb58421e868201))
* add route guard ([2de1e7f](https://github.com/necodeIT/echidna_server/commit/2de1e7fe04561fbc82e5db9e60b328d6c285834b))
* finalize license status api ([8998f4a](https://github.com/necodeIT/echidna_server/commit/8998f4a643bf3a32465e6a2500a6efd64ba023ff))
* implement admin handlers ([688e162](https://github.com/necodeIT/echidna_server/commit/688e162bae36dc35ee96bd0200118aab05221143))
* implement authentication ([6167877](https://github.com/necodeIT/echidna_server/commit/61678778ca3a98a646e234d96f54497e1f33cc1d))
* scetched out architecture ([77f0cfd](https://github.com/necodeIT/echidna_server/commit/77f0cfdd5dd2291e95aa242040c8752d57f69a95))
* update OIDC configuration and enhance client key handling ([93116f4](https://github.com/necodeIT/echidna_server/commit/93116f4533ee724e8b73aa762da198d0b5b3bf4b))


### Bug Fixes

* add cors and enforce contentype of application/json ([796c1be](https://github.com/necodeIT/echidna_server/commit/796c1bed9e00287db09ca8c30ddb524b1e318486))
* add customer and product checks ([a70c108](https://github.com/necodeIT/echidna_server/commit/a70c10865de393359f59c7bddee5d5f5c17a90a1))
* adjust license activation logic ([91d8928](https://github.com/necodeIT/echidna_server/commit/91d8928426e8774da1667c826909137e5dcfddcb))
* default debug mode to true for unit testing ([84127be](https://github.com/necodeIT/echidna_server/commit/84127beb71582b2ba4a18081ffbe3fe82549e2be))
* ensure responses are always json ([f30010e](https://github.com/necodeIT/echidna_server/commit/f30010e2268bc7dd9227075c24f1b3290f6f3ecf))
* export create_license_handler ([64fc854](https://github.com/necodeIT/echidna_server/commit/64fc8544325cec80604f1fde1bd83d81bf7117ac))
* read args from body instead of query parameters ([a434905](https://github.com/necodeIT/echidna_server/commit/a4349050ac7f5855745d8a00c92f6a1c6054a7a1))
* remove context path from Docker build configuration ([54d0bf3](https://github.com/necodeIT/echidna_server/commit/54d0bf3e6ba8ccdcfb21a23a2a292c77b41068ce))
* set debug to true by default for testing ([8218520](https://github.com/necodeIT/echidna_server/commit/82185207a382f57044e7dd5e47eddcf688590bef))
* solve Error: Undefined name 'debugLogHandler'. ([bb331b8](https://github.com/necodeIT/echidna_server/commit/bb331b8ec8517f5b6a37ba77c806c83210e0e02e))
* use sudo for deleting .dev ([82bf582](https://github.com/necodeIT/echidna_server/commit/82bf582e4610c92455912028317a393fcc9910ad))
* wait for shutdown signal before disconnecting prisma ([9d1df08](https://github.com/necodeIT/echidna_server/commit/9d1df08f02becac3beaac79ca37e2d3581b3d3bb)), closes [#7](https://github.com/necodeIT/echidna_server/issues/7)
