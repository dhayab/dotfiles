module.exports = {
  brew: [
    // alternative to `cat`: https://github.com/sharkdp/bat
    'bat',
    // Install GNU core utilities (those that come with macOS are outdated)
    // Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
    'coreutils',
    'diff-so-fancy',
    // Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed
    'findutils',
    'readline', // ensure gawk gets good readline
    'gawk',
    'gnupg',
    // Install GNU `sed`, overwriting the built-in `sed`
    // so we can do "sed -i 's/foo/bar/' file" instead of "sed -i '' 's/foo/bar/' file"
    'gnu-sed --with-default-names',
    // upgrade grep so we can get things like inverted match (-v)
    'grep --with-default-names',
    // better, more recent grep
    'homebrew/dupes/grep',
    // https://github.com/jkbrzt/httpie
    'httpie',
    // jq is a sort of JSON grep
    'jq',
    'kubernetes-cli',
    // Mac App Store CLI: https://github.com/mas-cli/mas
    'mas',
    // better/more recent version of screen
    'homebrew/dupes/screen',
    'tldr',
    'tmux',
    'tree',
    'ttyrec',
    // better, more recent vim
    'vim --with-client-server --with-override-system-vi',
    // Install wget with IRI support
    'wget --enable-iri',
  ],
  cask: [
    '1password',
    'aerial',
    'clipy',
    'docker',
    'fantastical',
    'franz',
    'google-chrome',
    'istat-menus',
    'iterm2',
    'meld',
    'microsoft-remote-desktop-beta',
    'moom',
    'the-unarchiver',
    'tunnelblick',
    'typora',
    'visual-studio-code',
    'xquartz',
    // Quick Look plugins: https://github.com/sindresorhus/quick-look-plugins
    'betterzip', // only used for its plugin
    'qlcolorcode',
    'qlimagesize',
    'qlmarkdown',
    'qlstephen',
    'quicklook-json',
    'suspicious-package',
  ],
  gem: [
  ],
  npm: [
    'npm-check-updates',
    'ts-node',
    'typescript',
  ]
};
