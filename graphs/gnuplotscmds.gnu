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
set terminal png size 600,600; set output './graphs/data1.png'; plot './graphs/data_o1' title 'Expected' with lines ls 2, './graphs/data_c_o1' title 'MRS' with points ls 1

set style line 1 lc rgb '#0060ad' pt 27 ps 0.8   # --- blue
set terminal png size 1200,1200; set output './graphs/data2.png'; plot './graphs/data_o2' title 'Expected' with lines ls 2, './graphs/data_c_o2' title 'MRS' with points ls 1

set style line 1 lc rgb '#0060ad' pt 27 ps 0.3   # --- blue
set terminal png size 1400,1400; set output './graphs/data3.png'; plot './graphs/data_o3' title 'Expected' with lines ls 2, './graphs/data_c_o3' title 'MRS' with points ls 1
