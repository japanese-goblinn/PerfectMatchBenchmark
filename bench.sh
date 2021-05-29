set -ex

if [[ -f "results" ]]; then rm "results"; fi;

swift run -c release perfect-match-benchmark run results --cycles 1 --max-size 8k
swift run -c release perfect-match-benchmark render results all.png
