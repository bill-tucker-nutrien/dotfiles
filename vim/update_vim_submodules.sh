echo "Good for you for staying up-to-date on your vim submodules!!"
cd ~/dotfiles/vim/bundle
for i in `ls -1`
do 
    cd $i
    echo "git pull $i"
    git pull
    cd ..
done
echo "..and thanks for automating this!"
