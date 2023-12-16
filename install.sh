touch ~/.bashrc

if [[ $(uname) == 'Darwin' ]]; then
    chsh -s $(which bash)
    echo "export BASH_SILENCE_DEPRECATION_WARNING=1" >> ~/.bashrc
#elif [[ $(uname) == 'Linux' ]]; then    
fi

echo "export PS1='\[\e[38;5;152;1;2m\]\u\[\e[0m\] \[\e[38;5;186m\]\w\[\e[0m\] (\[\e[38;5;220m\]\$(git branch 2>/dev/null | grep \"'*'\" | colrm 1 2)\[\e[0m\])\[\e[2m\]>\[\e[0m\] '" >> ~/.bashrc