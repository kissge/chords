for html in html/*; do
    echo $html
    grep -o '<span class="chord"[^>]*>[^<|]*</span>' "$html" | cut -d'>' -f2 | cut -d'<' -f1 >txt/"$(basename "$html")".txt
done
