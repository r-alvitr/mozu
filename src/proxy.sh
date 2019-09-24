proxy_set(){
    export http_proxy="172.20.20.104:8080"
    export https_proxy="172.20.20.104:8080"
    npm -g config set proxy "http://172.20.20.104:8080"
    npm -g config set https-proxy "https://172.20.20.104:8080"
    git config --global http.proxy 172.20.20.104:8080
    git config --global https.proxy 172.20.20.104:8080
    echo -e "\nset proxy for sysken"
}
proxy_unset(){
    export http_proxy=""
    export https_proxy=""
    npm -g config delete proxy
    npm -g config delete https-proxy
    git config --global --unset http.proxy
    git config --global --unset https.proxy
    echo -e "\nunset proxy for sysken"
}
