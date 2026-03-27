# ═══════════════════════════════════════════════════════════════
# MALICE'S SHELL PROFILE
# A feature-rich, POSIX-compliant shell profile
# Works on bash and ash (tested on OpenWRT)
# ═══════════════════════════════════════════════════════════════

# Check if we're in bash
[ -z "$BASH_VERSION" ] && [ -z "$ZSH_VERSION" ] && echo "This profile is designed for bash. Things may look weird."

# ═══════════════════════════════════════════════════════════════
# THEME SYSTEM
# ═══════════════════════════════════════════════════════════════

SHELL_THEME="${SHELL_THEME:-dracula}"

case "$SHELL_THEME" in
    dracula)
        THEME_TITLE='\033[38;5;141m'
        THEME_SUBTITLE='\033[38;5;212m'
        THEME_USER='\033[38;5;141m'
        THEME_HOST='\033[38;5;212m'
        THEME_OS='\033[38;5;117m'
        THEME_HOST_MODEL='\033[38;5;141m'
        THEME_KERNEL='\033[38;5;117m'
        THEME_UPTIME='\033[38;5;228m'
        THEME_SHELL='\033[38;5;84m'
        THEME_SHELL_VERSION='\033[38;5;84m'
        THEME_DE='\033[38;5;141m'
        THEME_WM='\033[38;5;141m'
        THEME_WM_THEME='\033[38;5;212m'
        THEME_TERMINAL='\033[38;5;84m'
        THEME_TERMINAL_FONT='\033[38;5;117m'
        THEME_CPU='\033[38;5;84m'
        THEME_CPU_USAGE='\033[38;5;228m'
        THEME_MEMORY='\033[38;5;84m'
        THEME_MEMORY_USAGE='\033[38;5;228m'
        THEME_DISK='\033[38;5;84m'
        THEME_DISK_USAGE='\033[38;5;228m'
        THEME_PATH='\033[38;5;117m'
        THEME_PROMPT='\033[38;5;228m'
        THEME_CMD_VALID='\033[38;5;84m'
        THEME_CMD_ALIAS='\033[38;5;215m'
        THEME_CMD_FUNC='\033[38;5;147m'
        THEME_CMD_BUILTIN='\033[38;5;117m'
        THEME_CMD_INVALID='\033[38;5;203m'
        THEME_ARG='\033[38;5;228m'
        THEME_FLAG='\033[38;5;181m'
        THEME_STRING='\033[38;5;215m'
        THEME_NUMBER='\033[38;5;141m'
        THEME_OPERATOR='\033[38;5;212m'
        THEME_BOLD='\033[1m'
        THEME_UNDERLINE='\033[4m'
        THEME_RESET='\033[0m'
        THEME_COL_0='\033[38;5;0m'
        THEME_COL_1='\033[38;5;1m'
        THEME_COL_2='\033[38;5;2m'
        THEME_COL_3='\033[38;5;3m'
        THEME_COL_4='\033[38;5;4m'
        THEME_COL_5='\033[38;5;5m'
        THEME_COL_6='\033[38;5;6m'
        THEME_COL_7='\033[38;5;7m'
        THEME_COL_8='\033[38;5;8m'
        THEME_COL_9='\033[38;5;9m'
        THEME_COL_10='\033[38;5;10m'
        THEME_COL_11='\033[38;5;11m'
        THEME_COL_12='\033[38;5;12m'
        THEME_COL_13='\033[38;5;13m'
        THEME_COL_14='\033[38;5;14m'
        THEME_COL_15='\033[38;5;15m'
        THEME_BG_0='\033[48;5;0m'
        THEME_BG_1='\033[48;5;1m'
        THEME_BG_2='\033[48;5;2m'
        THEME_BG_3='\033[48;5;3m'
        THEME_BG_4='\033[48;5;4m'
        THEME_BG_5='\033[48;5;5m'
        THEME_BG_6='\033[48;5;6m'
        THEME_BG_7='\033[48;5;7m'
        THEME_BG_8='\033[48;5;8m'
        THEME_BG_9='\033[48;5;9m'
        THEME_BG_10='\033[48;5;10m'
        THEME_BG_11='\033[48;5;11m'
        THEME_BG_12='\033[48;5;12m'
        THEME_BG_13='\033[48;5;13m'
        THEME_BG_14='\033[48;5;14m'
        THEME_BG_15='\033[48;5;15m'
        PS1_CHAR='➜'
        NEOFETCH_LOGO="
   ___
  / __${THEME_COL_2}_____${THEME_COL_1}/
 /_${THEME_COL_3}\\___${THEME_COL_4}/${THEME_COL_2}___${THEME_COL_5}\\${THEME_COL_1}___\\
${THEME_COL_1}/${THEME_COL_3}(   )${THEME_COL_4}/${THEME_COL_2}     ${THEME_COL_5}/${THEME_COL_3}(   )${THEME_COL_1}/
${THEME_COL_1}\\_${THEME_COL_3}\\__${THEME_COL_4}/${THEME_COL_2}___${THEME_COL_5}/${THEME_COL_1}___${THEME_COL_3}\\_${THEME_COL_4}/${THEME_COL_2}___${THEME_COL_5}/${THEME_COL_1}/
 ${THEME_COL_2}\\__${THEME_COL_5}/${THEME_COL_1}_____${THEME_COL_2}/${THEME_COL_5}\\_____${THEME_COL_1}/${THEME_RESET}"
        ;;
    nord)
        THEME_TITLE='\033[38;5;15m'
        THEME_SUBTITLE='\033[38;5;15m'
        THEME_USER='\033[38;5;7m'
        THEME_HOST='\033[38;5;15m'
        THEME_OS='\033[38;5;14m'
        THEME_HOST_MODEL='\033[38;5;7m'
        THEME_KERNEL='\033[38;5;14m'
        THEME_UPTIME='\033[38;5;6m'
        THEME_SHELL='\033[38;5;14m'
        THEME_SHELL_VERSION='\033[38;5;6m'
        THEME_DE='\033[38;5;14m'
        THEME_WM='\033[38;5;7m'
        THEME_WM_THEME='\033[38;5;6m'
        THEME_TERMINAL='\033[38;5;14m'
        THEME_TERMINAL_FONT='\033[38;5;6m'
        THEME_CPU='\033[38;5;14m'
        THEME_CPU_USAGE='\033[38;5;6m'
        THEME_MEMORY='\033[38;5;14m'
        THEME_MEMORY_USAGE='\033[38;5;6m'
        THEME_DISK='\033[38;5;14m'
        THEME_DISK_USAGE='\033[38;5;6m'
        THEME_PATH='\033[38;5;111m'
        THEME_PROMPT='\033[38;5;15m'
        THEME_CMD_VALID='\033[38;5;142m'
        THEME_CMD_ALIAS='\033[38;5;208m'
        THEME_CMD_FUNC='\033[38;5;139m'
        THEME_CMD_BUILTIN='\033[38;5;109m'
        THEME_CMD_INVALID='\033[38;5;167m'
        THEME_ARG='\033[38;5;180m'
        THEME_FLAG='\033[38;5;139m'
        THEME_STRING='\033[38;5;208m'
        THEME_NUMBER='\033[38;5;109m'
        THEME_OPERATOR='\033[38;5;167m'
        THEME_BOLD='\033[1m'
        THEME_UNDERLINE='\033[4m'
        THEME_RESET='\033[0m'
        THEME_COL_0='\033[38;5;0m'
        THEME_COL_1='\033[38;5;1m'
        THEME_COL_2='\033[38;5;2m'
        THEME_COL_3='\033[38;5;3m'
        THEME_COL_4='\033[38;5;4m'
        THEME_COL_5='\033[38;5;5m'
        THEME_COL_6='\033[38;5;6m'
        THEME_COL_7='\033[38;5;7m'
        THEME_COL_8='\033[38;5;8m'
        THEME_COL_9='\033[38;5;9m'
        THEME_COL_10='\033[38;5;10m'
        THEME_COL_11='\033[38;5;11m'
        THEME_COL_12='\033[38;5;12m'
        THEME_COL_13='\033[38;5;13m'
        THEME_COL_14='\033[38;5;14m'
        THEME_COL_15='\033[38;5;15m'
        THEME_BG_0='\033[48;5;0m'
        THEME_BG_1='\033[48;5;1m'
        THEME_BG_2='\033[48;5;2m'
        THEME_BG_3='\033[48;5;3m'
        THEME_BG_4='\033[48;5;4m'
        THEME_BG_5='\033[48;5;5m'
        THEME_BG_6='\033[48;5;6m'
        THEME_BG_7='\033[48;5;7m'
        THEME_BG_8='\033[48;5;8m'
        THEME_BG_9='\033[48;5;9m'
        THEME_BG_10='\033[48;5;10m'
        THEME_BG_11='\033[48;5;11m'
        THEME_BG_12='\033[48;5;12m'
        THEME_BG_13='\033[48;5;13m'
        THEME_BG_14='\033[48;5;14m'
        THEME_BG_15='\033[48;5;15m'
        PS1_CHAR='❯'
        NEOFETCH_LOGO="${THEME_COL_4}   __${THEME_COL_8}__
  /\ ${THEME_COL_7}_${THEME_COL_4}\\
 /  \${THEME_COL_8}\\__${THEME_COL_7}___${THEME_COL_4}\\
