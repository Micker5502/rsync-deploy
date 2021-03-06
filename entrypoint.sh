#!/bin/bash
set -eu

SSHPATH="$HOME/.ssh"
mkdir -p "$SSHPATH"
echo "$DEPLOY_KEY" > "$SSHPATH/key"
chmod 600 "$SSHPATH/key"
SERVER_DEPLOY_STRING="$USERNAME@$SERVER_IP:$SERVER_DESTINATION"
cp -r $GITHUB_WORKSPACE/ $HOME/$PROJECT_NAME
# sync it up"
sh -c "rsync $ARGS -e 'ssh -i $SSHPATH/key -o StrictHostKeyChecking=no -p $SERVER_PORT' $HOME/$PROJECT_NAME$FOLDER $SERVER_DEPLOY_STRING"
