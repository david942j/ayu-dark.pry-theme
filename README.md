# ayu-dark.pry-theme

A pry theme in [ayu-vim](https://github.com/ayu-theme/ayu-vim) style!

## Screenshots

### Before (default)

![default](https://github.com/david942j/ayu-dark.pry-theme/blob/master/screenshots/pry-default.png)

### After (ayu-dark)

![ayu-dark](https://github.com/david942j/ayu-dark.pry-theme/blob/master/screenshots/ayu-dark.png)

## Installation

### Manual Method

1. Install gem `pry-theme`:
    - `gem install pry-theme` (add sudo if needed)
2. `wget https://github.com/david942j/ayu-dark.pry-theme/blob/master/ayu-dark.prytheme.rb -O ~/.pry/themes/`
3. `echo -e "Pry.config.theme = 'ayu-dark'\nPry.config.theme_options = { paint_key_as_symbol: true }" >> ~/.pryrc`
4. `pry` and enjoy!

### One Command Shot (Recommend)

1. `curl -fsSL https://github.com/david942j/ayu-dark.pry-theme/raw/master/install.sh | bash`
2. `pry` and enjoy!
