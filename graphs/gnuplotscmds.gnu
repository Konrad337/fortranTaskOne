set terminal wxt size 350,262 enhanced font 'Verdana,10' persist

# Line width of the axes
set border linewidth 1.5
# Line styles


 set   autoscale                        # scale axes automatically
 unset log                              # remove any log-scaling
 unset label                            # remove any previous labels
 set xtic auto                          # set xtics automatically
 set ytic auto                          # set ytics automatically
 set title "Heat transfer with MRS vs expected output"
 set xlabel "X"
 set ylabel "Temp (K)"
 set xr [-0:1.3]
 set yr [-0:1.3]

set style line 2 lc rgb '#dd181f' lt 1 lw 0.4   # --- red

set style line 1 lc rgb '#0060ad' pt 27 ps 1.2   # --- blue
set terminal png size 600,600; set output './graphs/data4.png'; plot './graphs/data_o 8_10' title 'Expected' with lines ls 2, './graphs/data_c_o 8_10' title 'MRS' with points ls 1

set style line 1 lc rgb '#0060ad' pt 27 ps 0.8   # --- blue
set terminal png size 600,600; set output './graphs/data6.png'; plot './graphs/data_o 8_50' title 'Expected' with lines ls 2, './graphs/data_c_o 8_50' title 'MRS' with points ls 1

set style line 1 lc rgb '#0060ad' pt 27 ps 0.3   # --- blue
set terminal png size 600,600; set output './graphs/data8.png'; plot './graphs/data_o 8_90' title 'Expected' with lines ls 2, './graphs/data_c_o 8_90' title 'MRS' with points ls 1


set title "Heat transfer with MRS errors for diff kinds"
set xlabel "Size"
set ylabel "Error"
set xr [-1:400]
set yr [-0:0.001]

set style line 1 lc rgb '#0060ad' pt 2 ps 1.2   # ---
set style line 2 lc rgb '#dd181f' pt 27 ps 1.2   # ---
set style line 3 lc rgb '#000000' pt 27 ps 1.2   # ---

set terminal png size 600,600; set output './graphs/errors.png';
plot './graphs/error_ 8' title 'Error8' with points ls 1, './graphs/error_ 4' title 'Error4' with points ls 2, './graphs/error_16' title 'Error16' with points ls 3
