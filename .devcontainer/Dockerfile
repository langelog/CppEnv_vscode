FROM gcc:10.2.0

RUN apt-get update && apt-get upgrade -y
RUN apt-get install cmake zsh git procps sudo neovim wget -y
RUN apt-get install curl python3-pip exuberant-ctags ack-grep -y
RUN pip3 install pynvim flake8 pylint isort

RUN useradd -ms /bin/zsh -p $(openssl passwd -1 vscode) vscode
RUN usermod -aG sudo vscode

RUN mkdir -p /home/vscode/.config/nvim 
RUN wget https://raw.github.com/fisadev/fisa-vim-config/v12.0.1/config.vim -O /home/vscode/.config/nvim/init.vim

RUN git clone --recursive https://github.com/sorin-ionescu/prezto.git "/home/vscode/.zprezto"
RUN ln -s /home/vscode/.zprezto/runcoms/zlogin /home/vscode/.zlogin
RUN ln -s /home/vscode/.zprezto/runcoms/zlogout /home/vscode/.zlogout
RUN ln -s /home/vscode/.zprezto/runcoms/zpreztorc /home/vscode/.zpreztorc
RUN ln -s /home/vscode/.zprezto/runcoms/zprofile /home/vscode/.zprofile
RUN ln -s /home/vscode/.zprezto/runcoms/zshenv /home/vscode/.zshenv
RUN ln -s /home/vscode/.zprezto/runcoms/zshrc /home/vscode/.zshrc

RUN sed -i "40 a \  'git' \\\\" /home/vscode/.zpreztorc

# fix permissions
RUN chown vscode:vscode -R /home/vscode

USER vscode

