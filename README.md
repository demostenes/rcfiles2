Ubuntu
======

    git clone https://github.com/demostenes/rcfiles2.git ~/rcfiles2 && \
    rm -f ~/.vimrc ~/.tmux.conf && \
    ln -s ~/rcfiles2/vimrc ~/.vimrc && \
    ln -s ~/rcfiles2/tmux.conf ~/.tmux.conf && \
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm && \
    vim -es -u vimrc -i NONE -c "PlugInstall" -c "qa"

