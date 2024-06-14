local colors = {
  bg       = '#191724',
  fg       = '#e0def4',
  black    = '#1f1d2e',
  red      = '#eb6f92',
  green    = '#31748f',
  yellow   = '#f6c177',
  blue     = '#9ccfd8',
  magenta  = '#c4a7e7',
  cyan     = '#ebbcba',
  white    = '#e0def4',
  bright_black = '#555169',
  bright_red   = '#eb6f92',
  bright_green = '#31748f',
  bright_yellow = '#f6c177',
  bright_blue = '#9ccfd8',
  bright_magenta = '#c4a7e7',
  bright_cyan = '#ebbcba',
  bright_white = '#e0def4',
}

local rosepine = {
  normal = {
    a = { bg = colors.blue, fg = colors.black, gui = 'bold' },
    b = { bg = colors.bg, fg = colors.white },
    c = { bg = colors.bg, fg = colors.fg },
  },
  insert = { a = { bg = colors.green, fg = colors.black, gui = 'bold' } },
  visual = { a = { bg = colors.magenta, fg = colors.black, gui = 'bold' } },
  replace = { a = { bg = colors.red, fg = colors.black, gui = 'bold' } },
  command = { a = { bg = colors.yellow, fg = colors.black, gui = 'bold' } },

  inactive = {
    a = { bg = colors.bg, fg = colors.bright_black, gui = 'bold' },
    b = { bg = colors.bg, fg = colors.bright_black },
    c = { bg = colors.bg, fg = colors.bright_black },
  },
}

return rosepine
