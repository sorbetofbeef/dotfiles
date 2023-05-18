function theme_env --description 'sets theme for neovim'
  set theme $argv[1] 
    switch $theme
      case oceanic-next
        set -gx THEME_GITHUB_PATH "mhartington/oceanic-next"
      case embark-theme
        set -gx THEME_GITHUB_PATH "embark-theme/vim"
      case tokyonight
        set -gx THEME_GITHUB_PATH "folke/tokyonight.nvim"
      case poimandres
        set -gx THEME_GITHUB_PATH "olivercederborg/poimandres.nvim"
      case kanagawa
        set -gx THEME_GITHUB_PATH "rebelot/kanagawa.nvim"
      case darkplus
        set -gx THEME_GITHUB_PATH "lunarvim/darkplus.nvim"
      case nightfox
        set -gx THEME_GITHUB_PATH "EdenEast/nightfox.nvim"
      case rasmus
        set -gx THEME_GITHUB_PATH "kvrohit/rasmus.nvim"
      case material
        set -gx THEME_GITHUB_PATH "marko-cerovac/material.nvim"
      case aquarium
        set -gx THEME_GITHUB_PATH "frenzyexists/aquarium-vim"
      case onedarkpro
        set -gx THEME_GITHUB_PATH "olimorris/onedarkpro.nvim"
      case melange
        set -gx THEME_GITHUB_PATH "savq/melange"
      case mellow
        set -gx THEME_GITHUB_PATH "kvrohit/mellow.nvim"
      case catppuccin
        set -gx THEME_GITHUB_PATH "catppuccin/nvim"
      case apprentice
        set -gx THEME_GITHUB_PATH "adisen99/apprentice.nvim"
      case ayu
        set -gx THEME_GITHUB_PATH "Shatur/neovim-ayu"
      case doom-one
        set -gx THEME_GITHUB_PATH "NTBBloodbath/doom-one.nvim"
      case minimal
        set -gx THEME_GITHUB_PATH "Yazeed1s/minimal.nvim"
      case substrata
        set -gx THEME_GITHUB_PATH "kvrohit/substrata.nvim"
      case rose-pine
        set -gx THEME_GITHUB_PATH "rose-pine/neovim"
      case nord
        set -gx THEME_GITHUB_PATH "shaunsingh/nord.nvim"
      case arctic
        set -gx THEME_GITHUB_PATH "rockyzhang24/arctic.nvim"
      case edge
        set -gx THEME_GITHUB_PATH "sainnhe/edge"
      case falcon
        set -gx THEME_GITHUB_PATH "fenetikm/falcon"
      case juliana
        set -gx THEME_GITHUB_PATH "kaiuri/nvim-juliana"
      case zenbones
        set -gx THEME_GITHUB_PATH "mcchrish/zenbones.nvim"
      case oh-lucy
        set -gx THEME_GITHUB_PATH "Yazeed1s/oh-lucy.nvim"
      case mellifluous
        set -gx THEME_GITHUB_PATH "ramojus/mellifluous.nvim"
      case neon
        set -gx THEME_GITHUB_PATH "rafamadriz/neon"
      case nightfly-colors
        set -gx THEME_GITHUB_PATH "bluz71/vim-nightfly-colors"
      case nvimgelion
        set -gx THEME_GITHUB_PATH 'nyngwang/nvimgelion'
    end
end
