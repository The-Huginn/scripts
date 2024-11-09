sudo ps aux | grep idea | awk '{print $2}' | xargs sudo kill -9
