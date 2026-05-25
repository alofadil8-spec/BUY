#!/bin/bash
clear

# Warna + Efek
R='\e[31m' G='\e[32m' Y='\e[33m' B='\e[34m' C='\e[36m' M='\e[35m' W='\e[37m' X='\e[0m'
BLINK='\e[5m' BOLD='\e[1m' DIM='\e[2m' REV='\e[7m'

# Intro Glitch
for i in {1..3}; do
    clear
    echo -e "${R}${BOLD}▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓${X}"
    sleep 0.1
    clear
    echo -e "${C}${BOLD}░░░░░░░░░░░░░░░░░░░░░░░░${X}"
    sleep 0.1
done

clear
echo -e "${M}${BOLD}"
cat << "EOF"
 ██████╗ ██╗██╗     ██╗         ██████╗  ██████╗ ██████╗ 
 ██╔══██╗██║██║     ██║         ██╔══██╗██╔═══██╗██╔══██╗
 ██║  ██║██║██║     ██║         ██████╔╝██║   ██║██║  ██║
 ██║  ██║██║██║     ██║         ██╔═══╝ ██║   ██║██║  ██║
 ██████╔╝██║███████╗███████╗    ██║     ╚██████╔╝██████╔╝
 ╚═════╝ ╚═╝╚══════╝╚══════╝    ╚═╝      ╚═════╝ ╚═════╝ 
EOF
echo -e "${W}${BOLD}          SENSIVITAS PROTECT v8.0 GOD MODE          ${X}"
echo -e "${DIM}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${X}"
sleep 2

# Boot Sequence
boot=("Initializing Quantum Core" "Loading DILL Neural Engine" "Calibrating Input Matrix" "Bypassing Security Layer")
for msg in "${boot[@]}"; do
    echo -ne "\n${Y}[*]${X} $msg"
    for i in {1..8}; do printf "."; sleep 0.15; done
    echo -e " ${G}${BOLD}[OK]${X}"
    sleep 0.3
done

# Hex Dump
echo -e "\n${Y}[*]${X} Dumping memory address..."
sleep 0.5
for i in {1..15}; do
    addr=$(printf '%08x' $((RANDOM * RANDOM)))
    val=$(printf '%08x' $((RANDOM * RANDOM)))
    echo -e "${DIM}0x$addr : $val $val $val $val${X}"
    sleep 0.08
done
echo -e "${G}     >> Memory locked at 78% sensitivity${X}"
sleep 1

# Dual Spinner
echo -ne "\n${Y}[*]${X} Injecting payload "
spin1='←↖↑↗→↘↓↙'
spin2='▁▂▃▄▅▆▇█▇▆▅▄▃▂▁'
for i in {1..50}; do
    printf "\r${Y}[*]${X} Injecting payload ${C}${spin1:i%8:1}${X} ${M}${spin2:i%12:1}${X}"
    sleep 0.06
done
printf "\r${Y}[*]${X} Injecting payload ${G}${BOLD}COMPLETE${X}      \n"
sleep 0.8

# Scanning Grid
echo -e "\n${Y}[*]${X} Scanning input nodes:"
for row in {1..6}; do
    printf "     "
    for col in {1..12}; do
        if (( RANDOM % 5 == 0 )); then
            printf "${G}█${X}"
        else
            printf "${DIM}▒${X}"
        fi
        sleep 0.03
    done
    echo ""
done
echo -e "${G}     >> 127 nodes optimized${X}"
sleep 1

# Rainbow Progress Bar
echo -e "\n${Y}[*]${X} Building sensitivity profile:"
echo -ne "     ["
colors=("$R" "$Y" "$G" "$C" "$B" "$M")
for i in {1..36}; do
    c=${colors[i%6]}
    printf "${c}█${X}"
    sleep 0.07
done
echo -e "] ${G}${BOLD}100%${X}"
sleep 0.8

# Fake Compile
echo -e "\n${Y}[*]${X} Compiling DILL modules..."
compile=("touch.dll" "gyro.so" "aimbot.cfg" "recoil.bin" "protect.sys")
for mod in "${compile[@]}"; do
    echo -ne "     Compiling ${W}$mod${X} "
    for i in {1..20}; do
        printf "${C}▮${X}"
        sleep 0.04
    done
    echo -e " ${G}done${X}"
done
sleep 1

# Warning Flash
for i in {1..4}; do
    echo -ne "\r${REV}${R}${BOLD} !!! FINALIZING INJECTION !!! ${X}"
    sleep 0.2
    echo -ne "\r                                   "
    sleep 0.2
done

# Radar Scan
clear
echo -e "${M}${BOLD}           DILL RADAR SCAN${X}"
echo -e "${DIM}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${X}"
radar=("◢" "◣" "◤" "◥")
for i in {1..24}; do
    echo -ne "\r     ${C}${radar[i%4]}${X} Scanning... ${G}$((i*4))%${X}  "
    sleep 0.15
done
echo -e "\r     ${G}✓ Scan Complete 100%     ${X}\n"
sleep 1

# Final Result
clear
echo -e "${M}${BOLD}╔══════════ DILL PROTECT v8.0 ══════════╗${X}"
sleep 0.3
lines=(
"  ${W}System Name${X}      : ${BOLD}${M}DILL SENSIVITAS PROTECT${X}"
"  ${W}Version${X}          : ${C}v8.0 GOD MODE${X}"
"  ${W}Sensitivity${X}      : ${BLINK}${R}${BOLD}78%${X}"
"  ${W}Touch Response${X}   : ${G}4ms ${DIM}[ULTRA]${X}"
"  ${W}Aim Assist${X}       : ${G}MAXIMUM${X}"
"  ${W}Recoil Pattern${X}   : ${G}LINEAR${X}"
"  ${W}Protection${X}       : ${G}${BOLD}${REV} GOD MODE ${X}"
"  ${W}Stealth Level${X}    : ${G}99.9%${X}"
)
for line in "${lines[@]}"; do
    echo -e "$line"
    echo -ne "\a"
    sleep 0.4
done
echo -e "${M}${BOLD}╚═════════════════════════════════════════╝${X}"
sleep 0.5
echo ""
echo -e "${B}${BOLD}${BLINK}        >>> INJECTION SUCCESSFUL <<<${X}"
echo ""
sleep 0.5
echo -e "${C}${DIM}// @DILL //${X}"
echo ""