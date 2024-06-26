#!/bin/sh
# base16-rose-pine (https://github.com/chriskempson/base16-shell)
# Scheme: Rose Pine

export BASE16_THEME=rose-pine

color00="19/17/24" # Base 00 - Black
color01="eb/6f/92" # Base 08 - Red
color02="31/74/8f" # Base 0B - Green
color03="f6/c1/77" # Base 0A - Yellow
color04="9c/cf/d8" # Base 0D - Blue
color05="c4/a7/e7" # Base 0E - Magenta
color06="eb/bc/ba" # Base 0C - Cyan
color07="e0/de/f4" # Base 05 - White
color08="55/51/69" # Base 03 - Bright Black
color09="eb/6f/92" # Base 09
color10="31/74/8f" # Base 0B
color11="f6/c1/77" # Base 0A
color12="9c/cf/d8" # Base 0D
color13="c4/a7/e7" # Base 0E
color14="eb/bc/ba" # Base 0C
color15="e0/de/f4" # Base 07 - Bright White
color16="eb/6f/92" # Base 09
color17="19/17/24" # Base 0F
color18="1f/1d/2e" # Base 01
color19="26/23/3a" # Base 02
color20="6e/6a/86" # Base 04
color21="e0/de/f4" # Base 06

# 16 color space
if [ -n "$TMUX" ]; then
    # Tell tmux to pass the escape sequences through
    # (source: http://permalink.gmane.org/gmane.comp.terminal-emulators.tmux.user/1324)
    put_template() { printf '\033Ptmux;\033\033]4;%d;rgb:%s\033\033\\\033\\' $@; }
    put_template_var() { printf '\033Ptmux;\033\033]%d;rgb:%s\033\033\\\033\\' $@; }
    put_template_custom() { printf '\033Ptmux;\033\033]%s%s\033\033\\\033\\' $@; }
elif [ "${TERM%%-*}" = "screen" ]; then
    # GNU screen (screen, screen-256color, screen-256color-bce)
    put_template() { printf '\033P\033]4;%d;rgb:%s\007\033\\' $@; }
    put_template_var() { printf '\033P\033]%d;rgb:%s\007\033\\' $@; }
    put_template_custom() { printf '\033P\033]%s%s\007\033\\' $@; }
else
    put_template() { printf '\033]4;%d;rgb:%s\033\\' $@; }
    put_template_var() { printf '\033]%d;rgb:%s\033\\' $@; }
    put_template_custom() { printf '\033]%s%s\033\\' $@; }
fi

# 256 color space
put_template 16 $color16
put_template 17 $color17
put_template 18 $color18
put_template 19 $color19
put_template 20 $color20
put_template 21 $color21
put_template 0  $color00
put_template 1  $color01
put_template 2  $color02
put_template 3  $color03
put_template 4  $color04
put_template 5  $color05
put_template 6  $color06
put_template 7  $color07
put_template 8  $color08
put_template 9  $color09
put_template 10 $color10
put_template 11 $color11
put_template 12 $color12
put_template 13 $color13
put_template 14 $color14
put_template 15 $color15

# foreground / background / cursor color
if [ -n "$ITERM_SESSION_ID" ]; then
    # iTerm2 proprietary escape codes
    put_template_custom Pg e0def4 # foreground
    put_template_custom Ph 191724 # background
    put_template_custom Pi e0def4 # bold color
    put_template_custom Pj 26233a # selection color
    put_template_custom Pk e0def4 # selected text color
    put_template_custom Pl e0def4 # cursor
    put_template_custom Pm 191724 # cursor text
else
    put_template_var 10 $color07 # foreground
    put_template_var 11 $color00 # background
    put_template_custom 12 ";7" # cursor (reverse video)
fi

# clean up
unset -f put_template
unset -f put_template_var
unset -f put_template_custom
unset color00
unset color01
unset color02
unset color03
unset color04
unset color05
unset color06
unset color07
unset color08
unset color09
unset color10
unset color11
unset color12
unset color13
unset color14
unset color15
unset color16
unset color17
unset color18
unset color19
unset color20
unset color21
