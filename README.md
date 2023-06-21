# [SnipSave](https://snipsave.com/) Command Line Interface (CLI) #
This is the Official Repository for the SnipSave Command Line Interface (CLI)

## Intro ##
In order to interact with your SnipSave repository from the command line, you can use the SnipeSave command line interface (CLI) to do so. It is very simple to use compared to other common version control systems, while maintaining the main features.

## Dependencies: ##
The SnipSave CLI is written in python, therefore python 3.6 or greater is recommended on your machine.


## Steps to Get Started ##
1. Clone the repository
2. Run the installer script, for your respective operating system Ex: if on Mac OS: run `sh MAC_INSTALLER.sh`
3. Run `ss configure` and enter your email and password when prompted


## Commands ##
All commands are preceded by `ss`

### ss pull <snippet name> ###
This command is used to pull a snippet from the user’s account. It will overwrite any file with the same name as the snippet.

Ex:
$ ss pull login

If the snippet is more than one word, simply add quotations. 

Ex:
$ ss pull “login snippet”

This will pull in the snippet into your local environment

### ss push <local_file> <snippet_title> ###
This command pushes the local code snippet to SnipSave. Before pushing to your repository, the snippet has to be created in the browser. This is to ensure that the command knows what Snippet is being referenced when pushing to your Snippet Repository.

Ex:
$ ss push login.py login

This will push your snippet to your repository

### ss configure ###
This command is used to configure the user’s email and password in order to authenticate users from the command line. It will prompt you for your email and password, which will add your credentials to a file located at ~/.snipsave/credentials

## Throttling ##
The SnipSave CLI allows for 5 requests every 30 seconds under the free tier. Upgrading to SnipSave Pro allows for a much greater 100 requests per 30 seconds. It is recommended to upgrade to SnipSave pro if your applications will be utilizing the CLI, so they are not stopped by the request limit.

You can contact SnipSave Support at support@snipsave.com for details on our unlimited request plan for the CLI.
