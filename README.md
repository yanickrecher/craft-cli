# craft-cli
Extend your local installation of Craft CMS with some basic helpers.
You can use them to keep your Environments Assets synced.
The Basis of this approach is rsync which runs over ssh. 

To use this tools you need a working ssh connection. Best practice is to put
your public key on the Server to omit password authorization.

## Installation

### Environment
Clone this repo in any place. Recommended is you user folder. 

Add the bin folder to your terminal config file to get 
autocomplete fo the commends where ever you are.

Bash (~/.bash_profile):
```
export PATH="~/craft-cli/bin:$PATH"
```

ZSH (~/.zshrc): 
```
export PATH=~/craft-cli/bin:$PATH
```

After saving that, you have to close your current Terminal
and open a new Terminal window.

### ssh
Save your public Key in your Providers ssh section.

To create a ssh public key use the follow Link: 
* [ssh.com](https://www.ssh.com/ssh/keygen/)
* [Cyon-SSH](https://www.cyon.ch/support/a/ssh-key-erstellen) 
* [Hostpoint-SSH](https://support.hostpoint.ch/de/produkte/webhosting/haeufig-gestellte-fragen/wie-kann-ich-ssh-einrichten-und-verwenden)

### Composer
Don't forget to install the composer dependencies.
change your directory to: 
```
cd ~/craft-cli/bin/_php
``` 
and run:
```
composer install
``` 

Now your tools should be ready to use.

## Usage
The commands are based on a file called: 
```
.siteconfig.yaml
```

There are all passwords and stuff saved, 
so keep in mind adding the follow to your .gitignore:
```gitignore
.siteconfig.yaml
```

If you have installed a Craft CMS locally you can change to 
your base root of your project and run the follow command:
```
setup-siteconfig
```
This command just creates a .siteconfig.yaml for you, just answer the questions.

# Troubleshoting
If your commends are not accessible with autocomplete in the terminal
and you open a new terminal window after you add your bin folder to the home path
then you may lack of execution right on the folder or the files in it.

just run:
```
sudo chmod +x some-comment
```
