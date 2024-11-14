module.exports = {
  brew: [
    'algolia/algolia-cli/algolia',
    // 'algolia/private/fig',
    'awscli',
    'bat',
    // Install GNU core utilities (those that come with macOS are outdated)
    // Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
    'coreutils',
    'diff-so-fancy',
    'ffmpeg',
    // Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed
    'findutils',
    'gawk',
    'gh',
    'git-delta',
    'git-lfs',
    'gnupg',
    // Install GNU `sed`, overwriting the built-in `sed`
    // so we can do "sed -i 's/foo/bar/' file" instead of "sed -i '' 's/foo/bar/' file"
    'gnu-sed --with-default-names',
    // upgrade grep so we can get things like inverted match (-v)
    'grep --with-default-names',
    'httpie',
    'jandedobbeleer/oh-my-posh/oh-my-posh',
    'jq',
    'keidarcy/tap/e1s',
    // 'k9s',
    // 'kubernetes-cli',
    'mas',
    'mise',
    'tldr',
    'tmux',
    'tree',
    // better, more recent vim
    'vim --with-client-server --with-override-system-vi',
    // Install wget with IRI support
    'wget --enable-iri',
  ],
  cask: [
    // '1password', // using direct download instead
    '1password-cli',
    // 'android-studio',
    'betterzip',
    'caffeine',
    'cleanshot',
    'db-browser-for-sqlite',
    // 'discord',
    'docker',
    'fantastical',
    'font-fira-code-nerd-font',
    'font-hack',
    'font-hack-nerd-font',
    'font-meslo-lg-nerd-font',
    'font-source-code-pro',
    'glance-chamburr',
    'iina',
    'insomnia',
    'iterm2',
    'jordanbaird-ice',
    'logitech-options',
    'maccy',
    'meld',
    'monitorcontrol',
    'moom',
    'plexamp',
    'postico',
    'raycast',
    // 'slack',
    'stay',
    'telegram',
    // 'temurin@11',
    'the-unarchiver',
    'typora',
    // 'utm',
    'viscosity',
    'visual-studio-code',
    'xquartz',
  ],
  gem: [],
  mas: [
    '1594183810', // Shortery
    '1606897889', // Consent-o-matic
    '1498224474', // Forematter
    '1463298887', // Userscripts
    '967004861', // HP Easy Scan
  ],
  npm: [],
};
