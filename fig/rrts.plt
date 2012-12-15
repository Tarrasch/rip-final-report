set key inside right top vertical Right noreverse noenhanced autotitles nobox
set datafile missing '-'
set style data linespoints
set xtics border in scale 1,0.5 nomirror rotate by -45  offset character 0, 0, 0
set xtics  norangelimit font ",8"
set xtics   ()
set ylabel "Success Rate"
set xlabel "Noise"
i = 22
plot 'fig/rrts.dat' using 2:xtic(1) title columnheader(2), for [i=3:22] '' using i title columnheader(i)
