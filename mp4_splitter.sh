#!/bin/bash

NUM_OF_SPLITS=3

main() {
    # Requires: $ `brew install ffmpeg`

    # total length in seconds 
    total_length=$(ffprobe -v quiet -of csv=p=0 -show_entries format=duration "$1")

    # Get filename without extension
    fname="${1%.*}"
    split_time=$(echo "$total_length"/"$NUM_OF_SPLITS" | bc -l)

    declare -a start_times
    declare -a end_times

    for((i=0; i < $NUM_OF_SPLITS; i++)); do
        local output_file="${fname}_"part$i".mp4"
        if [[ "$i" -eq 0 ]]; then
            local start_time=0
            local end_time="$split_time"

            ffmpeg -i "${fname}.mp4" -c copy -t "$end_time" "$output_file"
        else
            local start_time="${end_times[$i-1]}"
            local end_time=$(echo "$start_time "*" 2" | bc -l)

            # echo "Start time: $start_time"
            # echo "End time: $end_time"

            ffmpeg -ss "$start_time" -to "$end_time"  -i "${fname}.mp4" -c copy "$output_file"
        fi

        start_times+=($start_time)
        end_times+=("$end_time")
    done

}

# Split Video Script
# Example: split_video_script bugs_bunny.mp4
# Instructions:     
# 1. Type the name of your script (if it is already added to ~/bin and marked as executable). 
# 2. Type the file name including path to it if necessary. 

main "$1"
