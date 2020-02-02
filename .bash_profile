#export GOROOT=/usr/local/go
#export GOPATH=$HOME/go
#export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

sublist(){
         mkdir -p ~/recon/$1/$(date +'%m_%d_%Y')/
         python3 ~/tools/Sublist3r/sublist3r.py -d $1 | tee ~/recon/$1/$(date +'%m_%d_%Y')/$(date +'%H_%M').txt
 }
assetfind(){
         mkdir -p $(date +'%m_%d_%Y')
         assetfinder $1 | tee $(date +'%m_%d_%Y')/$(date +'%H_%M').txt
}
