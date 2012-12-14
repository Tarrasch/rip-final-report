set terminal pdf
set output "noise-005.pdf"

set boxwidth 0.9 absolute
set style fill   solid 1.00 border lt -1
set key inside left top vertical Right noreverse noenhanced autotitles nobox
set style histogram clustered gap 1 title  offset character 0, 0, 0
set datafile missing '-'
set style data histograms
set xtics border in scale 0,0 nomirror rotate by -45  offset character 0, 0, 0
set xtics  norangelimit font ",8"
set xtics   ()
set yrange [70:100]
set xtics border in scale 0,0 nomirror rotate by -45  offset character 0, 0, 0
set ylabel "Success Rate"

plot 'noise-005.dat' using 2:xticlabels(1) ti col, '' using 3 ti col
