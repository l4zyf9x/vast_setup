echo "Running setup vast"

mkdir -p /usr/bin/gpg-agent
sudo apt remove gpg -y
sudo apt-get update -y
sudo apt-get install -y gnupg1

echo "Installing gcsfuse"
export GCSFUSE_REPO=gcsfuse-`lsb_release -c -s`
echo "deb http://packages.cloud.google.com/apt $GCSFUSE_REPO main" | sudo tee /etc/apt/sources.list.d/gcsfuse.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
sudo apt-get update
sudo apt-get install gcsfuse
echo "Finish install gcsfuse"


echo "Finished setup vast"