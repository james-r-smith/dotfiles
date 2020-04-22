function path --description 'List executable paths'
    string replace -ra ":" "\n" $PATH
end