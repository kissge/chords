{
    echo 'digraph G {'
    for txt in txt/*; do
        echo '#' $txt
        tr $'\n' '@' <"$txt" | sed -e 's/@/" -> "/g' | sed -e 's/^/"/; s/ -> "$//'
        echo
    done
    echo '}'
} >graph.dot
