set --export NVM_DIR $HOME/.nvm

function nvm
 bass source ~/.nvm/nvm.sh --no-use ‘;’ nvm $argv
end