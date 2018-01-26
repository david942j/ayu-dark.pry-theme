t = PryTheme.create :name => 'ayu-dark' do
  author :name => 'david942j'
  description 'Based on github:ayu-theme/ayu-vim'

  tag = 'light_blue02'
  keyword_c = 'tan'
  constant_c = 'perhydor'
  define_theme do
    class_ tag
    class_variable tag
    comment 'seroburomalinovyj01'
    constant tag
    error 'tenne', [:italic]
    float constant_c
    global_variable tag
    inline_delimiter 'pistachio01'
    instance_variable tag
    integer constant_c
    keyword keyword_c
    method 'saumon'
    predefined_constant constant_c
    symbol constant_c

    regexp do
      self_ keyword_c
      char keyword_c
      content 'moss_green'
      delimiter 'moss_green'
      modifier 'pale_cornflower_blue'
      escape keyword_c
    end

    shell do
      self_ keyword_c
      char keyword_c
      content 'moss_green'
      delimiter keyword_c
      escape keyword_c
    end

    string do
      self_ keyword_c
      char keyword_c
      content 'moss_green'
      delimiter keyword_c
      escape keyword_c
    end
  end
end

PryTheme::ThemeList.add_theme(t)
