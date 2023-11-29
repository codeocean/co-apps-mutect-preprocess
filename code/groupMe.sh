#!/usr/bin/env bash 


compare_sheet=$(find -L ../data -name "*.csv")

## Grouping
for line in $(cat ${compare_sheet}); do

        # Get Control and Case 
        control=$(echo $line | cut -d "," -f1)
        case=$(echo $line | cut -d "," -f2)

        mkdir -p ../results/${control}_${case}/Normal
        mkdir -p ../results/${control}_${case}/Tumor

        control_file=$(find -L ../data -name "${control}.bam*")
        case_file=$(find -L ../data -name "${case}.bam*")

        cp $control_file ../results/${control}_${case}/Normal/
        cp $case_file ../results/${control}_${case}/Tumor/

done