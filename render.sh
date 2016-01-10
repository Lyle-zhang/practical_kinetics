awk '/toc_0/, /\/body/ {if (match($0,"/body")==0) print}' test.html > test.txt
awk 'NR == FNR { stuff = stuff $0 "\n" } NR != FNR {if (match($0,"@PLACEHOLDER")>0) {print stuff} else {print} }' test.txt index.template > index.html
rm test.txt
