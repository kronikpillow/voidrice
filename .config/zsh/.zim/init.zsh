zimfw() { source /home/kronikpillow/.config/zsh/.zim/zimfw.zsh "${@}" }
fpath=(/home/kronikpillow/.config/zsh/.zim/modules/utility/functions /home/kronikpillow/.config/zsh/.zim/modules/archive/functions ${fpath})
autoload -Uz mkcd mkpw archive unarchive
source /home/kronikpillow/.config/zsh/.zim/modules/environment/init.zsh
source /home/kronikpillow/.config/zsh/.zim/modules/input/init.zsh
source /home/kronikpillow/.config/zsh/.zim/modules/termtitle/init.zsh
source /home/kronikpillow/.config/zsh/.zim/modules/utility/init.zsh
source /home/kronikpillow/.config/zsh/.zim/modules/exa/init.zsh
source /home/kronikpillow/.config/zsh/.zim/modules/archive/init.zsh
source /home/kronikpillow/.config/zsh/.zim/modules/fzf/init.zsh
source /home/kronikpillow/.config/zsh/.zim/modules/zsh-completions/zsh-completions.plugin.zsh
source /home/kronikpillow/.config/zsh/.zim/modules/completion/init.zsh
source /home/kronikpillow/.config/zsh/.zim/modules/zsh-autosuggestions/zsh-autosuggestions.zsh
source /home/kronikpillow/.config/zsh/.zim/modules/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source /home/kronikpillow/.config/zsh/.zim/modules/zsh-history-substring-search/zsh-history-substring-search.zsh