/    \${THEME_COL_8}|    \${THEME_COL_7}/
\${THEME_COL_4}___/\___\${THEME_COL_7}/___/${THEME_RESET}"
        ;;
    gruvbox)
        THEME_TITLE='\033[38;5;229m'
        THEME_SUBTITLE='\033[38;5;229m'
        THEME_USER='\033[38;5;142m'
        THEME_HOST='\033[38;5;108m'
        THEME_OS='\033[38;5;142m'
        THEME_HOST_MODEL='\033[38;5;214m'
        THEME_KERNEL='\033[38;5;109m'
        THEME_UPTIME='\033[38;5;229m'
        THEME_SHELL='\033[38;5;142m'
        THEME_SHELL_VERSION='\033[38;5;229m'
        THEME_DE='\033[38;5;142m'
        THEME_WM='\033[38;5;214m'
        THEME_WM_THEME='\033[38;5;229m'
        THEME_TERMINAL='\033[38;5;142m'
        THEME_TERMINAL_FONT='\033[38;5;229m'
        THEME_CPU='\033[38;5;142m'
        THEME_CPU_USAGE='\033[38;5;229m'
        THEME_MEMORY='\033[38;5;142m'
        THEME_MEMORY_USAGE='\033[38;5;229m'
        THEME_DISK='\033[38;5;142m'
        THEME_DISK_USAGE='\033[38;5;229m'
        THEME_PATH='\033[38;5;109m'
        THEME_PROMPT='\033[38;5;229m'
        THEME_CMD_VALID='\033[38;5;142m'
        THEME_CMD_ALIAS='\033[38;5;214m'
        THEME_CMD_FUNC='\033[38;5;139m'
        THEME_CMD_BUILTIN='\033[38;5;108m'
        THEME_CMD_INVALID='\033[38;5;167m'
        THEME_ARG='\033[38;5;214m'
        THEME_FLAG='\033[38;5;139m'
        THEME_STRING='\033[38;5;214m'
        THEME_NUMBER='\033[38;5;142m'
        THEME_OPERATOR='\033[38;5;167m'
        THEME_BOLD='\033[1m'
        THEME_UNDERLINE='\033[4m'
        THEME_RESET='\033[0m'
        THEME_COL_0='\033[38;5;0m'
        THEME_COL_1='\033[38;5;1m'
        THEME_COL_2='\033[38;5;2m'
        THEME_COL_3='\033[38;5;3m'
        THEME_COL_4='\033[38;5;4m'
        THEME_COL_5='\033[38;5;5m'
        THEME_COL_6='\033[38;5;6m'
        THEME_COL_7='\033[38;5;7m'
        THEME_COL_8='\033[38;5;8m'
        THEME_COL_9='\033[38;5;9m'
        THEME_COL_10='\033[38;5;10m'
        THEME_COL_11='\033[38;5;11m'
        THEME_COL_12='\033[38;5;12m'
        THEME_COL_13='\033[38;5;13m'
        THEME_COL_14='\033[38;5;14m'
        THEME_COL_15='\033[38;5;15m'
        THEME_BG_0='\033[48;5;0m'
        THEME_BG_1='\033[48;5;1m'
        THEME_BG_2='\033[48;5;2m'
        THEME_BG_3='\033[48;5;3m'
        THEME_BG_4='\033[48;5;4m'
        THEME_BG_5='\033[48;5;5m'
        THEME_BG_6='\033[48;5;6m'
        THEME_BG_7='\033[48;5;7m'
        THEME_BG_8='\033[48;5;8m'
        THEME_BG_9='\033[48;5;9m'
        THEME_BG_10='\033[48;5;10m'
        THEME_BG_11='\033[48;5;11m'
        THEME_BG_12='\033[48;5;12m'
        THEME_BG_13='\033[48;5;13m'
        THEME_BG_14='\033[48;5;14m'
        THEME_BG_15='\033[48;5;15m'
        PS1_CHAR='»'
        NEOFETCH_LOGO="${THEME_COL_2}  .--.
 |${THEME_COL_3}o  |${THEME_COL_2}
 |   |${THEME_COL_2}
 |${THEME_COL_3}\`-'${THEME_COL_2}/${THEME_RESET}"
        ;;
    catppuccin)
        THEME_TITLE='\033[38;5;223m'
        THEME_SUBTITLE='\033[38;5;223m'
        THEME_USER='\033[38;5;223m'
        THEME_HOST='\033[38;5;223m'
        THEME_OS='\033[38;5;111m'
        THEME_HOST_MODEL='\033[38;5;223m'
        THEME_KERNEL='\033[38;5;110m'
        THEME_UPTIME='\033[38;5;117m'
        THEME_SHELL='\033[38;5;110m'
        THEME_SHELL_VERSION='\033[38;5;117m'
        THEME_DE='\033[38;5;111m'
        THEME_WM='\033[38;5;110m'
        THEME_WM_THEME='\033[38;5;117m'
        THEME_TERMINAL='\033[38;5;111m'
        THEME_TERMINAL_FONT='\033[38;5;117m'
        THEME_CPU='\033[38;5;110m'
        THEME_CPU_USAGE='\033[38;5;117m'
        THEME_MEMORY='\033[38;5;110m'
        THEME_MEMORY_USAGE='\033[38;5;117m'
        THEME_DISK='\033[38;5;110m'
        THEME_DISK_USAGE='\033[38;5;117m'
        THEME_PATH='\033[38;5;109m'
        THEME_PROMPT='\033[38;5;223m'
        THEME_CMD_VALID='\033[38;5;142m'
        THEME_CMD_ALIAS='\033[38;5;208m'
        THEME_CMD_FUNC='\033[38;5;139m'
        THEME_CMD_BUILTIN='\033[38;5;109m'
        THEME_CMD_INVALID='\033[38;5;167m'
        THEME_ARG='\033[38;5;180m'
        THEME_FLAG='\033[38;5;139m'
        THEME_STRING='\033[38;5;208m'
        THEME_NUMBER='\033[38;5;109m'
        THEME_OPERATOR='\033[38;5;167m'
        THEME_BOLD='\033[1m'
        THEME_UNDERLINE='\033[4m'
        THEME_RESET='\033[0m'
        THEME_COL_0='\033[38;5;0m'
        THEME_COL_1='\033[38;5;1m'
        THEME_COL_2='\033[38;5;2m'
        THEME_COL_3='\033[38;5;3m'
        THEME_COL_4='\033[38;5;4m'
        THEME_COL_5='\033[38;5;5m'
        THEME_COL_6='\033[38;5;6m'
        THEME_COL_7='\033[38;5;7m'
        THEME_COL_8='\033[38;5;8m'
        THEME_COL_9='\033[38;5;9m'
        THEME_COL_10='\033[38;5;10m'
        THEME_COL_11='\033[38;5;11m'
        THEME_COL_12='\033[38;5;12m'
        THEME_COL_13='\033[38;5;13m'
        THEME_COL_14='\033[38;5;14m'
        THEME_COL_15='\033[38;5;15m'
        THEME_BG_0='\033[48;5;0m'
        THEME_BG_1='\033[48;5;1m'
        THEME_BG_2='\033[48;5;2m'
        THEME_BG_3='\033[48;5;3m'
        THEME_BG_4='\033[48;5;4m'
        THEME_BG_5='\033[48;5;5m'
        THEME_BG_6='\033[48;5;6m'
        THEME_BG_7='\033[48;5;7m'
        THEME_BG_8='\033[48;5;8m'
        THEME_BG_9='\033[48;5;9m'
        THEME_BG_10='\033[48;5;10m'
        THEME_BG_11='\033[48;5;11m'
        THEME_BG_12='\033[48;5;12m'
        THEME_BG_13='\033[48;5;13m'
        THEME_BG_14='\033[48;5;14m'
        THEME_BG_15='\033[48;5;15m'
        PS1_CHAR='❯'
        NEOFETCH_LOGO="${THEME_COL_4}     ▄▄▄▄▄▄▄▄
   ${THEME_COL_8}▄${THEME_COL_4}█████████████${THEME_COL_8}▄${THEME_COL_4}
  ${THEME_COL_8}█▀${THEME_COL_4}██▀▀▀▀▀██${THEME_COL_8}▀█${THEME_COL_4}██
 ${THEME_COL_8}█▀${THEME_COL_4}██${THEME_COL_12}    █${THEME_COL_4}██${THEME_COL_8}▀█${THEME_COL_4}██
 ${THEME_COL_8}█${THEME_COL_4}██${THEME_COL_12} ▄▄▄▄ ${THEME_COL_4}██${THEME_COL_8} █${THEME_COL_4}██
 ${THEME_COL_8}█▄${THEME_COL_4}██${THEME_COL_12}▀▀▀▀▀${THEME_COL_4}██${THEME_COL_8}▄█${THEME_COL_4}██
  ${THEME_COL_8}▀${THEME_COL_4}█████████████▀${THEME_COL_8}▀${THEME_COL_4}
    ▀▀▀▀▀▀▀▀▀▀▀${THEME_RESET}"
        ;;
    mocha)
        THEME_TITLE='\033[38;5;250m'
        THEME_SUBTITLE='\033[38;5;250m'
        THEME_USER='\033[38;5;223m'
        THEME_HOST='\033[38;5;250m'
        THEME_OS='\033[38;5;110m'
        THEME_HOST_MODEL='\033[38;5;223m'
        THEME_KERNEL='\033[38;5;117m'
        THEME_UPTIME='\033[38;5;109m'
        THEME_SHELL='\033[38;5;114m'
        THEME_SHELL_VERSION='\033[38;5;117m'
        THEME_DE='\033[38;5;110m'
        THEME_WM='\033[38;5;114m'
        THEME_WM_THEME='\033[38;5;117m'
        THEME_TERMINAL='\033[38;5;110m'
        THEME_TERMINAL_FONT='\033[38;5;117m'
        THEME_CPU='\033[38;5;114m'
        THEME_CPU_USAGE='\033[38;5;117m'
        THEME_MEMORY='\033[38;5;114m'
        THEME_MEMORY_USAGE='\033[38;5;117m'
        THEME_DISK='\033[38;5;114m'
        THEME_DISK_USAGE='\033[38;5;117m'
        THEME_PATH='\033[38;5;109m'
        THEME_PROMPT='\033[38;5;250m'
        THEME_CMD_VALID='\033[38;5;114m'
        THEME_CMD_ALIAS='\033[38;5;208m'
        THEME_CMD_FUNC='\033[38;5;139m'
        THEME_CMD_BUILTIN='\033[38;5;109m'
        THEME_CMD_INVALID='\033[38;5;204m'
        THEME_ARG='\033[38;5;250m'
        THEME_FLAG='\033[38;5;139m'
        THEME_STRING='\033[38;5;208m'
        THEME_NUMBER='\033[38;5;109m'
        THEME_OPERATOR='\033[38;5;250m'
        THEME_BOLD='\033[1m'
        THEME_UNDERLINE='\033[4m'
        THEME_RESET='\033[0m'
        THEME_COL_0='\033[38;5;0m'
        THEME_COL_1='\033[38;5;1m'
        THEME_COL_2='\033[38;5;2m'
        THEME_COL_3='\033[38;5;3m'
        THEME_COL_4='\033[38;5;4m'
        THEME_COL_5='\033[38;5;5m'
        THEME_COL_6='\033[38;5;6m'
        THEME_COL_7='\033[38;5;7m'
        THEME_COL_8='\033[38;5;8m'
        THEME_COL_9='\033[38;5;9m'
        THEME_COL_10='\033[38;5;10m'
        THEME_COL_11='\033[38;5;11m'
        THEME_COL_12='\033[38;5;12m'
        THEME_COL_13='\033[38;5;13m'
        THEME_COL_14='\033[38;5;14m'
        THEME_COL_15='\033[38;5;15m'
        THEME_BG_0='\033[48;5;0m'
        THEME_BG_1='\033[48;5;1m'
        THEME_BG_2='\033[48;5;2m'
        THEME_BG_3='\033[48;5;3m'
        THEME_BG_4='\033[48;5;4m'
        THEME_BG_5='\033[48;5;5m'
        THEME_BG_6='\033[48;5;6m'
        THEME_BG_7='\033[48;5;7m'
        THEME_BG_8='\033[48;5;8m'
        THEME_BG_9='\033[48;5;9m'
        THEME_BG_10='\033[48;5;10m'
        THEME_BG_11='\033[48;5;11m'
        THEME_BG_12='\033[48;5;12m'
        THEME_BG_13='\033[48;5;13m'
        THEME_BG_14='\033[48;5;14m'
        THEME_BG_15='\033[48;5;15m'
        PS1_CHAR='❯'
        NEOFETCH_LOGO="${THEME_COL_4}     ▄▄▄▄▄▄▄▄
   ${THEME_COL_8}▄${THEME_COL_4}█████████████${THEME_COL_8}▄${THEME_COL_4}
  ${THEME_COL_8}█▀${THEME_COL_4}██▀▀▀▀▀██${THEME_COL_8}▀█${THEME_COL_4}██
 ${THEME_COL_8}█▀${THEME_COL_4}██${THEME_COL_12}    █${THEME_COL_4}██${THEME_COL_8}▀█${THEME_COL_4}██
 ${THEME_COL_8}█${THEME_COL_4}██${THEME_COL_12} ▄▄▄▄ ${THEME_COL_4}██${THEME_COL_8} █${THEME_COL_4}██
 ${THEME_COL_8}█▄${THEME_COL_4}██${THEME_COL_12}▀▀▀▀▀${THEME_COL_4}██${THEME_COL_8}▄█${THEME_COL_4}██
  ${THEME_COL_8}▀${THEME_COL_4}█████████████▀${THEME_COL_8}▀${THEME_COL_4}
    ▀▀▀▀▀▀▀▀▀▀▀${THEME_RESET}"
        ;;
    macchiato)
        THEME_TITLE='\033[38;5;250m'
        THEME_SUBTITLE='\033[38;5;250m'
        THEME_USER='\033[38;5;223m'
        THEME_HOST='\033[38;5;250m'
        THEME_OS='\033[38;5;117m'
        THEME_HOST_MODEL='\033[38;5;223m'
        THEME_KERNEL='\033[38;5;117m'
        THEME_UPTIME='\033[38;5;110m'
        THEME_SHELL='\033[38;5;117m'
        THEME_SHELL_VERSION='\033[38;5;110m'
        THEME_DE='\033[38;5;117m'
        THEME_WM='\033[38;5;117m'
        THEME_WM_THEME='\033[38;5;110m'
        THEME_TERMINAL='\033[38;5;117m'
        THEME_TERMINAL_FONT='\033[38;5;110m'
        THEME_CPU='\033[38;5;117m'
        THEME_CPU_USAGE='\033[38;5;110m'
        THEME_MEMORY='\033[38;5;117m'
        THEME_MEMORY_USAGE='\033[38;5;110m'
        THEME_DISK='\033[38;5;117m'
        THEME_DISK_USAGE='\033[38;5;110m'
        THEME_PATH='\033[38;5;110m'
        THEME_PROMPT='\033[38;5;250m'
        THEME_CMD_VALID='\033[38;5;117m'
        THEME_CMD_ALIAS='\033[38;5;223m'
        THEME_CMD_FUNC='\033[38;5;139m'
        THEME_CMD_BUILTIN='\033[38;5;110m'
        THEME_CMD_INVALID='\033[38;5;204m'
        THEME_ARG='\033[38;5;250m'
        THEME_FLAG='\033[38;5;139m'
        THEME_STRING='\033[38;5;223m'
        THEME_NUMBER='\033[38;5;110m'
        THEME_OPERATOR='\033[38;5;250m'
        THEME_BOLD='\033[1m'
        THEME_UNDERLINE='\033[4m'
        THEME_RESET='\033[0m'
        THEME_COL_0='\033[38;5;0m'
        THEME_COL_1='\033[38;5;1m'
        THEME_COL_2='\033[38;5;2m'
        THEME_COL_3='\033[38;5;3m'
        THEME_COL_4='\033[38;5;4m'
        THEME_COL_5='\033[38;5;5m'
        THEME_COL_6='\033[38;5;6m'
        THEME_COL_7='\033[38;5;7m'
        THEME_COL_8='\033[38;5;8m'
        THEME_COL_9='\033[38;5;9m'
        THEME_COL_10='\033[38;5;10m'
        THEME_COL_11='\033[38;5;11m'
        THEME_COL_12='\033[38;5;12m'
        THEME_COL_13='\033[38;5;13m'
        THEME_COL_14='\033[38;5;14m'
        THEME_COL_15='\033[38;5;15m'
        THEME_BG_0='\033[48;5;0m'
        THEME_BG_1='\033[48;5;1m'
        THEME_BG_2='\033[48;5;2m'
        THEME_BG_3='\033[48;5;3m'
        THEME_BG_4='\033[48;5;4m'
        THEME_BG_5='\033[48;5;5m'
        THEME_BG_6='\033[48;5;6m'
        THEME_BG_7='\033[48;5;7m'
        THEME_BG_8='\033[48;5;8m'
        THEME_BG_9='\033[48;5;9m'
        THEME_BG_10='\033[48;5;10m'
        THEME_BG_11='\033[48;5;11m'
        THEME_BG_12='\033[48;5;12m'
        THEME_BG_13='\033[48;5;13m'
        THEME_BG_14='\033[48;5;14m'
        THEME_BG_15='\033[48;5;15m'
        PS1_CHAR='❯'
        NEOFETCH_LOGO="${THEME_COL_4}     ▄▄▄▄▄▄▄▄
   ${THEME_COL_8}▄${THEME_COL_4}█████████████${THEME_COL_8}▄${THEME_COL_4}
  ${THEME_COL_8}█▀${THEME_COL_4}██▀▀▀▀▀██${THEME_COL_8}▀█${THEME_COL_4}██
 ${THEME_COL_8}█▀${THEME_COL_4}██${THEME_COL_12}    █${THEME_COL_4}██${THEME_COL_8}▀█${THEME_COL_4}██
 ${THEME_COL_8}█${THEME_COL_4}██${THEME_COL_12} ▄▄▄▄ ${THEME_COL_4}██${THEME_COL_8} █${THEME_COL_4}██
 ${THEME_COL_8}█▄${THEME_COL_4}██${THEME_COL_12}▀▀▀▀▀${THEME_COL_4}██${THEME_COL_8}▄█${THEME_COL_4}██
  ${THEME_COL_8}▀${THEME_COL_4}█████████████▀${THEME_COL_8}▀${THEME_COL_4}
    ▀▀▀▀▀▀▀▀▀▀▀${THEME_RESET}"
        ;;
    frappe)
        THEME_TITLE='\033[38;5;252m'
        THEME_SUBTITLE='\033[38;5;252m'
        THEME_USER='\033[38;5;223m'
        THEME_HOST='\033[38;5;252m'
        THEME_OS='\033[38;5;117m'
        THEME_HOST_MODEL='\033[38;5;223m'
        THEME_KERNEL='\033[38;5;109m'
        THEME_UPTIME='\033[38;5;117m'
        THEME_SHELL='\033[38;5;109m'
        THEME_SHELL_VERSION='\033[38;5;117m'
        THEME_DE='\033[38;5;117m'
        THEME_WM='\033[38;5;109m'
        THEME_WM_THEME='\033[38;5;117m'
        THEME_TERMINAL='\033[38;5;117m'
        THEME_TERMINAL_FONT='\033[38;5;117m'
        THEME_CPU='\033[38;5;109m'
        THEME_CPU_USAGE='\033[38;5;117m'
        THEME_MEMORY='\033[38;5;109m'
        THEME_MEMORY_USAGE='\033[38;5;117m'
        THEME_DISK='\033[38;5;109m'
        THEME_DISK_USAGE='\033[38;5;117m'
        THEME_PATH='\033[38;5;117m'
        THEME_PROMPT='\033[38;5;252m'
        THEME_CMD_VALID='\033[38;5;109m'
        THEME_CMD_ALIAS='\033[38;5;223m'
        THEME_CMD_FUNC='\033[38;5;139m'
        THEME_CMD_BUILTIN='\033[38;5;117m'
        THEME_CMD_INVALID='\033[38;5;204m'
        THEME_ARG='\033[38;5;252m'
        THEME_FLAG='\033[38;5;139m'
        THEME_STRING='\033[38;5;223m'
        THEME_NUMBER='\033[38;5;117m'
        THEME_OPERATOR='\033[38;5;252m'
        THEME_BOLD='\033[1m'
        THEME_UNDERLINE='\033[4m'
        THEME_RESET='\033[0m'
        THEME_COL_0='\033[38;5;0m'
        THEME_COL_1='\033[38;5;1m'
        THEME_COL_2='\033[38;5;2m'
        THEME_COL_3='\033[38;5;3m'
        THEME_COL_4='\033[38;5;4m'
        THEME_COL_5='\033[38;5;5m'
        THEME_COL_6='\033[38;5;6m'
        THEME_COL_7='\033[38;5;7m'
        THEME_COL_8='\033[38;5;8m'
        THEME_COL_9='\033[38;5;9m'
        THEME_COL_10='\033[38;5;10m'
        THEME_COL_11='\033[38;5;11m'
        THEME_COL_12='\033[38;5;12m'
        THEME_COL_13='\033[38;5;13m'
        THEME_COL_14='\033[38;5;14m'
        THEME_COL_15='\033[38;5;15m'
        THEME_BG_0='\033[48;5;0m'
        THEME_BG_1='\033[48;5;1m'
        THEME_BG_2='\033[48;5;2m'
        THEME_BG_3='\033[48;5;3m'
        THEME_BG_4='\033[48;5;4m'
        THEME_BG_5='\033[48;5;5m'
        THEME_BG_6='\033[48;5;6m'
        THEME_BG_7='\033[48;5;7m'
        THEME_BG_8='\033[48;5;8m'
        THEME_BG_9='\033[48;5;9m'
        THEME_BG_10='\033[48;5;10m'
        THEME_BG_11='\033[48;5;11m'
        THEME_BG_12='\033[48;5;12m'
        THEME_BG_13='\033[48;5;13m'
        THEME_BG_14='\033[48;5;14m'
        THEME_BG_15='\033[48;5;15m'
        PS1_CHAR='❯'
        NEOFETCH_LOGO="${THEME_COL_4}     ▄▄▄▄▄▄▄▄
   ${THEME_COL_8}▄${THEME_COL_4}█████████████${THEME_COL_8}▄${THEME_COL_4}
  ${THEME_COL_8}█▀${THEME_COL_4}██▀▀▀▀▀██${THEME_COL_8}▀█${THEME_COL_4}██
 ${THEME_COL_8}█▀${THEME_COL_4}██${THEME_COL_12}    █${THEME_COL_4}██${THEME_COL_8}▀█${THEME_COL_4}██
 ${THEME_COL_8}█${THEME_COL_4}██${THEME_COL_12} ▄▄▄▄ ${THEME_COL_4}██${THEME_COL_8} █${THEME_COL_4}██
 ${THEME_COL_8}█▄${THEME_COL_4}██${THEME_COL_12}▀▀▀▀▀${THEME_COL_4}██${THEME_COL_8}▄█${THEME_COL_4}██
  ${THEME_COL_8}▀${THEME_COL_4}█████████████▀${THEME_COL_8}▀${THEME_COL_4}
    ▀▀▀▀▀▀▀▀▀▀▀${THEME_RESET}"
        ;;
    latte)
        THEME_TITLE='\033[38;5;0m'
        THEME_SUBTITLE='\033[38;5;0m'
        THEME_USER='\033[38;5;0m'
        THEME_HOST='\033[38;5;0m'
        THEME_OS='\033[38;5;24m'
        THEME_HOST_MODEL='\033[38;5;0m'
        THEME_KERNEL='\033[38;5;24m'
        THEME_UPTIME='\033[38;5;30m'
        THEME_SHELL='\033[38;5;24m'
        THEME_SHELL_VERSION='\033[38;5;30m'
        THEME_DE='\033[38;5;24m'
        THEME_WM='\033[38;5;24m'
        THEME_WM_THEME='\033[38;5;30m'
        THEME_TERMINAL='\033[38;5;24m'
        THEME_TERMINAL_FONT='\033[38;5;30m'
        THEME_CPU='\033[38;5;24m'
        THEME_CPU_USAGE='\033[38;5;30m'
        THEME_MEMORY='\033[38;5;24m'
        THEME_MEMORY_USAGE='\033[38;5;30m'
        THEME_DISK='\033[38;5;24m'
        THEME_DISK_USAGE='\033[38;5;30m'
        THEME_PATH='\033[38;5;30m'
        THEME_PROMPT='\033[38;5;0m'
        THEME_CMD_VALID='\033[38;5;24m'
        THEME_CMD_ALIAS='\033[38;5;166m'
        THEME_CMD_FUNC='\033[38;5;96m'
        THEME_CMD_BUILTIN='\033[38;5;30m'
        THEME_CMD_INVALID='\033[38;5;1m'
        THEME_ARG='\033[38;5;0m'
        THEME_FLAG='\033[38;5;96m'
        THEME_STRING='\033[38;5;166m'
        THEME_NUMBER='\033[38;5;30m'
        THEME_OPERATOR='\033[38;5;0m'
        THEME_BOLD='\033[1m'
        THEME_UNDERLINE='\033[4m'
        THEME_RESET='\033[0m'
        THEME_COL_0='\033[38;5;0m'
        THEME_COL_1='\033[38;5;1m'
        THEME_COL_2='\033[38;5;2m'
        THEME_COL_3='\033[38;5;3m'
        THEME_COL_4='\033[38;5;4m'
        THEME_COL_5='\033[38;5;5m'
        THEME_COL_6='\033[38;5;6m'
        THEME_COL_7='\033[38;5;7m'
        THEME_COL_8='\033[38;5;8m'
        THEME_COL_9='\033[38;5;9m'
        THEME_COL_10='\033[38;5;10m'
        THEME_COL_11='\033[38;5;11m'
        THEME_COL_12='\033[38;5;12m'
        THEME_COL_13='\033[38;5;13m'
        THEME_COL_14='\033[38;5;14m'
        THEME_COL_15='\033[38;5;15m'
        THEME_BG_0='\033[48;5;0m'
        THEME_BG_1='\033[48;5;1m'
        THEME_BG_2='\033[48;5;2m'
        THEME_BG_3='\033[48;5;3m'
        THEME_BG_4='\033[48;5;4m'
        THEME_BG_5='\033[48;5;5m'
        THEME_BG_6='\033[48;5;6m'
        THEME_BG_7='\033[48;5;7m'
        THEME_BG_8='\033[48;5;8m'
        THEME_BG_9='\033[48;5;9m'
        THEME_BG_10='\033[48;5;10m'
        THEME_BG_11='\033[48;5;11m'
        THEME_BG_12='\033[48;5;12m'
        THEME_BG_13='\033[48;5;13m'
        THEME_BG_14='\033[48;5;14m'
        THEME_BG_15='\033[48;5;15m'
        PS1_CHAR='❯'
        NEOFETCH_LOGO="${THEME_COL_4}     ▄▄▄▄▄▄▄▄
   ${THEME_COL_8}▄${THEME_COL_4}█████████████${THEME_COL_8}▄${THEME_COL_4}
  ${THEME_COL_8}█▀${THEME_COL_4}██▀▀▀▀▀██${THEME_COL_8}▀█${THEME_COL_4}██
 ${THEME_COL_8}█▀${THEME_COL_4}██${THEME_COL_12}    █${THEME_COL_4}██${THEME_COL_8}▀█${THEME_COL_4}██
 ${THEME_COL_8}█${THEME_COL_4}██${THEME_COL_12} ▄▄▄▄ ${THEME_COL_4}██${THEME_COL_8} █${THEME_COL_4}██
 ${THEME_COL_8}█▄${THEME_COL_4}██${THEME_COL_12}▀▀▀▀▀${THEME_COL_4}██${THEME_COL_8}▄█${THEME_COL_4}██
  ${THEME_COL_8}▀${THEME_COL_4}█████████████▀${THEME_COL_8}▀${THEME_COL_4}
    ▀▀▀▀▀▀▀▀▀▀▀${THEME_RESET}"
        ;;
    tokyo)
        THEME_TITLE='\033[38;5;15m'
        THEME_SUBTITLE='\033[38;5;15m'
        THEME_USER='\033[38;5;15m'
        THEME_HOST='\033[38;5;15m'
        THEME_OS='\033[38;5;9m'
        THEME_HOST_MODEL='\033[38;5;15m'
        THEME_KERNEL='\033[38;5;15m'
        THEME_UPTIME='\033[38;5;14m'
        THEME_SHELL='\033[38;5;10m'
        THEME_SHELL_VERSION='\033[38;5;14m'
        THEME_DE='\033[38;5;9m'
        THEME_WM='\033[38;5;10m'
        THEME_WM_THEME='\033[38;5;14m'
        THEME_TERMINAL='\033[38;5;9m'
        THEME_TERMINAL_FONT='\033[38;5;14m'
        THEME_CPU='\033[38;5;10m'
        THEME_CPU_USAGE='\033[38;5;14m'
        THEME_MEMORY='\033[38;5;10m'
        THEME_MEMORY_USAGE='\033[38;5;14m'
        THEME_DISK='\033[38;5;10m'
        THEME_DISK_USAGE='\033[38;5;14m'
        THEME_PATH='\033[38;5;14m'
        THEME_PROMPT='\033[38;5;15m'
        THEME_CMD_VALID='\033[38;5;142m'
        THEME_CMD_ALIAS='\033[38;5;208m'
        THEME_CMD_FUNC='\033[38;5;139m'
        THEME_CMD_BUILTIN='\033[38;5;109m'
        THEME_CMD_INVALID='\033[38;5;167m'
        THEME_ARG='\033[38;5;180m'
        THEME_FLAG='\033[38;5;139m'
        THEME_STRING='\033[38;5;208m'
        THEME_NUMBER='\033[38;5;109m'
        THEME_OPERATOR='\033[38;5;167m'
        THEME_BOLD='\033[1m'
        THEME_UNDERLINE='\033[4m'
        THEME_RESET='\033[0m'
        THEME_COL_0='\033[38;5;0m'
        THEME_COL_1='\033[38;5;1m'
        THEME_COL_2='\033[38;5;2m'
        THEME_COL_3='\033[38;5;3m'
        THEME_COL_4='\033[38;5;4m'
        THEME_COL_5='\033[38;5;5m'
        THEME_COL_6='\033[38;5;6m'
        THEME_COL_7='\033[38;5;7m'
        THEME_COL_8='\033[38;5;8m'
        THEME_COL_9='\033[38;5;9m'
        THEME_COL_10='\033[38;5;10m'
        THEME_COL_11='\033[38;5;11m'
        THEME_COL_12='\033[38;5;12m'
        THEME_COL_13='\033[38;5;13m'
        THEME_COL_14='\033[38;5;14m'
        THEME_COL_15='\033[38;5;15m'
        THEME_BG_0='\033[48;5;0m'
        THEME_BG_1='\033[48;5;1m'
        THEME_BG_2='\033[48;5;2m'
        THEME_BG_3='\033[48;5;3m'
        THEME_BG_4='\033[48;5;4m'
        THEME_BG_5='\033[48;5;5m'
        THEME_BG_6='\033[48;5;6m'
        THEME_BG_7='\033[48;5;7m'
        THEME_BG_8='\033[48;5;8m'
        THEME_BG_9='\033[48;5;9m'
        THEME_BG_10='\033[48;5;10m'
        THEME_BG_11='\033[48;5;11m'
        THEME_BG_12='\033[48;5;12m'
        THEME_BG_13='\033[48;5;13m'
        THEME_BG_14='\033[48;5;14m'
        THEME_BG_15='\033[48;5;15m'
        PS1_CHAR='❯'
        NEOFETCH_LOGO="${THEME_COL_0}████████
████████${THEME_COL_9}██${THEME_RESET}"
        ;;
    monokai)
        THEME_TITLE='\033[38;5;15m'
        THEME_SUBTITLE='\033[38;5;15m'
        THEME_USER='\033[38;5;15m'
        THEME_HOST='\033[38;5;15m'
        THEME_OS='\033[38;5;2m'
        THEME_HOST_MODEL='\033[38;5;15m'
        THEME_KERNEL='\033[38;5;15m'
        THEME_UPTIME='\033[38;5;3m'
        THEME_SHELL='\033[38;5;2m'
        THEME_SHELL_VERSION='\033[38;5;3m'
        THEME_DE='\033[38;5;2m'
        THEME_WM='\033[38;5;2m'
        THEME_WM_THEME='\033[38;5;3m'
        THEME_TERMINAL='\033[38;5;2m'
        THEME_TERMINAL_FONT='\033[38;5;3m'
        THEME_CPU='\033[38;5;2m'
        THEME_CPU_USAGE='\033[38;5;3m'
        THEME_MEMORY='\033[38;5;2m'
        THEME_MEMORY_USAGE='\033[38;5;3m'
        THEME_DISK='\033[38;5;2m'
        THEME_DISK_USAGE='\033[38;5;3m'
        THEME_PATH='\033[38;5;3m'
        THEME_PROMPT='\033[38;5;15m'
        THEME_CMD_VALID='\033[38;5;142m'
        THEME_CMD_ALIAS='\033[38;5;208m'
        THEME_CMD_FUNC='\033[38;5;139m'
        THEME_CMD_BUILTIN='\033[38;5;109m'
        THEME_CMD_INVALID='\033[38;5;167m'
        THEME_ARG='\033[38;5;180m'
        THEME_FLAG='\033[38;5;139m'
        THEME_STRING='\033[38;5;208m'
        THEME_NUMBER='\033[38;5;109m'
        THEME_OPERATOR='\033[38;5;167m'
        THEME_BOLD='\033[1m'
        THEME_UNDERLINE='\033[4m'
        THEME_RESET='\033[0m'
        THEME_COL_0='\033[38;5;0m'
        THEME_COL_1='\033[38;5;1m'
        THEME_COL_2='\033[38;5;2m'
        THEME_COL_3='\033[38;5;3m'
        THEME_COL_4='\033[38;5;4m'
        THEME_COL_5='\033[38;5;5m'
        THEME_COL_6='\033[38;5;6m'
        THEME_COL_7='\033[38;5;7m'
        THEME_COL_8='\033[38;5;8m'
        THEME_COL_9='\033[38;5;9m'
        THEME_COL_10='\033[38;5;10m'
        THEME_COL_11='\033[38;5;11m'
        THEME_COL_12='\033[38;5;12m'
        THEME_COL_13='\033[38;5;13m'
        THEME_COL_14='\033[38;5;14m'
        THEME_COL_15='\033[38;5;15m'
        THEME_BG_0='\033[48;5;0m'
        THEME_BG_1='\033[48;5;1m'
        THEME_BG_2='\033[48;5;2m'
        THEME_BG_3='\033[48;5;3m'
        THEME_BG_4='\033[48;5;4m'
        THEME_BG_5='\033[48;5;5m'
        THEME_BG_6='\033[48;5;6m'
        THEME_BG_7='\033[48;5;7m'
        THEME_BG_8='\033[48;5;8m'
        THEME_BG_9='\033[48;5;9m'
        THEME_BG_10='\033[48;5;10m'
        THEME_BG_11='\033[48;5;11m'
        THEME_BG_12='\033[48;5;12m'
        THEME_BG_13='\033[48;5;13m'
        THEME_BG_14='\033[48;5;14m'
        THEME_BG_15='\033[48;5;15m'
        PS1_CHAR='▶'
        NEOFETCH_LOGO="${THEME_COL_1}███${THEME_COL_5}███${THEME_COL_9}███
${THEME_COL_1}███${THEME_COL_5}███${THEME_COL_9}███
${THEME_COL_1}███${THEME_COL_5}███${THEME_COL_9}███
${THEME_COL_1}███${THEME_COL_5}███${THEME_COL_9}███
${THEME_COL_1}███${THEME_COL_5}███${THEME_COL_9}███${THEME_RESET}"
        ;;
    solarized)
        THEME_TITLE='\033[38;5;15m'
        THEME_SUBTITLE='\033[38;5;15m'
        THEME_USER='\033[38;5;15m'
        THEME_HOST='\033[38;5;15m'
        THEME_OS='\033[38;5;2m'
        THEME_HOST_MODEL='\033[38;5;15m'
        THEME_KERNEL='\033[38;5;15m'
        THEME_UPTIME='\033[38;5;3m'
        THEME_SHELL='\033[38;5;2m'
        THEME_SHELL_VERSION='\033[38;5;3m'
        THEME_DE='\033[38;5;2m'
        THEME_WM='\033[38;5;2m'
        THEME_WM_THEME='\033[38;5;3m'
        THEME_TERMINAL='\033[38;5;2m'
        THEME_TERMINAL_FONT='\033[38;5;3m'
        THEME_CPU='\033[38;5;2m'
        THEME_CPU_USAGE='\033[38;5;3m'
        THEME_MEMORY='\033[38;5;2m'
        THEME_MEMORY_USAGE='\033[38;5;3m'
        THEME_DISK='\033[38;5;2m'
        THEME_DISK_USAGE='\033[38;5;3m'
        THEME_PATH='\033[38;5;3m'
        THEME_PROMPT='\033[38;5;15m'
        THEME_CMD_VALID='\033[38;5;142m'
        THEME_CMD_ALIAS='\033[38;5;208m'
        THEME_CMD_FUNC='\033[38;5;139m'
        THEME_CMD_BUILTIN='\033[38;5;109m'
        THEME_CMD_INVALID='\033[38;5;167m'
        THEME_ARG='\033[38;5;180m'
        THEME_FLAG='\033[38;5;139m'
        THEME_STRING='\033[38;5;208m'
        THEME_NUMBER='\033[38;5;109m'
        THEME_OPERATOR='\033[38;5;167m'
        THEME_BOLD='\033[1m'
        THEME_UNDERLINE='\033[4m'
        THEME_RESET='\033[0m'
        THEME_COL_0='\033[38;5;0m'
        THEME_COL_1='\033[38;5;1m'
        THEME_COL_2='\033[38;5;2m'
        THEME_COL_3='\033[38;5;3m'
        THEME_COL_4='\033[38;5;4m'
        THEME_COL_5='\033[38;5;5m'
        THEME_COL_6='\033[38;5;6m'
        THEME_COL_7='\033[38;5;7m'
        THEME_COL_8='\033[38;5;8m'
        THEME_COL_9='\033[38;5;9m'
        THEME_COL_10='\033[38;5;10m'
        THEME_COL_11='\033[38;5;11m'
        THEME_COL_12='\033[38;5;12m'
        THEME_COL_13='\033[38;5;13m'
        THEME_COL_14='\033[38;5;14m'
        THEME_COL_15='\033[38;5;15m'
        THEME_BG_0='\033[48;5;0m'
        THEME_BG_1='\033[48;5;1m'
        THEME_BG_2='\033[48;5;2m'
        THEME_BG_3='\033[48;5;3m'
        THEME_BG_4='\033[48;5;4m'
        THEME_BG_5='\033[48;5;5m'
        THEME_BG_6='\033[48;5;6m'
        THEME_BG_7='\033[48;5;7m'
        THEME_BG_8='\033[48;5;8m'
        THEME_BG_9='\033[48;5;9m'
        THEME_BG_10='\033[48;5;10m'
        THEME_BG_11='\033[48;5;11m'
        THEME_BG_12='\033[48;5;12m'
        THEME_BG_13='\033[48;5;13m'
        THEME_BG_14='\033[48;5;14m'
        THEME_BG_15='\033[48;5;15m'
        PS1_CHAR='❯'
        NEOFETCH_LOGO="${THEME_COL_4}     .:/+oo+/.
${THEME_COL_4}   .:+oooooooo+:.
${THEME_COL_4} .:+oooooooo+oooo+:
${THEME_COL_4}:+oooooooo+:..${THEME_COL_8}oooooo${THEME_COL_4}+:
${THEME_COL_4}+oooooo+:.${THEME_COL_8}oo${THEME_COL_4}++${THEME_COL_8}oo${THEME_COL_4}+oooo+:
${THEME_COL_4}+ooooo+:.${THEME_COL_8}oo${THEME_COL_4}+++++${THEME_COL_8}oo${THEME_COL_4}+oooo+:
${THEME_COL_4}+oooo:.${THEME_COL_8}oo${THEME_COL_4}+++++++++${THEME_COL_8}oo${THEME_COL_4}:oooo+:
${THEME_COL_4}+oo+:.${THEME_COL_8}oo${THEME_COL_4}+++++++++++${THEME_COL_8}oo${THEME_COL_4}:+ooo+:
${THEME_COL_4}+o:..${THEME_COL_8}oo${THEME_COL_4}+++++++++++++${THEME_COL_8}oo${THEME_COL_4}..:o+:
${THEME_COL_4}::..${THEME_COL_8}oo${THEME_COL_4}+++++++++++++++${THEME_COL_8}oo${THEME_COL_4}..:::
${THEME_COL_4}   ${THEME_COL_8}:ooooooooooooooooooo:
${THEME_COL_4}    .:+ooooooooooooo+.
${THEME_COL_4}      .:+oooooooo+:.${THEME_RESET}"
        ;;
    *)
        THEME_TITLE='\033[32m'
        THEME_SUBTITLE='\033[32m'
        THEME_USER='\033[32m'
        THEME_HOST='\033[35m'
        THEME_OS='\033[32m'
        THEME_HOST_MODEL='\033[35m'
        THEME_KERNEL='\033[34m'
        THEME_UPTIME='\033[33m'
        THEME_SHELL='\033[32m'
        THEME_SHELL_VERSION='\033[33m'
        THEME_DE='\033[32m'
        THEME_WM='\033[35m'
        THEME_WM_THEME='\033[33m'
        THEME_TERMINAL='\033[32m'
        THEME_TERMINAL_FONT='\033[33m'
        THEME_CPU='\033[32m'
        THEME_CPU_USAGE='\033[33m'
        THEME_MEMORY='\033[32m'
        THEME_MEMORY_USAGE='\033[33m'
        THEME_DISK='\033[32m'
        THEME_DISK_USAGE='\033[33m'
        THEME_PATH='\033[34m'
        THEME_PROMPT='\033[33m'
        THEME_CMD_VALID='\033[32m'
        THEME_CMD_ALIAS='\033[33m'
        THEME_CMD_FUNC='\033[35m'
        THEME_CMD_BUILTIN='\033[34m'
        THEME_CMD_INVALID='\033[31m'
        THEME_ARG='\033[33m'
        THEME_FLAG='\033[36m'
        THEME_STRING='\033[33m'
        THEME_NUMBER='\033[32m'
        THEME_OPERATOR='\033[31m'
        THEME_BOLD='\033[1m'
        THEME_UNDERLINE='\033[4m'
        THEME_RESET='\033[0m'
        THEME_COL_0='\033[30m'
        THEME_COL_1='\033[31m'
        THEME_COL_2='\033[32m'
        THEME_COL_3='\033[33m'
        THEME_COL_4='\033[34m'
        THEME_COL_5='\033[35m'
        THEME_COL_6='\033[36m'
        THEME_COL_7='\033[37m'
        THEME_COL_8='\033[90m'
        THEME_COL_9='\033[91m'
        THEME_COL_10='\033[92m'
        THEME_COL_11='\033[93m'
        THEME_COL_12='\033[94m'
        THEME_COL_13='\033[95m'
        THEME_COL_14='\033[96m'
        THEME_COL_15='\033[97m'
        THEME_BG_0='\033[40m'
        THEME_BG_1='\033[41m'
        THEME_BG_2='\033[42m'
        THEME_BG_3='\033[43m'
        THEME_BG_4='\033[44m'
        THEME_BG_5='\033[45m'
        THEME_BG_6='\033[46m'
        THEME_BG_7='\033[47m'
        THEME_BG_8='\033[100m'
        THEME_BG_9='\033[101m'
        THEME_BG_10='\033[102m'
        THEME_BG_11='\033[103m'
        THEME_BG_12='\033[104m'
        THEME_BG_13='\033[105m'
        THEME_BG_14='\033[106m'
        THEME_BG_15='\033[107m'
        PS1_CHAR='➜'
        NEOFETCH_LOGO="
   .--.
  |o_o |
  |:_/ |
 //   \\ \\
(|     | )
/'\\_   _/\`\\
\\___)=(___/${THEME_RESET}"
        ;;
esac

export PS1="${THEME_USER}\u${THEME_RESET}@${THEME_HOST}\h${THEME_RESET}:${THEME_PATH}\w${THEME_RESET}${THEME_PROMPT}${PS1_CHAR}${THEME_RESET} "

# ═══════════════════════════════════════════════════════════════
# SYNTAX HIGHLIGHTING
# ═══════════════════════════════════════════════════════════════

_colorize_cmd() {
    local cmd="$1"
    case "$cmd" in
        cd|pwd|echo|printf|alias|unalias|export|read|set|shift|if|then|else|elif|fi|for|while|do|done|case|esac|break|continue|return|exit|eval|exec|source|type|test|kill|jobs|fg|bg|wait|hash|readonly|let|true|false|trap|umask|unset|getopts)
            printf "%b%s%b" "$THEME_CMD_BUILTIN" "$cmd" "$THEME_RESET"
            ;;
        *)
            if alias "$cmd" >/dev/null 2>&1; then
                printf "%b%s%b" "$THEME_CMD_ALIAS" "$cmd" "$THEME_RESET"
            elif type "$cmd" 2>/dev/null | grep -q "function"; then
                printf "%b%s%b" "$THEME_CMD_FUNC" "$cmd" "$THEME_RESET"
            elif command -v "$cmd" >/dev/null 2>&1; then
                printf "%b%s%b" "$THEME_CMD_VALID" "$cmd" "$THEME_RESET"
            else
                printf "%b%s%b" "$THEME_CMD_INVALID" "$cmd" "$THEME_RESET"
            fi
            ;;
    esac
}

_colorize_token() {
    local token="$1"
    local first_char

    first_char=$(printf '%.1s' "$token")

    case "$first_char" in
        '"'|"'")
            printf "%b%s%b" "$THEME_STRING" "$token" "$THEME_RESET"
            ;;
        -)
            printf "%b%s%b" "$THEME_FLAG" "$token" "$THEME_RESET"
            ;;
        '|'|'&'|';'|'>'|'<')
            printf "%b%s%b" "$THEME_OPERATOR" "$token" "$THEME_RESET"
            ;;
        0|1|2|3|4|5|6|7|8|9)
            printf "%b%s%b" "$THEME_NUMBER" "$token" "$THEME_RESET"
            ;;
        *)
            printf "%b%s%b" "$THEME_ARG" "$token" "$THEME_RESET"
            ;;
    esac
}

_highlight_line() {
    local input="$*"
    local len="${#input}"
    local pos=0
    local expect_cmd=1
    local token=""
    local char=""
    local sep=""
    local qchar=""
    local next=""

    while [ "$pos" -lt "$len" ]; do
        char=$(printf '%s' "$input" | cut -c$((pos + 1)))
        pos=$((pos + 1))

        if [ "$char" = " " ] || [ "$char" = "	" ]; then
            if [ -n "$token" ]; then
                if [ "$expect_cmd" -eq 1 ]; then
                    printf "%s" "$sep"
                    _colorize_cmd "$token"
                    expect_cmd=0
                else
                    printf "%s" "$sep"
                    _colorize_token "$token"
                fi
                sep=""
                token=""
            fi
            sep="${sep}${char}"
            continue
        fi

        if [ "$char" = '"' ] || [ "$char" = "'" ]; then
            qchar="$char"
            token="${token}${char}"
            while [ "$pos" -lt "$len" ]; do
                char=$(printf '%s' "$input" | cut -c$((pos + 1)))
                pos=$((pos + 1))
                token="${token}${char}"
                [ "$char" = "$qchar" ] && break
            done
            continue
        fi

        case "$char" in
            '|'|';')
                if [ -n "$token" ]; then
                    if [ "$expect_cmd" -eq 1 ]; then
                        printf "%s" "$sep"
                        _colorize_cmd "$token"
                    else
                        printf "%s" "$sep"
                        _colorize_token "$token"
                    fi
                    sep=""
                    token=""
                fi
                next=""
                [ "$pos" -lt "$len" ] && next=$(printf '%s' "$input" | cut -c$((pos + 1)))
                if [ "$char" = "|" ] && [ "$next" = "|" ]; then
                    printf "%s%b||%b" "$sep" "$THEME_OPERATOR" "$THEME_RESET"
                    pos=$((pos + 1))
                elif [ "$char" = "|" ] && [ "$next" = "&" ]; then
                    printf "%s%b|&%b" "$sep" "$THEME_OPERATOR" "$THEME_RESET"
                    pos=$((pos + 1))
                elif [ "$char" = ";" ] && [ "$next" = ";" ]; then
                    printf "%s%b;;%b" "$sep" "$THEME_OPERATOR" "$THEME_RESET"
                    pos=$((pos + 1))
                else
                    printf "%s%b%s%b" "$sep" "$THEME_OPERATOR" "$char" "$THEME_RESET"
                fi
                sep=""
                expect_cmd=1
                continue
                ;;
            '&')
                if [ -n "$token" ]; then
                    if [ "$expect_cmd" -eq 1 ]; then
                        printf "%s" "$sep"
                        _colorize_cmd "$token"
                    else
                        printf "%s" "$sep"
                        _colorize_token "$token"
                    fi
                    sep=""
                    token=""
                fi
                next=""
                [ "$pos" -lt "$len" ] && next=$(printf '%s' "$input" | cut -c$((pos + 1)))
                if [ "$next" = "&" ]; then
                    printf "%s%b&&%b" "$sep" "$THEME_OPERATOR" "$THEME_RESET"
                    pos=$((pos + 1))
                else
                    printf "%s%b&%b" "$sep" "$THEME_OPERATOR" "$THEME_RESET"
                fi
                sep=""
                expect_cmd=1
                continue
                ;;
            '>'|'<')
                if [ -n "$token" ]; then
                    if [ "$expect_cmd" -eq 1 ]; then
                        printf "%s" "$sep"
                        _colorize_cmd "$token"
                    else
                        printf "%s" "$sep"
                        _colorize_token "$token"
                    fi
                    sep=""
                    token=""
                fi
                next=""
                [ "$pos" -lt "$len" ] && next=$(printf '%s' "$input" | cut -c$((pos + 1)))
                if [ "$char" = ">" ] && [ "$next" = ">" ]; then
                    printf "%s%b>>%b" "$sep" "$THEME_OPERATOR" "$THEME_RESET"
                    pos=$((pos + 1))
                elif [ "$char" = "<" ] && [ "$next" = "<" ]; then
                    printf "%s%b<<%b" "$sep" "$THEME_OPERATOR" "$THEME_RESET"
                    pos=$((pos + 1))
                else
                    printf "%s%b%s%b" "$sep" "$THEME_OPERATOR" "$char" "$THEME_RESET"
                fi
                sep=""
                continue
                ;;
        esac

        token="${token}${char}"
    done

    if [ -n "$token" ]; then
        if [ "$expect_cmd" -eq 1 ]; then
            printf "%s" "$sep"
            _colorize_cmd "$token"
        else
            printf "%s" "$sep"
            _colorize_token "$token"
        fi
    fi

    printf "\n"
}

# ═══════════════════════════════════════════════════════════════
# BASH-ONLY FEATURES (inside eval to avoid ash parsing errors)
# ═══════════════════════════════════════════════════════════════
if [ -n "$BASH_VERSION" ]; then
    eval '
    _rtsh_last_cmd=""
    _rtsh_trap_enabled=0

    _rtsh_enable() {
        trap "_rtsh_last_cmd=\"${BASH_COMMAND}\"; _rtsh_trap_enabled=1" DEBUG
    }

    _rtsh_prompt_cmd() {
        if [ "$_rtsh_trap_enabled" -eq 1 ] && [ -n "$_rtsh_last_cmd" ]; then
            printf "%b" "$(printf "%b" "$THEME_PROMPT")$(printf "%b" "$PS1_CHAR")$(printf "%b" "$THEME_RESET") "
            _highlight_line "$_rtsh_last_cmd" 2>/dev/null
            _rtsh_last_cmd=""
        fi
    }

    highlight() {
        _highlight_line "$*"
    }

    run() {
        printf "%b> %b" "$THEME_PROMPT" "$THEME_RESET"
        _highlight_line "$*"
        eval "$*"
    }

    topcpu() {
        printf "${THEME_USER}Top CPU consumers:${THEME_RESET}\n"
        ps aux | sort -nrk 3,3 | head -n 6
    }

    topmem() {
        printf "${THEME_USER}Top Memory consumers:${THEME_RESET}\n"
        ps aux | sort -nrk 4,4 | head -n 6
    }

    myip() {
        printf "${THEME_USER}IP Address:${THEME_RESET} ${THEME_HOST}$(hostname -I)${THEME_RESET}\n"
    }

    gs() {
        printf "${THEME_USER}Git Status:${THEME_RESET}\n"
        git status
    }

    _neofetch_get_cpu_model() {
        local cpu_model="Unknown"
        if [ -f /proc/cpuinfo ]; then
            cpu_model=$(grep -m1 "model name" /proc/cpuinfo 2>/dev/null | cut -d: -f2 | sed "s/^ *//")
            [ -z "$cpu_model" ] && cpu_model=$(grep -m1 "Hardware" /proc/cpuinfo 2>/dev/null | cut -d: -f2 | sed "s/^ *//")
        fi
        printf "%s" "$cpu_model"
    }

    _neofetch_get_cpu_usage() {
        local cpu_usage="0%"
        if [ -f /proc/stat ]; then
            local total1 idle1 total2 idle2
            read -r total1 idle1 < /proc/stat
            sleep 0.5
            read -r total2 idle2 < /proc/stat
            local total_delta=$((total2 - total1))
            local idle_delta=$((idle2 - idle1))
            if [ "$total_delta" -gt 0 ]; then
                cpu_usage=$((100 * (total_delta - idle_delta) / total_delta))
                cpu_usage="${cpu_usage}%"
            fi
        fi
        printf "%s" "$cpu_usage"
    }

    _neofetch_get_memory() {
        local mem_total mem_available mem_used mem_usage="0/0 MB"
        if [ -f /proc/meminfo ]; then
            mem_total=$(awk "/^MemTotal:/{print \$2}" /proc/meminfo 2>/dev/null)
            mem_available=$(awk "/^(MemAvailable|MemFree):/{sum+=\$2} END{print sum}" /proc/meminfo 2>/dev/null)
            [ -z "$mem_available" ] && mem_available=$(awk "/^MemFree:/{print \$2}" /proc/meminfo 2>/dev/null)
            mem_used=$((mem_total - mem_available))
            mem_total=$((mem_total / 1024))
            mem_used=$((mem_used / 1024))
            mem_usage="${mem_used}/${mem_total} MB"
        fi
        printf "%s" "$mem_usage"
    }

    _neofetch_get_disk() {
        local disk_usage="0/0 GB"
        if command -v df >/dev/null 2>&1; then
            disk_usage=$(df -h / 2>/dev/null | tail -1 | awk "{print \$3\" / \"\$2}")
        fi
        printf "%s" "$disk_usage"
    }

    _neofetch_get_uptime() {
        local uptime_str="Unknown"
        local uptime_sec=""
        if [ -f /proc/uptime ]; then
            uptime_sec=$(awk "{print int(\$1)}" /proc/uptime 2>/dev/null)
        fi
        if [ -n "$uptime_sec" ] && [ "$uptime_sec" -gt 0 ]; then
            local days=$((uptime_sec / 86400))
            local hours=$(((uptime_sec % 86400) / 3600))
            local mins=$(((uptime_sec % 3600) / 60))
            local secs=$((uptime_sec % 60))
            if [ "$days" -gt 0 ]; then
                uptime_str="${days}d ${hours}h ${mins}m"
            elif [ "$hours" -gt 0 ]; then
                uptime_str="${hours}h ${mins}m ${secs}s"
            elif [ "$mins" -gt 0 ]; then
                uptime_str="${mins}m ${secs}s"
            else
                uptime_str="${secs}s"
            fi
        fi
        printf "%s" "$uptime_str"
    }

    _neofetch_get_shell_version() {
        local shell_name shell_version="Unknown"
        shell_name=$(basename "$SHELL" 2>/dev/null)
        case "$shell_name" in
            bash) shell_version="${BASH_VERSION}" ;;
            zsh) shell_version="${ZSH_VERSION}" ;;
            fish) shell_version=$(fish -c "echo $FISH_VERSION" 2>/dev/null) ;;
            *) shell_version="$shell_name" ;;
        esac
        printf "%s" "$shell_version"
    }

    _neofetch_get_de() {
        local de="Unknown"
        [ -n "$DESKTOP_SESSION" ] && de="$DESKTOP_SESSION"
        [ -n "$XDG_CURRENT_DESKTOP" ] && de="$XDG_CURRENT_DESKTOP"
        [ -n "$GNOME_DESKTOP_SESSION_ID" ] && de="GNOME"
        [ -n "$KDE_FULL_SESSION" ] && de="KDE"
        printf "%s" "$de"
    }

    _neofetch_get_wm() {
        local wm="Unknown"
        [ -n "$XDG_CURRENT_DESKTOP" ] && wm="$XDG_CURRENT_DESKTOP"
        [ -n "$DESKTOP_SESSION" ] && wm="$DESKTOP_SESSION"
        command -v xprop >/dev/null 2>&1 && wm=$(xprop -root _NET_WM_NAME 2>/dev/null | cut -d\" -f2)
        [ -z "$wm" ] && wm="Unknown"
        printf "%s" "$wm"
    }

    _neofetch_get_terminal() {
        local terminal="Unknown"
        [ -n "$TERM_PROGRAM" ] && terminal="$TERM_PROGRAM"
        [ -n "$TERMINAL" ] && terminal="$TERMINAL"
        [ -n "$COLORTERM" ] && terminal="$COLORTERM"
        [ -z "$terminal" ] && terminal=$(ps -p $$ -o comm= 2>/dev/null | xargs basename 2>/dev/null)
        printf "%s" "$terminal"
    }

    _neofetch_get_packages() {
        local packages="Unknown"
        local pkg_count=0
        command -v dpkg >/dev/null 2>&1 && pkg_count=$(dpkg -l 2>/dev/null | grep -c "^ii")
        command -v rpm >/dev/null 2>&1 && pkg_count=$(rpm -qa 2>/dev/null | wc -l)
        command -v pacman >/dev/null 2>&1 && pkg_count=$(pacman -Q 2>/dev/null | wc -l)
        command -v apk >/dev/null 2>&1 && pkg_count=$(apk list 2>/dev/null | wc -l)
        [ "$pkg_count" != "0" ] && packages="$pkg_count (pkg)"
        printf "%s" "$packages"
    }

    _neofetch_get_os() {
        local os_name="Unknown"
        local os_version=""
        if [ -f /etc/os-release ]; then
            os_name=$(grep "^NAME=" /etc/os-release 2>/dev/null | cut -d\" -f2)
            os_version=$(grep "^VERSION=" /etc/os-release 2>/dev/null | cut -d\" -f2)
        elif [ -f /etc/redhat-release ]; then
            os_name=$(cat /etc/redhat-release 2>/dev/null | sed "s/ release.*//")
        elif [ -f /etc/debian_version ]; then
            os_name="Debian"
        fi
        [ -n "$os_version" ] && printf "%s %s" "$os_name" "$os_version" || printf "%s" "$os_name"
    }

    _neofetch_get_host() {
        local host_model="Unknown"
        [ -f /sys/class/dmi/id/product_name ] && host_model=$(cat /sys/class/dmi/id/product_name 2>/dev/null)
        [ -f /sys/class/dmi/id/product_version ] && host_model=$(cat /sys/class/dmi/id/product_version 2>/dev/null)
        [ -z "$host_model" ] && host_model=$(hostname 2>/dev/null)
        printf "%s" "$host_model"
    }

    sysinfo() {
        printf "\n"

        local hostname_str=$(hostname 2>/dev/null)
        local os_str=$(_neofetch_get_os)
        local host_str=$(_neofetch_get_host)
        local kernel_str=$(uname -s 2>/dev/null)
        local kernel_ver=$(uname -r 2>/dev/null)
        local uptime_str=$(_neofetch_get_uptime)
        local shell_name=$(basename "$SHELL" 2>/dev/null)
        local shell_ver=$(_neofetch_get_shell_version)
        local de_str=$(_neofetch_get_de)
        local wm_str=$(_neofetch_get_wm)
        local terminal_str=$(_neofetch_get_terminal)
        local cpu_model=$(_neofetch_get_cpu_model)
        local cpu_usage=$(_neofetch_get_cpu_usage)
        local cpu_cores=$(grep -c "^processor" /proc/cpuinfo 2>/dev/null)
        local mem_usage=$(_neofetch_get_memory)
        local disk_usage=$(_neofetch_get_disk)
        local packages=$(_neofetch_get_packages)

        local info_line1 info_line2 info_line3 info_line4 info_line5 info_line6 info_line7 info_line8 info_line9 info_line10 info_line11 info_line12 info_line13 info_line14 info_line15

        info_line1="${THEME_USER}${hostname_str}${THEME_RESET}@${THEME_HOST}${hostname_str}${THEME_RESET}"
        info_line2="${THEME_OS}$os_str${THEME_RESET}"
        info_line3="${THEME_HOST_MODEL}$host_str${THEME_RESET}"
        info_line4="${THEME_KERNEL}$kernel_str${THEME_RESET} ${THEME_KERNEL}$kernel_ver${THEME_RESET}"
        info_line5="${THEME_UPTIME}$uptime_str${THEME_RESET}"
        info_line6="${THEME_SHELL}$shell_name${THEME_RESET} ${THEME_SHELL_VERSION}$shell_ver${THEME_RESET}"
        info_line7="${THEME_DE}$de_str${THEME_RESET}"
        info_line8="${THEME_WM}$wm_str${THEME_RESET}"
        info_line9="${THEME_TERMINAL}$terminal_str${THEME_RESET}"
        info_line10="${THEME_CPU}$cpu_model${THEME_RESET}"
        info_line11="${THEME_CPU_USAGE}$cpu_usage${THEME_RESET} (${cpu_cores} cores)"
        info_line12="${THEME_MEMORY}$mem_usage${THEME_RESET}"
        info_line13="${THEME_DISK}$disk_usage${THEME_RESET}"
        info_line14="${THEME_SHELL}Pkgs:${THEME_RESET} $packages"
        info_line15="${THEME_BOLD}${THEME_SUBTITLE}Theme:${THEME_RESET} ${THEME_PATH}$SHELL_THEME${THEME_RESET}"

        local line_count=0
        while IFS= read -r line; do
            [ -n "$line" ] && line_count=$((line_count + 1))
        done <<EOF
$NEOFETCH_LOGO
EOF

        local info_count=15
        local padding=$(( (line_count - info_count) / 2 ))
        [ "$padding" -lt 0 ] && padding=0

        local line_num=0
        local info_idx=1

        while IFS= read -r logo_line; do
            local info_val=""

            if [ "$line_num" -lt "$padding" ]; then
                printf "%b\n" "$logo_line"
            elif [ "$info_idx" -le "$info_count" ]; then
                case $info_idx in
                    1) info_val="$info_line1" ;;
                    2) info_val="$info_line2" ;;
                    3) info_val="$info_line3" ;;
                    4) info_val="$info_line4" ;;
                    5) info_val="$info_line5" ;;
                    6) info_val="$info_line6" ;;
                    7) info_val="$info_line7" ;;
                    8) info_val="$info_line8" ;;
                    9) info_val="$info_line9" ;;
                    10) info_val="$info_line10" ;;
                    11) info_val="$info_line11" ;;
                    12) info_val="$info_line12" ;;
                    13) info_val="$info_line13" ;;
                    14) info_val="$info_line14" ;;
                    15) info_val="$info_line15" ;;
                esac
                printf "%b%b%b\n" "$logo_line" "$THEME_RESET" "$info_val"
                info_idx=$((info_idx + 1))
            else
                printf "%b\n" "$logo_line"
            fi
            line_num=$((line_num + 1))
        done <<EOF
$NEOFETCH_LOGO
EOF

        printf "\n"
        printf "   %b" "$THEME_BG_0  $THEME_RESET"
        printf "%b" "$THEME_BG_1  $THEME_RESET"
        printf "%b" "$THEME_BG_2  $THEME_RESET"
        printf "%b" "$THEME_BG_3  $THEME_RESET"
        printf "%b" "$THEME_BG_4  $THEME_RESET"
        printf "%b" "$THEME_BG_5  $THEME_RESET"
        printf "%b" "$THEME_BG_6  $THEME_RESET"
        printf "%b" "$THEME_BG_7  $THEME_RESET"
        printf "%b" "$THEME_BG_8  $THEME_RESET"
        printf "%b" "$THEME_BG_9  $THEME_RESET"
        printf "%b" "$THEME_BG_10  $THEME_RESET"
        printf "%b" "$THEME_BG_11  $THEME_RESET"
        printf "%b" "$THEME_BG_12  $THEME_RESET"
        printf "%b" "$THEME_BG_13  $THEME_RESET"
        printf "%b" "$THEME_BG_14  $THEME_RESET"
        printf "%b" "$THEME_BG_15  $THEME_RESET"
        printf "\n\n"
    }

    mkcd() {
        mkdir -p "$1" && cd "$1"
        printf "${THEME_HOST}Created:${THEME_RESET} ${THEME_PATH}$1${THEME_RESET}\n"
    }

    extract() {
        if [ -f "$1" ]; then
            printf "${THEME_USER}Extracting${THEME_RESET} ${THEME_PATH}$1${THEME_RESET}...\n"
            case "$1" in
                *.tar.gz|*.tgz)  tar xzf "$1" ;;
                *.tar.bz2)       tar xjf "$1" ;;
                *.tar)           tar xf "$1" ;;
                *.zip)           unzip "$1" ;;
                *.gz)            gunzip "$1" ;;
                *.bz2)           bunzip2 "$1" ;;
                *)               printf "${THEME_CMD_INVALID}Cannot extract $1${THEME_RESET}\n" ;;
            esac
        fi
    }

    serve() {
        printf "${THEME_USER}Starting HTTP server on${THEME_RESET} ${THEME_HOST}:8000${THEME_RESET}\n"
        python3 -m http.server 8000 2>/dev/null || python -m SimpleHTTPServer 8000 2>/dev/null
    }

    set_theme() {
        if [ -z "$1" ]; then
            local display_name="$SHELL_THEME"
            [ "$SHELL_THEME" = "mocha" ] && display_name="catppuccin-mocha"
            [ "$SHELL_THEME" = "macchiato" ] && display_name="catppuccin-macchiato"
            [ "$SHELL_THEME" = "frappe" ] && display_name="catppuccin-frappe"
            [ "$SHELL_THEME" = "latte" ] && display_name="catppuccin-latte"
            printf "${THEME_USER}Current theme:${THEME_RESET} %s\n" "$display_name"
            printf "\n${THEME_USER}Available themes:${THEME_RESET}\n"
            printf "  ${THEME_HOST}dracula${THEME_RESET}, ${THEME_HOST}nord${THEME_RESET}, ${THEME_HOST}gruvbox${THEME_RESET}\n"
            printf "  ${THEME_HOST}catppuccin${THEME_RESET} (${THEME_PATH}mocha${THEME_RESET}/${THEME_HOST}macchiato${THEME_RESET}/${THEME_HOST}frappe${THEME_RESET}/${THEME_HOST}latte${THEME_RESET})\n"
            printf "  ${THEME_HOST}tokyo${THEME_RESET}, ${THEME_HOST}monokai${THEME_RESET}, ${THEME_HOST}solarized${THEME_RESET}\n"
        else
            SHELL_THEME="$1"
            export PS1="${THEME_USER}\\u${THEME_RESET}@${THEME_HOST}\\h${THEME_RESET}:${THEME_PATH}\\w${THEME_RESET}${THEME_PROMPT}${PS1_CHAR}${THEME_RESET} "
            local display_name="$1"
            printf "${THEME_HOST}Theme switched to:${THEME_RESET} %s\n" "$display_name"
        fi
    }

    history_rank() {
        tail -100 "$HISTFILE" 2>/dev/null | awk "{print \$1}" | sort | uniq -c | sort -rn | head -10
    }

    PROMPT_COMMAND="_rtsh_prompt_cmd;\$PROMPT_COMMAND"
    _rtsh_enable
    '

    alias hl='highlight'
    alias neofetch='sysinfo'
fi

# ═══════════════════════════════════════════════════════════════
# PLUGIN LOADER
# ═══════════════════════════════════════════════════════════════

_profile_load_plugins() {
    local plugin_dirs=""
    
    [ -d "$HOME/.profile.d" ] && plugin_dirs="$plugin_dirs $HOME/.profile.d"
    [ -d "$HOME/.dotfiles/.profile.d" ] && plugin_dirs="$plugin_dirs $HOME/.dotfiles/.profile.d"
    
    for dir in $plugin_dirs; do
        for plugin in "$dir"/*.sh; do
            [ -f "$plugin" ] && . "$plugin" 2>/dev/null
        done
    done
}

_profile_load_plugins

# ═══════════════════════════════════════════════════════════════
# COLORS
# ═══════════════════════════════════════════════════════════════
export CLICOLOR=1
export LS_COLORS='di=1;34:ln=1;36:so=1;35:pi=1;33:ex=1;32:bd=1;33:cd=1;33:su=1;31:sg=1;31:tw=1;34:ow=1;34'

# ═══════════════════════════════════════════════════════════════
# ALIASES
# ═══════════════════════════════════════════════════════════════

# LS aliases
alias ls='ls -G 2>/dev/null || ls --color=auto 2>/dev/null || ls'
alias ll='ls -lh'
alias la='ls -lha'
alias l='ls -lA'
alias lt='ls -lt'
alias lsS='ls -lS'
alias lsd='ls -l --group-directories-first'
alias lr='ls -lR'

# Grep aliases
alias grep='grep --color=auto 2>/dev/null || grep'

# Navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ~='cd ~'

# History
alias h='history'

# Utilities
alias ports='netstat -tulanp'
alias meminfo='free -h'
alias diskinfo='df -h'
alias psg='ps aux | grep'
alias ping='ping -c 5'

# File operations
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

# Development
alias e='vi'
alias g='git'
alias ga='git add'
alias gc='git commit'
alias gp='git push'

# Global aliases (pipe helpers)
alias -g G='| grep'
alias -g L='| less'
alias -g H='| head'
alias -g T='| tail'
alias -g S='| sort'
alias -g W='| wc -l'
alias -g N='2>/dev/null'
alias -g E='2>&1'

# ═══════════════════════════════════════════════════════════════
# VI MODE (Press jj to exit insert mode)
# ═══════════════════════════════════════════════════════════════
if [ -n "$BASH_VERSION" ]; then
    set -o vi 2>/dev/null
    bind -m vi-insert 'jj:vi-insertion-mode' 2>/dev/null
fi

# ═══════════════════════════════════════════════════════════════
# WELCOME
# ═══════════════════════════════════════════════════════════════
printf "\n${THEME_HOST}Welcome!${THEME_RESET}\n"
printf "Type ${THEME_USER}neofetch${THEME_RESET} for system info\n"
printf "Type ${THEME_USER}theme <name>${THEME_RESET} to switch themes\n"
printf "Type ${THEME_USER}help${THEME_RESET} for more commands\n\n"

# ═══════════════════════════════════════════════════════════════
# PATH & EDITOR
# ═══════════════════════════════════════════════════════════════
export PATH="$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH"
export EDITOR=vi

# ═══════════════════════════════════════════════════════════════
# HELP COMMAND
# ═══════════════════════════════════════════════════════════════
help() {
    printf "\n${THEME_BOLD}${THEME_SUBTITLE}Available Commands:${THEME_RESET}\n\n"
    printf "${THEME_PATH}Navigation:${THEME_RESET}\n"
    printf "  ${THEME_CMD_VALID}cdf <name>${THEME_RESET}  - Fuzzy cd to directory\n"
    printf "  ${THEME_CMD_VALID}j <name>${THEME_RESET}    - Jump to visited directory\n"
    printf "  ${THEME_CMD_VALID}d${THEME_RESET}           - Show directory stack\n"
    printf "  ${THEME_CMD_VALID}mkcd <dir>${THEME_RESET}  - Create and cd into dir\n"
    printf "  ${THEME_CMD_VALID}up [n]${THEME_RESET}      - Go up n directories\n"
    printf "\n${THEME_PATH}Git:${THEME_RESET}\n"
    printf "  ${THEME_CMD_VALID}gst${THEME_RESET}  - git status\n"
    printf "  ${THEME_CMD_VALID}gl${THEME_RESET}   - git log with graph\n"
    printf "  ${THEME_CMD_VALID}gco${THEME_RESET}  - git checkout\n"
    printf "  ${THEME_CMD_VALID}gp${THEME_RESET}   - git push\n"
    printf "\n${THEME_PATH}History:${THEME_RESET}\n"
    printf "  ${THEME_CMD_VALID}hist [n]${THEME_RESET}  - Show history statistics\n"
    printf "  ${THEME_CMD_VALID}Ctrl+R${THEME_RESET}    - Search history\n"
    printf "  ${THEME_CMD_VALID}Ctrl+→${THEME_RESET}   - Accept autosuggestion\n"
    printf "\n${THEME_PATH}System:${THEME_RESET}\n"
    printf "  ${THEME_CMD_VALID}neofetch${THEME_RESET}  - System info\n"
    printf "  ${THEME_CMD_VALID}theme <name>${THEME_RESET} - Change theme\n"
    printf "\n${THEME_PATH}Global Aliases:${THEME_RESET}\n"
    printf "  ${THEME_CMD_VALID}cmd G pattern${THEME_RESET}  - Pipe to grep\n"
    printf "  ${THEME_CMD_VALID}cmd L${THEME_RESET}         - Pipe to less\n"
    printf "  ${THEME_CMD_VALID}cmd H${THEME_RESET}         - Pipe to head\n"
    printf "  ${THEME_CMD_VALID}cmd T${THEME_RESET}         - Pipe to tail\n"
    printf "\n"
}
