function gi --description 'Create .gitignore file'
    curl -L -s https://www.gitignore.io/api/$argv
end