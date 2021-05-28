# install fira code
echo -e "Install Fira Code"
wget -O  FiraCode.zip https://github.com/tonsky/FiraCode/releases/download/5.2/Fira_Code_v5.2.zip
unzip FiraCode.zip && rm -rf FiraCode.zip
mkdir -p $HOME/.local/share/fonts
cd ttf && mv *.ttf $HOME/.local/share/fonts && cd ..
rm -rf ttf variable_ttf woff woff2 fira_code.css README.txt specimen.html
echo -e "Done"