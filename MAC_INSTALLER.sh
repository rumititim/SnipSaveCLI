# Check for Python 3
if [[ "$(python -V)" =~ "Python 3" ]]
then
    echo "Python 3 is installed"
    echo "Continuing with download..."
else
    echo "We recommend Python 3 to be used, but it is not installed"
    read -p "Continue install without Python 3 (Y/N)? " install
    if [[ "$install" == "Y" || "$install" == "y" ]]
    then
        echo "Upgrading to latest Python Version"
        brew upgrade python3
    else
        echo "Exiting Installation..."
        exit 1
    fi  
fi

# Creating Credentials file
echo "Creating Credentials File"
mkdir ~/.snipsave/
touch ~/.snipsave/credentials

# Moving Download files to Snipsave Home folder
cp ./src/main.py ~/.snipsave/snipsave_cli.py

echo "alias ssv='python3 ~/.snipsave/snipsave_cli.py'" >> ~/.zshrc

echo "-----------------------------"
echo ""
echo "Welcome to SnipSave CLI!"
echo ""
echo "To add your credentials to"
echo "the CLI, type:"
echo ""
echo "$ ssv configure"
echo ""
echo "Or, check out the our"
echo "documentation at"
echo "https://github.com/SnipSaveCLI/SnipSaveCLI/blob/main/README.md"
echo ""
echo "-----------------------------"
