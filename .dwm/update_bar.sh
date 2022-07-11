#!/bin/sh

delim=" "

dte(){
    dte="$(date +" %D $delim  %r" | awk -F: '{OFS = FS} { $3=""; print $1, $2}')"
    echo -e "$dte"
}

bat(){
    bat_charging="$(acpi | awk '{print $3}')"
    bat_percent=$(acpi | awk '{print $4}' | sed 's/[^0-9]*//g')
    bat_time="$(acpi | awk '{print $5}' | awk -F: '{OFS=""} {print $1, ":", $2}')"

    if [[ "$bat_charging" == "Charging," ]]
    then 
        bat_symbol=""
    elif [[ "$bat_charging" == "Not" ]]
    then
        bat_symbol=""
        bat_percent=$(acpi | awk '{print $5}' | sed 's/[^0-9]*//g')
        bat_time="Full"
    elif (( $bat_percent >= 76 ))
    then
        bat_symbol=""
    elif (( $bat_percent >= 51 ))
    then
        bat_symbol=""
    elif (( $bat_percent >= 26 ))
    then
        bat_symbol=""
    elif (( $bat_percent >= 10 ))
    then
        bat_symbol=""
    else
        bat_symbol=""
    fi
    

    bat="$bat_symbol $bat_percent% $bat_time"
    echo -e "$bat"
}

vol(){
    mute="$(/usr/bin/pactl get-sink-mute @DEFAULT_SINK@ | awk '{print $2}')"

    if [[ "$mute" == "no" ]]
    then 
        mute=""
    else
        mute=""
    fi

    vol="$mute $(/usr/bin/pactl get-sink-volume @DEFAULT_SINK@ | awk '{print $5}')"
    echo -e "$vol"
}

brightness(){
    brightness=" $(xbacklight -get)%"
    echo -e "$brightness"
}

wifi(){
    # Shows the name of the active wifi connection
    wifi_name="$(nmcli connection show | awk '!/DEVICE/ && !/--/ {print $1}')"

    # Grabs the wifi strength 
    wifi_strength="$(nmcli device wifi list | sed "/^\s/ d; /IN-USE/ d" | awk '{print $(NF-2)}')"
    
    wifi=" $wifi_name"
    echo -e "$wifi"
}

update_bar(){
    xsetroot -name " $(vol) $delim $(bat) $delim $(wifi) $delim $(dte) "
}

update_bar_with_brightness(){
    xsetroot -name " $(brightness) $delim $(vol) $delim $(bat) $delim $(wifi) $delim $(dte) "
}

update_bar