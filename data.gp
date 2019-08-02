set terminal pngcairo nocrop enhanced font "verdana,8" size 640,300
set output "algo-perf-data.png"

set style line 2 lc rgb 'black' lt 1 lw 1
set style data histogram
set style histogram cluster gap 1
set style fill pattern border -1
set xtics format ""
set grid ytics
set nokey

set yrange [1000 to 1000000]

# Thinner, filled bars
set boxwidth 0.4
set style fill solid 1.00

# Rotate X labels and get rid of the small striped at the top (nomirror)
set xtics nomirror rotate by -45

# Replace small stripes on the Y-axis with a horizontal gridlines
set tic scale 0
set grid ytics

# Remove border around chart
unset border

# Log-scale for the y-Axis
set logscale y

set ylabel "Cycles per Iteration (logarithmic)"

set title "Checksum Algorithm Speed" font ",14"

plot "csum-algo-perf.dat" using 3:xticlabels(1) lt rgb "#505050"

