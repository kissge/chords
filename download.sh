i=0
while read -r url; do
    echo $i
    i=$(($i + 1))
    curl -O "$url" \
        -H 'authority: ja.chordwiki.org' \
        -H 'cache-control: max-age=0' \
        -H 'sec-ch-ua: " Not;A Brand";v="99", "Google Chrome";v="97", "Chromium";v="97"' \
        -H 'sec-ch-ua-mobile: ?0' \
        -H 'sec-ch-ua-platform: "macOS"' \
        -H 'upgrade-insecure-requests: 1' \
        -H 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36' \
        -H 'accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9' \
        -H 'sec-fetch-site: same-origin' \
        -H 'sec-fetch-mode: navigate' \
        -H 'sec-fetch-user: ?1' \
        -H 'sec-fetch-dest: document' \
        -H 'referer: https://ja.chordwiki.org/ranking101.html' \
        -H 'accept-language: ja-JP,ja;q=0.9,en-US;q=0.8,en;q=0.7' \
        -H 'cookie: _gid=GA1.2.1608789099.1643362900; __gads=ID=dacd197bfb426e42-2261a62e45d00078:T=1643362899:RT=1643362899:S=ALNI_MYRS3c0ghiVCK5ea88oHsw9G4zSoA; history=%E3%83%89%E3%83%A9%E3%82%A4%E3%83%95%E3%83%A9%E3%83%AF%E3%83%BC+%28%E5%84%AA%E9%87%8C%29; taghis=With ensemble|2020å¹´ç™ºå£²|å„ªé‡Œ|ã‚¢ã‚³ã‚®|THE FIRST TAKE; _ga=GA1.2.1478474890.1643362900; _ga_V6WMEHF6XT=GS1.1.1643362899.1.1.1643362926.0' \
        -H 'if-modified-since: Thu, 27 Jan 2022 15:06:12 GMT' \
        --compressed
    sleep 3
done <../chordwiki.txt
