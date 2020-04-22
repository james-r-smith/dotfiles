function cleanup_ds --description 'Recursively delete .DS_Store files'
    sudo find . -type f -name "*.DS_Store" -ls -delete
end