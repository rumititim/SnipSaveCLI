# Check for Python 3
if [[ "$(python3 -V)" =~ "Python 3" ]]
then
    echo "Python 3 is installed"
    echo "Continuing with download..."
else
    echo "Python needs to be installed"
    echo "Continue with install (Y/N) ?"
    read install

    if [["$install" == "Y" || "$install" == "y"]]
    then
        echo "Upgrading to latest Python Version"
        brew upgrade python3
    else
        echo "SnipSave CLI is not supported with earlier versions of Python"
        echo "While not necessary, we recommend upgrading before continuing"
    fi  
fi

# Creating Credentials file
echo "Creating Credentials File"
mkdir ~/.snipsave/
touch ~/.snipsave/credentials

# Moving Download files to Snipsave Home folder
cp ./main.py ~/.snipsave/snipsave_cli.py

echo "alias ss='python3 ~/.snipsave/snipsave_cli.py'" >> ~/.zshrc

echo "-----------------------------"
echo ""
echo "Welcome to SnipSave CLI!"
echo ""
echo "To add your credentials to"
echo "the CLI, type:"
echo ""
echo "$ ss configure"
echo ""
echo "Or, check out the our"
echo "documentation at"
echo "https://snipsave.com/cli/docs"
echo ""
echo "-----------------------------"
