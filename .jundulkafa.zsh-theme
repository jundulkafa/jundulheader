# Jundul Kafa – user@host, trim path, date/time, and Git status on two lines
# Inspired by Arch Linux community post: http://bbs.archlinux.org/viewtopic.php?pid=521888#p521888

# Date and Time Functions
function get_date() { echo "$(date +'%d %a %b')" }
function get_time() { echo "$(date +'%l:%M %p')" }

# Prompt Design
PROMPT=$'
%{\e[0;34m%}%B┌─[%b%{\e[0m%}%{\e[1;32m%}JundulKafa%{\e[1;33m%}@%{\e[0m%}%{\e[0;36m%}termux%{\e[0;34m%}%B]%b%{\e[0m%}-%{\e[0;34m%}%B[%b%{\e[0;33m%}$(get_date)%{\e[0;34m%}%B]%b%{\e[0m%}-%{\e[0;34m%}%B[%b%{\e[1;33m%}$(get_time)%{\e[0;34m%}%B]%b%{\e[0m%}
%{\e[0;34m%}%B├─[%b%{\e[1;33m%}%(4~|/%2~|%~)%{\e[0;34m%}%B]%b $(git_prompt_info)
%{\e[0;34m%}%B└─[%{\e[1;35m%}$%{\e[0;34m%}%B]%{\e[0m%}%b '
#🌀 Git Prompt Styling
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}(%{$fg_no_bold[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[blue]%})"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[yellow]%}⚡%{$fg_bold[blue]%})"
#🎨 Colored ls Output for Directories & Files
export LSCOLORS="exfxcxdxbxegedabagacad"
export LS_COLORS='no=00:fi=00:di=01;34:ln=00;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=41;33;01:ex=00;32:*.cmd=00;32:*.exe=01;32:*.com=01;32:*.bat=01;32:*.btm=01;32:*.dll=01;32:*.tar=00;31:*.tbz=00;31:*.tgz=00;31:*.rpm=00;31:*.deb=00;31:*.arj=00;31:*.taz=00;31:*.lzh=00;31:*.lzma=00;31:*.zip=00;31:*.zoo=00;31:*.z=00;31:*.Z=00;31:*.gz=00;31:*.bz2=00;31:*.tb2=00;31:*.tz2=00;31:*.tbz2=00;31:*.avi=01;35:*.bmp=01;35:*.fli=01;35:*.gif=01;35:*.jpg=01;35:*.jpeg=01;35:*.mng=01;35:*.mov=01;35:*.mpg=01;35:*.pcx=01;35:*.pbm=01;35:*.pgm=01;35:*.png=01;35:*.ppm=01;35:*.tga=01;35:*.tif=01;35:*.xbm=01;35:*.xpm=01;35:*.dl=01;35:*.gl=01;35:*.wmv=01;35:*.aiff=00;32:*.au=00;32:*.mid=00;32:*.mp3=00;32:*.ogg=00;32:*.voc=00;32:*.wav=00;32:'
#🔧 To Use
source ~/.zshrc
