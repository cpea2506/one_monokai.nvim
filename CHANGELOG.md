# Changelog

## [1.2.0](https://github.com/cpea2506/one_monokai.nvim/compare/v1.1.0...v1.2.0) (2023-04-17)


### Features

* add support for `nvim-ts-rainbow2` ([#40](https://github.com/cpea2506/one_monokai.nvim/issues/40)) ([eece553](https://github.com/cpea2506/one_monokai.nvim/commit/eece55368da1fb35d85e26ed091aa42432d4273d))
* **lsp:** add more semantic token groups ([#43](https://github.com/cpea2506/one_monokai.nvim/issues/43)) ([1a2cd98](https://github.com/cpea2506/one_monokai.nvim/commit/1a2cd98c9766def65105444a4a9db08c8cce44b9))
* **lsp:** use new semantic token modifiers ([#42](https://github.com/cpea2506/one_monokai.nvim/issues/42)) ([a4b5a2c](https://github.com/cpea2506/one_monokai.nvim/commit/a4b5a2c31969b3f093dae6100ebbd0db047565f2))
* **sem-tokens:** add `class`, `operator`, `property`, `string` ([#46](https://github.com/cpea2506/one_monokai.nvim/issues/46)) ([4c66158](https://github.com/cpea2506/one_monokai.nvim/commit/4c66158b687c14d5eb500eebe3e55605471b1f00))
* **semantic-tokens:** add `enum` types ([#50](https://github.com/cpea2506/one_monokai.nvim/issues/50)) ([d6e1bec](https://github.com/cpea2506/one_monokai.nvim/commit/d6e1beca6de5dbcd07bae850734b819cef019930))
* **semantic-tokens:** add `struct` type ([#48](https://github.com/cpea2506/one_monokai.nvim/issues/48)) ([97f17f5](https://github.com/cpea2506/one_monokai.nvim/commit/97f17f5beff1734f13d043fe442d9192a5d64a36))
* **semantic-tokens:** treat `documentation` keyword as constant ([#49](https://github.com/cpea2506/one_monokai.nvim/issues/49)) ([057fc34](https://github.com/cpea2506/one_monokai.nvim/commit/057fc3488a3be1a978315c746ee2ed94592fef84))

## [1.1.0](https://github.com/cpea2506/one_monokai.nvim/compare/v1.0.0...v1.1.0) (2023-02-08)


### Features

* **checkhealth:** update checkhealth's colors ([#36](https://github.com/cpea2506/one_monokai.nvim/issues/36)) ([2789499](https://github.com/cpea2506/one_monokai.nvim/commit/27894999b25423ab341a6de5b5c445bce7e6d949))

## 1.0.0 (2023-01-14)


### ⚠ BREAKING CHANGES

* **config:** remove confusing option `use_cmd` ([#21](https://github.com/cpea2506/one_monokai.nvim/issues/21))
* **treesitter:** use new highlight groups style ([#18](https://github.com/cpea2506/one_monokai.nvim/issues/18))
* cleanup, more plugin support and bump neovim version to 0.8
* ready to bump neovim version to 0.8
* **config:** add option to set colorscheme on setup, minimum neovim still 0.7
* **themes:** use core colors for treesitter rainbow
* use new vim.cmd in neovim 0.8
* **highlight:** replace completely default group with user's one

### Features

* add minimum requirements test ([#11](https://github.com/cpea2506/one_monokai.nvim/issues/11)) ([a4e91de](https://github.com/cpea2506/one_monokai.nvim/commit/a4e91def9297ba726500d076f0aae14e75d205e0))
* add support for `lazy.nvim` ([#28](https://github.com/cpea2506/one_monokai.nvim/issues/28)) ([341fb53](https://github.com/cpea2506/one_monokai.nvim/commit/341fb53a81af61889a1417d3ebe6769764510e12))
* add support for `lualine` ([8521c04](https://github.com/cpea2506/one_monokai.nvim/commit/8521c04bb5ace89ce655320d88fa452240f1a6c9))
* add support for native lsp semantic token ([#25](https://github.com/cpea2506/one_monokai.nvim/issues/25)) ([80f5675](https://github.com/cpea2506/one_monokai.nvim/commit/80f5675b518befff0ecca4bc2be2087155e78314))
* add tests and ci ([#10](https://github.com/cpea2506/one_monokai.nvim/issues/10)) ([8e7ab97](https://github.com/cpea2506/one_monokai.nvim/commit/8e7ab97afa4169bf6146bf345938dd980618a970))
* **config:** add option to set colorscheme on setup, minimum neovim still 0.7 ([9079a9c](https://github.com/cpea2506/one_monokai.nvim/commit/9079a9c4eaf6229a2c93f1cf882bb725546ffc24))
* **highlight:** add document and extend function ([128c2aa](https://github.com/cpea2506/one_monokai.nvim/commit/128c2aa06804c2ec2a7bae377aa0002d6f681aa8))
* **highlight:** replace completely default group with user's one ([c65e6a6](https://github.com/cpea2506/one_monokai.nvim/commit/c65e6a6faf47f8d743f601a02e237d8f431f5998))
* **themes:** add all highlight groups for treesitter ([93c866f](https://github.com/cpea2506/one_monokai.nvim/commit/93c866fc21e20082e3bf9c9752189e7a55736450))
* **themes:** add highlight for bufferline ([93a0a49](https://github.com/cpea2506/one_monokai.nvim/commit/93a0a491e8ef6270d26260f842f742566b91c0f6))
* **themes:** add highlight for mason plugin ([c6a4c40](https://github.com/cpea2506/one_monokai.nvim/commit/c6a4c409b6154a9b5c0c9888c81d0daab3f0a7ad))
* **themes:** add highlight for nvim-lspconfig info ([effc75b](https://github.com/cpea2506/one_monokai.nvim/commit/effc75b63b415b8ca5bc328aba33eae279bb12f3))
* **themes:** add highlight for semantic token ([eca4efe](https://github.com/cpea2506/one_monokai.nvim/commit/eca4efef8af39472e1d3735b397ed1dee2c63b6e))
* **themes:** add highlight for telescope ([2b718ea](https://github.com/cpea2506/one_monokai.nvim/commit/2b718ea4014f57de2f7bd89eea7795c175accb32))
* **themes:** add nvim-navic and leap highlight groups ([6a75004](https://github.com/cpea2506/one_monokai.nvim/commit/6a7500458649eaaee372d532fe52179556db8723))
* **themes:** add support for sj.nvim ([f42a54c](https://github.com/cpea2506/one_monokai.nvim/commit/f42a54c74ed86c6967c968f5fff644de3a04cf83))
* **themes:** add support for vim-illuminate ([85bf2ce](https://github.com/cpea2506/one_monokai.nvim/commit/85bf2ce9bbfba9ed756b2c0ffa69462d0c0fc238))
* **themes:** make telescope counter more visible ([1a6c380](https://github.com/cpea2506/one_monokai.nvim/commit/1a6c38059e28e892198616e348c4391893303de4))
* **themes:** more highlight for diff and diagnostics ([7483875](https://github.com/cpea2506/one_monokai.nvim/commit/74838755bef0e4996e464db0ec088a1a99297021))
* **themes:** more highlight for nvimtree ([234ac02](https://github.com/cpea2506/one_monokai.nvim/commit/234ac02077cf08834eb0c505981cb1bdb7a2f933))
* **themes:** update nvim-cmp highlight ([dad06d7](https://github.com/cpea2506/one_monokai.nvim/commit/dad06d7fdbf2037bee703622e0fce734e7b74ee7))
* **treesitter:** use new highlight groups style ([#18](https://github.com/cpea2506/one_monokai.nvim/issues/18)) ([0fe8f68](https://github.com/cpea2506/one_monokai.nvim/commit/0fe8f68a757d24bbb54eb7a980af9e9c00c40ffd))


### Bug Fixes

* **ci:** resolve stylua checking error ([b49db8d](https://github.com/cpea2506/one_monokai.nvim/commit/b49db8d5b783f1dd2386ce0b1689be09152b750f))
* guibg, guifg and style must be None if there is no value provided ([fe770b5](https://github.com/cpea2506/one_monokai.nvim/commit/fe770b509fc8879021b0ff16a667bbb60a81b99a))
* **highlight:** create new instance each time `new` is called ([9a9540c](https://github.com/cpea2506/one_monokai.nvim/commit/9a9540c8047b60dc2e6440d367a9c468f5e84dcd))
* **lualine:** make text in normal and inactive sections more readable ([#13](https://github.com/cpea2506/one_monokai.nvim/issues/13)) ([8d20a4a](https://github.com/cpea2506/one_monokai.nvim/commit/8d20a4a617febed5f67fa155523c8ebb894f2cd4))
* selene doesn't recognize builtin boolean function ([#15](https://github.com/cpea2506/one_monokai.nvim/issues/15)) ([60fb311](https://github.com/cpea2506/one_monokai.nvim/commit/60fb3111595e64ebaea67c81d262f7386d4a6679))
* **semantic-token:** link to new treesitter hl style ([#19](https://github.com/cpea2506/one_monokai.nvim/issues/19)) ([4177479](https://github.com/cpea2506/one_monokai.nvim/commit/4177479dcac335c13c198e607c9ec0886bd61305))
* **test:** enable use_cmd ([f16c64f](https://github.com/cpea2506/one_monokai.nvim/commit/f16c64ffaa8bd9b498ec2645eb61474dbcafc357))
* **themes:** load correctly with user colors ([bcad5d8](https://github.com/cpea2506/one_monokai.nvim/commit/bcad5d814dfd9076c3b78da8ca1caf9bcafdae36))
* **themes:** TSURI should better have underline ([1aa0369](https://github.com/cpea2506/one_monokai.nvim/commit/1aa03691edfeea54f3a2b36a18dfd8db4008effe))


### Performance Improvements

* **themes:** index user themes once ([237f77d](https://github.com/cpea2506/one_monokai.nvim/commit/237f77de5ad1fc23ccd06a6a5e649329ef27872f))


### Code Refactoring

* cleanup, more plugin support and bump neovim version to 0.8 ([a4b2492](https://github.com/cpea2506/one_monokai.nvim/commit/a4b24921d35b50da769020598a0238bb199d891a))
* **config:** remove confusing option `use_cmd` ([#21](https://github.com/cpea2506/one_monokai.nvim/issues/21)) ([aff8632](https://github.com/cpea2506/one_monokai.nvim/commit/aff86323a923b3b80f1045a6f2c38b6ef0005c03))
* ready to bump neovim version to 0.8 ([19bfc3f](https://github.com/cpea2506/one_monokai.nvim/commit/19bfc3f7c109ae44f7ad24f7943c790bc4e8730e))
* **themes:** use core colors for treesitter rainbow ([7dfefc8](https://github.com/cpea2506/one_monokai.nvim/commit/7dfefc8f2ffa9512532d51dd31683f8e13c4af34))
* use new vim.cmd in neovim 0.8 ([280bba5](https://github.com/cpea2506/one_monokai.nvim/commit/280bba5984d23602aea0f4c2acd68fb62af26416))
