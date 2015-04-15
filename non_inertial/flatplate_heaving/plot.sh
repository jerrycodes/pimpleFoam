#!/bin/bash

cd postProcessing/forceCoeffs/0/

gnuplot -persist > /dev/null 2>&1 << EOF
        set title "Cy vs. Time"
        set xlabel "Time [s]"
        set ylabel "Cy [Non-Dimensional]"
        plot [0.1:][-3:3] "forceCoeffs.dat" u 1:4 t "Cy" w l
EOF

cd ../../forces/0/

gnuplot -persist > /dev/null 2>&1 << EOF
        set title "Force vs. Time"
        set xlabel "Time [s]"
        set ylabel "Force [N/m]"
        plot [0.1:][-1:1] "forces.dat" u 1:3 t "Fy" w l
EOF
