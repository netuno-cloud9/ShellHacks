#!/bin/bash
# This script measures your typing speed

prompt="The quick brown fox jumps over the lazy dog"
echo "Type the following text: ${prompt}"

start_time=$(date +%s)
read -r input
end_time=$(date +%s)

time_taken=$((end_time - start_time))
words_typed=$(echo "${input}" | wc -w)
typing_speed=$((words_typed / time_taken * 60))

echo "Time taken: ${time_taken} seconds"
echo "Words typed: ${words_typed}"
echo "Typing speed: ${typing_speed} words per minute"





