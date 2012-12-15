set style fill   solid 1.00 border lt -1
set style histogram clustered gap 1 title  offset character 0, 0, 0
set style data histograms
set yrange [7000:8000]
set xtics border in scale 0,0 nomirror rotate by -45  offset character 0, 0, 0
set ylabel "Average Completion Time (ms)"

plot 'fig/runtimes.dat' using 2:xticlabels(1) ti col, '' using 3 ti col
