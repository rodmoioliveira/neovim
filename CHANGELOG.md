# Changelog

All notable changes to this project will be documented in this file.

## [0.6.0](https://github.com/rodmoioliveira/neovim/compare/0.5.0...0.6.0) - 2025-01-18

[81a908d](https://github.com/rodmoioliveira/neovim/commit/81a908d4d1421f96d397485022513b4153f6a61c)...[b32fd43](https://github.com/rodmoioliveira/neovim/commit/b32fd43bf3deb2b22e2d76251a7d4cb747c36c3c)

### Bug Fixes

- [6044593](https://github.com/rodmoioliveira/neovim/commit/60445934b25703fab6255fa937b0be7f1c34ae13) - Fix: Add LC_ALL=C to sort

### CI

- [e6914e3](https://github.com/rodmoioliveira/neovim/commit/e6914e32a613fad6fb895e0053a4040f88a35fa8) - Ci: Update help recipe in Makefile
- [b32fd43](https://github.com/rodmoioliveira/neovim/commit/b32fd43bf3deb2b22e2d76251a7d4cb747c36c3c) - Ci: Add dprint step

### Miscellaneous Tasks

- [9e3c25c](https://github.com/rodmoioliveira/neovim/commit/9e3c25c0cb3b4dc0c06c10f79c7d35c810145139) - Chore: Update spell
- [93c2997](https://github.com/rodmoioliveira/neovim/commit/93c299765475601f4ab6f0a0134faef172903be1) - Chore: Update blink.cmp

## [0.5.0](https://github.com/rodmoioliveira/neovim/compare/0.4.1...0.5.0) - 2025-01-02

[cd1e596](https://github.com/rodmoioliveira/neovim/commit/cd1e59640b70a1d80948b272a2a7ddc4704bac7b)...[81a908d](https://github.com/rodmoioliveira/neovim/commit/81a908d4d1421f96d397485022513b4153f6a61c)

### Features

- [81a908d](https://github.com/rodmoioliveira/neovim/commit/81a908d4d1421f96d397485022513b4153f6a61c) - Feat: Add plugin ravibrock/spellwarn.nvim

### Miscellaneous Tasks

- [e9c1601](https://github.com/rodmoioliveira/neovim/commit/e9c1601f222c366a7f1636d08b6dd661d1e98ffc) - Chore: Update plugins
- [780b980](https://github.com/rodmoioliveira/neovim/commit/780b98094933fdc6f81f951943905627518c2c98) - Chore: Add EnableWhitespace on startup

## [0.4.1](https://github.com/rodmoioliveira/neovim/compare/0.4.0...0.4.1) - 2024-12-26

[bf15343](https://github.com/rodmoioliveira/neovim/commit/bf1534359b700ecdeeb53187f4403692555b8ab7)...[cd1e596](https://github.com/rodmoioliveira/neovim/commit/cd1e59640b70a1d80948b272a2a7ddc4704bac7b)

### Features

- [c56d6ec](https://github.com/rodmoioliveira/neovim/commit/c56d6ec888638711d1b7b423d3b068d24b08ef19) - Feat: Add nvim_create_autocmd TextYankPost

## [0.4.0](https://github.com/rodmoioliveira/neovim/compare/0.3.2...0.4.0) - 2024-12-26

[87910d3](https://github.com/rodmoioliveira/neovim/commit/87910d3a5a46a99881589340f96877e0bf54ba6b)...[bf15343](https://github.com/rodmoioliveira/neovim/commit/bf1534359b700ecdeeb53187f4403692555b8ab7)

### Bug Fixes

- [87dde71](https://github.com/rodmoioliveira/neovim/commit/87dde719dbae2f498e81bff88b10f002d4d955ae) - Fix : Gitsigns next_hunk
- [79920c7](https://github.com/rodmoioliveira/neovim/commit/79920c7c242a711f78b66aab1b698fdf67c26314) - Fix: update gitsigns config
- [0273866](https://github.com/rodmoioliveira/neovim/commit/0273866293ed820b9a945eadb4c639f1d2cf6047) - Fix: fix vim.lsp.buf.format()

### Features

- [b2061bb](https://github.com/rodmoioliveira/neovim/commit/b2061bb81fc201cadcc7d858bf25d9839b099541) - Feat: add clippy to rust-analyzer
- [8981ebd](https://github.com/rodmoioliveira/neovim/commit/8981ebd91941d2899a6a9be7135d252c0336ff3e) - Feat: add spellcheck highlight
- [9a563e6](https://github.com/rodmoioliveira/neovim/commit/9a563e6c922328309a37340d3b7ec2d3dfe90cd2) - Feat: disable 'ludovicchabant/vim-gutentags'
- [9db8854](https://github.com/rodmoioliveira/neovim/commit/9db8854736c5389818ded38d37c2a9f70516bf00) - Feat: remove which-key plugin
- [b9d0987](https://github.com/rodmoioliveira/neovim/commit/b9d098707f0011a23eff2fd7149c560fdf451409) - Feat: remove tsserver
- [bf60ba8](https://github.com/rodmoioliveira/neovim/commit/bf60ba8c4a66fdade712a64cded743836c4864b8) - Feat: add tpope/vim-surround
- [425ce2e](https://github.com/rodmoioliveira/neovim/commit/425ce2eded1dc6b7f0033dadb0240ea332be7268) - Feat: Add hardtime
- [1abb748](https://github.com/rodmoioliveira/neovim/commit/1abb7486f29c24b03533f2517f7140e3828f89ab) - Feat: Switch tab for buffers in mappings
- [6ac8822](https://github.com/rodmoioliveira/neovim/commit/6ac8822919d5245d88e54714eb0d6554edb781fd) - Feat!: Remove maps
- [e9d4bd6](https://github.com/rodmoioliveira/neovim/commit/e9d4bd675d6d2468e59ca23b308ff22bb98e7533) - Feat: add Lazy.nvim
- [4c22329](https://github.com/rodmoioliveira/neovim/commit/4c22329a41da164af19b646bd210f2ecc50ad5c3) - Feat: Remove old plugins
- [ac445bc](https://github.com/rodmoioliveira/neovim/commit/ac445bc5fba10ab0c95c2445b38a0d6aa20c53d6) - Feat: Add Lsp
- [5b25ac7](https://github.com/rodmoioliveira/neovim/commit/5b25ac7e5f8da273f6202a63f638a28f3dfeca28) - Feat: Add all configs in one file
- [7f34d47](https://github.com/rodmoioliveira/neovim/commit/7f34d472dbbc409ba1479e054c4db272e6b79f27) - Feat: Add lualine configs
- [c6ebeae](https://github.com/rodmoioliveira/neovim/commit/c6ebeaee4c4985589806d32a34505050feb04a1a) - Feat: Remove tpope/vim-commentary
- [e676f95](https://github.com/rodmoioliveira/neovim/commit/e676f95d7b1d739a62b2210a01c83c9ee1342dad) - Feat: Improve completions
- [cfe474b](https://github.com/rodmoioliveira/neovim/commit/cfe474b3c48b80d2a59f28ae4684934f661e5372) - Feat: Remove lsp-zero and lazy-lsp
- [4d5ece0](https://github.com/rodmoioliveira/neovim/commit/4d5ece00d078a37f8c541d80170eff768cf74c61) - Feat: Replace "hrsh7th/cmp-*" for "saghen/blink"
- [16d68e9](https://github.com/rodmoioliveira/neovim/commit/16d68e978403f75bd1ac3d1098e6fab5f7263a9e) - Feat: Add folke/lazydev.nvim
- [03efee5](https://github.com/rodmoioliveira/neovim/commit/03efee5d6b023cef5546172580d67a68e7693661) - Feat: Improve mappings
- [edf77c8](https://github.com/rodmoioliveira/neovim/commit/edf77c8726758e9da8feee4eced98e584080b6ef) - Feat: Remove kind_icons
- [ec127ed](https://github.com/rodmoioliveira/neovim/commit/ec127ed9282f7364d0daaa211f31c0550b1ad300) - Feat: Improve Makefile
- [4c7ddfc](https://github.com/rodmoioliveira/neovim/commit/4c7ddfccd32128bb1a611169f1e66e437e595d6d) - Feat: Add resize windows maps

### Miscellaneous Tasks

- [e2bd954](https://github.com/rodmoioliveira/neovim/commit/e2bd954b47937d3d6b0ebfa39aa6bc0a0ebcd5f0) - Chore: remove assets
- [af209de](https://github.com/rodmoioliveira/neovim/commit/af209de67af9e2b21738acdd8873beeceddae06d) - Chore: remove binding for vim.lsp.buf.signature_help
- [25b4851](https://github.com/rodmoioliveira/neovim/commit/25b4851ba980bc49c94923b910643fde6c75e1a7) - Chore: comment out vim.o.scrolloff
- [11b8b06](https://github.com/rodmoioliveira/neovim/commit/11b8b063bb2bbdc53f13dd883b0d338ecb9fe591) - Chore: binds <CR> to cmp.mapping.confirm
- [f25ca00](https://github.com/rodmoioliveira/neovim/commit/f25ca00858c7a1b444a3d09334db88c168761170) - Chore: update packages
- [a324850](https://github.com/rodmoioliveira/neovim/commit/a3248508fe24a71b9302ae6648144deae314a755) - Chore: remove colors plugins
- [72d39c2](https://github.com/rodmoioliveira/neovim/commit/72d39c22008ee58ccc9dfd23ebb6d50a8ede7635) - Chore: remove Markdown preview plugin
- [ee08c12](https://github.com/rodmoioliveira/neovim/commit/ee08c1201e05ccc693bc8689878ce9ad3298885a) - Chore: install jsregexp
- [ff2b177](https://github.com/rodmoioliveira/neovim/commit/ff2b1776264e11d7660d4ed403e6cec40c29993b) - Chore: add TODO to add github.com/dcmox/ascii-icons
- [02030b3](https://github.com/rodmoioliveira/neovim/commit/02030b34509a1bf14c179088f625d4e7c5c7ec67) - Chore: Replace vim.keymap.set for Map()

### Other

- [ff34312](https://github.com/rodmoioliveira/neovim/commit/ff34312e8a6ee6642b271bbfd6933e7c731a76de) - Feat: Add diagnostics remaps
- [f6377fa](https://github.com/rodmoioliveira/neovim/commit/f6377fa7389bca5aac6d63eaa2ba81e8a364edf2) - Feat: add default-mappings
- [e767ec3](https://github.com/rodmoioliveira/neovim/commit/e767ec391efedac3139afc7d247f39c83b106754) - Feat: Add fzf-lua-coming-from-fzf.vim?

## [0.3.2](https://github.com/rodmoioliveira/neovim/compare/0.3.1...0.3.2) - 2023-01-11

[f73ed22](https://github.com/rodmoioliveira/neovim/commit/f73ed22697678df7c480033413527b5bc40f8a82)...[87910d3](https://github.com/rodmoioliveira/neovim/commit/87910d3a5a46a99881589340f96877e0bf54ba6b)

### Miscellaneous Tasks

- [71ac6ec](https://github.com/rodmoioliveira/neovim/commit/71ac6ece5a8e1e6c3857408f6859d2e6ad3fbe17) - Chore: add hrsh7th/cmp-buffer, hrsh7th/cmp-path
- [ea6b616](https://github.com/rodmoioliveira/neovim/commit/ea6b616cf9582d888cb7fa9bd66c915d2b930a50) - Chore: add hrsh7th/cmp-cmdline
- [87910d3](https://github.com/rodmoioliveira/neovim/commit/87910d3a5a46a99881589340f96877e0bf54ba6b) - Chore: add kind_icons for cmp

## [0.3.1](https://github.com/rodmoioliveira/neovim/compare/0.3.0...0.3.1) - 2023-01-11

[78b702a](https://github.com/rodmoioliveira/neovim/commit/78b702a3cc37bb95ec1f69eae4168f99401eb1ed)...[f73ed22](https://github.com/rodmoioliveira/neovim/commit/f73ed22697678df7c480033413527b5bc40f8a82)

### Miscellaneous Tasks

- [0ffec8a](https://github.com/rodmoioliveira/neovim/commit/0ffec8a9748c098c7561c54f40c0cd3b0d7aaa45) - Chore: add yamlls
- [940a3a7](https://github.com/rodmoioliveira/neovim/commit/940a3a7486f128ccd19928734a51edfaed50811c) - Chore: add dockerls, jsonls
- [f73ed22](https://github.com/rodmoioliveira/neovim/commit/f73ed22697678df7c480033413527b5bc40f8a82) - Chore: add lewis6991/impatient.nvim

## [0.3.0](https://github.com/rodmoioliveira/neovim/compare/0.2.0...0.3.0) - 2023-01-10

[d1ac455](https://github.com/rodmoioliveira/neovim/commit/d1ac455e55acbc53451bc1ad7dda27c9dbc5885d)...[78b702a](https://github.com/rodmoioliveira/neovim/commit/78b702a3cc37bb95ec1f69eae4168f99401eb1ed)

### Bug Fixes

- [7c85a78](https://github.com/rodmoioliveira/neovim/commit/7c85a78339c8645b3401f4429c7890707eeada7a) - Fix: fix autocomplete

### Features

- [b7e0136](https://github.com/rodmoioliveira/neovim/commit/b7e0136a47a50432e2408f7645846464e5a2fab6) - Feat: add assets
- [c5a8994](https://github.com/rodmoioliveira/neovim/commit/c5a8994be01c1aa0987ae274eb739c1f0b7cdb15) - Feat: add remmaps
- [3c43c6f](https://github.com/rodmoioliveira/neovim/commit/3c43c6f0beab9ef68f5d14a04db89cbb9aab798d) - Feat: add more settings
- [8dd797f](https://github.com/rodmoioliveira/neovim/commit/8dd797f32f31003d39aa0ce240c41cbd6e1c23f8) - Feat: add folke/which-key.nvim
- [962721a](https://github.com/rodmoioliveira/neovim/commit/962721a4f38fd057f3bf34ce39a6596fb5979efe) - Feat: add "windwp/nvim-autopairs", remove "folke/which-key.nvim",
- [a941569](https://github.com/rodmoioliveira/neovim/commit/a941569d69117b2a586b4ba6d9221231276ccd3d) - Feat: add mappings for packer
- [ec64eb2](https://github.com/rodmoioliveira/neovim/commit/ec64eb28e01364b543c8a4536761c48a234f2316) - Feat: add folke/which-key.nvim
- [16b36b7](https://github.com/rodmoioliveira/neovim/commit/16b36b7e326ca6c3dc9ce60dc957605fd8459199) - Feat: add mapping Toggle wrap

### Miscellaneous Tasks

- [49d17cc](https://github.com/rodmoioliveira/neovim/commit/49d17cc1b1f0b80b3e8f92453c4d0f3f959ad07c) - Chore: add Toggle list map
- [7ef8d35](https://github.com/rodmoioliveira/neovim/commit/7ef8d356e16e054648c543c9ed3813430c83c67b) - Chore: remove sheerun/vim-polyglot, add lukas-reineke/indent-blankline.nvim
- [86fb679](https://github.com/rodmoioliveira/neovim/commit/86fb67991b9896abf837975fc8a8027c169ac869) - Chore: update mappings for autocomplete
- [32fb688](https://github.com/rodmoioliveira/neovim/commit/32fb6888a20aae2c684c44fd44af6134a68bdbbe) - Chore: remove coc
- [78b702a](https://github.com/rodmoioliveira/neovim/commit/78b702a3cc37bb95ec1f69eae4168f99401eb1ed) - Chore: fmt code

## [0.2.0](https://github.com/rodmoioliveira/neovim/compare/0.1.1...0.2.0) - 2023-01-06

[71fd933](https://github.com/rodmoioliveira/neovim/commit/71fd933646b7c8c4b16174d5c845c4ebddc80433)...[d1ac455](https://github.com/rodmoioliveira/neovim/commit/d1ac455e55acbc53451bc1ad7dda27c9dbc5885d)

### Bug Fixes

- [06673c3](https://github.com/rodmoioliveira/neovim/commit/06673c3be3392de18dde2557d65b5e6a425c11c1) - Fix: set coc_diagnostic_disable=true because we are using ALE for that

### Documentation

- [0995c80](https://github.com/rodmoioliveira/neovim/commit/0995c802575fbe2322ff29a16b9d59a4318ad81e) - Doc: add LICENSE

### Features

- [d1ac455](https://github.com/rodmoioliveira/neovim/commit/d1ac455e55acbc53451bc1ad7dda27c9dbc5885d) - Feat: remove dense-analysis/ale

### Miscellaneous Tasks

- [23f031d](https://github.com/rodmoioliveira/neovim/commit/23f031df0d45f843df5634399d6a643a74a74244) - Chore: add ale_fixers

## [0.1.1](https://github.com/rodmoioliveira/neovim/compare/0.1.0...0.1.1) - 2023-01-06

[4aae1c2](https://github.com/rodmoioliveira/neovim/commit/4aae1c21b026414ec6a14106169ee25fc78f1eb7)...[71fd933](https://github.com/rodmoioliveira/neovim/commit/71fd933646b7c8c4b16174d5c845c4ebddc80433)

### Bug Fixes

- [71fd933](https://github.com/rodmoioliveira/neovim/commit/71fd933646b7c8c4b16174d5c845c4ebddc80433) - Fix: fix CHANGELOG

## [0.1.0](https://github.com/rodmoioliveira/neovim/compare/...0.1.0) - 2023-01-06

### Documentation

- [c6ce1ef](https://github.com/rodmoioliveira/neovim/commit/c6ce1efa1701cb643a7bc84e04643a7844759f9e) - Doc: add info to README

### Features

- [639b14e](https://github.com/rodmoioliveira/neovim/commit/639b14ea3793515c5b09aec2da45174251e33e74) - Feat: minimal working setup for nvim with lua
- [1211394](https://github.com/rodmoioliveira/neovim/commit/12113944fd4d15e9c7d7466bbbc52f8fe06a1c3d) - Feat: add gitsigns
- [c1cf75a](https://github.com/rodmoioliveira/neovim/commit/c1cf75a1bc7a313caeeeccb6afa5fbb2d76c934d) - Feat: add windline
- [b125e57](https://github.com/rodmoioliveira/neovim/commit/b125e576977c2032f31b3edda84f95ac2d881dfe) - Feat: improve gitsigns
- [b093cd8](https://github.com/rodmoioliveira/neovim/commit/b093cd8090db2307a1d8cd786bfc1adb5de79beb) - Feat: add new tabline
- [be440b3](https://github.com/rodmoioliveira/neovim/commit/be440b3e567d1c798e9c7c3a1713b38d92554048) - Feat: change git sign colors
- [89cad70](https://github.com/rodmoioliveira/neovim/commit/89cad70c8268bb224d5da6050e770040f6a0b7e6) - Feat: change search hi

### Miscellaneous Tasks

- [12feafa](https://github.com/rodmoioliveira/neovim/commit/12feafae8e5cebc3648dd5e004d18cd4046cc8fe) - Chore: remove lightline
- [3e4f3dd](https://github.com/rodmoioliveira/neovim/commit/3e4f3dd83c30a43343ff84499bd0641d5654130a) - Chore: fmt lua code
- [1fa8a29](https://github.com/rodmoioliveira/neovim/commit/1fa8a29b0630449c49febb2e2a9fa748e464998a) - Chore: add dir lua/plugins
- [bfd68ec](https://github.com/rodmoioliveira/neovim/commit/bfd68ecc18a0c061375af3686cc487246a7b5943) - Chore: add treesitter
- [2be433c](https://github.com/rodmoioliveira/neovim/commit/2be433c0b4f5ebbd474a08664651718a011db6a7) - Chore: remove treesitter
- [ec8d017](https://github.com/rodmoioliveira/neovim/commit/ec8d0174c9e16b777a5aac34c14f27f3e968da8c) - Chore: adds plugins.my_wildline
- [b070a44](https://github.com/rodmoioliveira/neovim/commit/b070a44f427b5a1a49b412f0a7ca7244ac372d3a) - Chore: add Makefile
- [45a86b0](https://github.com/rodmoioliveira/neovim/commit/45a86b09645400c7eebb0f6cc39ffce7a88272ee) - Chore: add README
- [d427ac6](https://github.com/rodmoioliveira/neovim/commit/d427ac67a21aa3f6ba46a634a0a3a6c585abe048) - Chore: change styles of plugins.my_wildline
- [54bf4bc](https://github.com/rodmoioliveira/neovim/commit/54bf4bce42b63d54de0f0e55e80924637f996459) - Chore: add some useful remaps
- [cf81b33](https://github.com/rodmoioliveira/neovim/commit/cf81b33f015156a072031658b00542dbb95ddeb9) - Chore: format code
- [30e17ee](https://github.com/rodmoioliveira/neovim/commit/30e17ee57d078ea43f761baee55d8ced5f7d96df) - Chore: add nvim-colorizer
- [eea720f](https://github.com/rodmoioliveira/neovim/commit/eea720fc923bac7870fa7ad579a8a95b324257e8) - Chore: improves performance
- [d5a50f7](https://github.com/rodmoioliveira/neovim/commit/d5a50f7a60a64cf9e5fce54c2135ec81d7081ef9) - Chore: add plugins.better-whitespace
- [4aae1c2](https://github.com/rodmoioliveira/neovim/commit/4aae1c21b026414ec6a14106169ee25fc78f1eb7) - Chore: add changelog recipe to Makefile

### Performance

- [3500a31](https://github.com/rodmoioliveira/neovim/commit/3500a31792dcf1e59f9cad487b13c398e021aea5) - Perf: add perf.log

<!-- generated by git-cliff -->
