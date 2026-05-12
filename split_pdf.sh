#!/bin/bash
mkdir -p chunks
TOTAL_PAGES=1233
CHUNK_SIZE=50
PDF_FILE="Aqidah01366 التسبيح في الكتاب والسنة والرد على المفاهيم الخاطئة فيه  محمد بن اسحاق كندو.pdf"

for (( i=1; i<=$TOTAL_PAGES; i+=$CHUNK_SIZE )); do
    START=$i
    END=$(( i + CHUNK_SIZE - 1 ))
    if [ $END -gt $TOTAL_PAGES ]; then
        END=$TOTAL_PAGES
    fi
    CHUNK_NUM=$(printf "%03d" $(( (i-1)/CHUNK_SIZE + 1 )))
    OUTPUT="chunks/chunk_$CHUNK_NUM.pdf"
    echo "Extracting chunk $CHUNK_NUM (pages $START-$END) to $OUTPUT..."
    gs -sDEVICE=pdfwrite -dNOPAUSE -dBATCH -dSAFER -dFirstPage=$START -dLastPage=$END -sOutputFile="$OUTPUT" "$PDF_FILE" > /dev/null 2>&1
done
echo "Splitting complete."
