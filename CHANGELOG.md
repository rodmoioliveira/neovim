# Changelog
All notable changes to this project will be documented in this file.

## [0.4.0](https://github.com/rodmoioliveira/neovim/compare/0.3.2...0.4.0) - 2024-12-26

[87910d3](https://github.com/rodmoioliveira/neovim/commit/87910d3a5a46a99881589340f96877e0bf54ba6b)...[58f68be](https://github.com/rodmoioliveira/neovim/commit/58f68be9f2c277078d7d5631e27d193032f735b6)

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
- [fb922b4](https://github.com/rodmoioliveira/neovim/commit/fb922b49092fe27b3dcb9ca4712cf421c5e4b867) - Feat: Add hardtime
- [610d1b8](https://github.com/rodmoioliveira/neovim/commit/610d1b81bedbbf6648df92cdf7b115963c7ad475) - Feat: Switch tab for buffers in mappings
- [7b18a84](https://github.com/rodmoioliveira/neovim/commit/7b18a841bbf2b627dcb3685003a6126e217371ca) - Feat!: Remove maps
- [e472358](https://github.com/rodmoioliveira/neovim/commit/e4723582e6535a5c26efbbee46d9e42e5b44632c) - Feat: add Lazy.nvim
- [b7a946b](https://github.com/rodmoioliveira/neovim/commit/b7a946b022c0e32e323c17161a0e29b13e85b701) - Feat: Remove old plugins
- [1462cc3](https://github.com/rodmoioliveira/neovim/commit/1462cc3db8a7f4acd26a12024ccd1ac86faa33ac) - Feat: Add Lsp
- [f1c9c3f](https://github.com/rodmoioliveira/neovim/commit/f1c9c3f6bfb26dcfa4016fcc5df600411349b240) - Feat: Add all configs in one file
- [83a0fd5](https://github.com/rodmoioliveira/neovim/commit/83a0fd51cbc46159a2a8d7bc16c9b896d4349272) - Feat: Add lualine configs
- [ede39a0](https://github.com/rodmoioliveira/neovim/commit/ede39a0f2205dab627ca49efe7fd99f17d0c0e2c) - Feat: Remove tpope/vim-commentary
- [d2d9f49](https://github.com/rodmoioliveira/neovim/commit/d2d9f499c2204d95137bfe8e8d2e84612b1a8ef7) - Feat: Improve completions
- [807c066](https://github.com/rodmoioliveira/neovim/commit/807c066ad160ef90c8f9b90a3800167f87c4033c) - Feat: Remove lsp-zero and lazy-lsp
- [9fc4d7f](https://github.com/rodmoioliveira/neovim/commit/9fc4d7fef40e60296887a338ca43d9884420f9e5) - Feat: Replace "hrsh7th/cmp-*" for "saghen/blink"
- [579d8b1](https://github.com/rodmoioliveira/neovim/commit/579d8b1d9796825d2d7e68c7bb56fa2c3365d386) - Feat: Add folke/lazydev.nvim
- [00c3ccd](https://github.com/rodmoioliveira/neovim/commit/00c3ccdff4d6848eb41ff435dab9411a20a54c0f) - Feat: Improve mappings
- [0e2cc8a](https://github.com/rodmoioliveira/neovim/commit/0e2cc8aca345547ca08eedc98bc035572719391d) - Feat: Remove kind_icons
- [e9f5e28](https://github.com/rodmoioliveira/neovim/commit/e9f5e28413ccb5438c84092fefa47856b445a420) - Feat: Improve Makefile
- [58f68be](https://github.com/rodmoioliveira/neovim/commit/58f68be9f2c277078d7d5631e27d193032f735b6) - Feat: Add resize windows maps

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
- [7b0c698](https://github.com/rodmoioliveira/neovim/commit/7b0c69883d6e33d79d47777991824cb806aeee4a) - Chore: Replace vim.keymap.set for Map()

### Other

- [8cebd9a](https://github.com/rodmoioliveira/neovim/commit/8cebd9acd73c93dd531863b294f08bad6f0acb59) - Feat: Add diagnostics remaps
- [b245020](https://github.com/rodmoioliveira/neovim/commit/b245020895355265615a9a1d5262d3daa7dbe1b4) - Feat: add default-mappings
- [14189b3](https://github.com/rodmoioliveira/neovim/commit/14189b3ce86e91b850153966b22a05aa9917b67c) - Feat: Add fzf-lua-coming-from-fzf.vim?

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
