```
- name: deploy to server
        uses: AEnterprise/rsync-deploy@v1.0
        env:
          DEPLOY_KEY: ${{ secrets.SERVER_SSH_KEY }}
          ARGS: "-e -c -r --delete"
          SERVER_PORT: ${{ secrets.SERVER_PORT }}
          FOLDER: "/" # nid too add / 
          SERVER_IP: ${{ secrets.SERVER_IP }}
          USERNAME: ${{ secrets.USERNAME }}
          SERVER_DESTINATION: ${{ secrets.SERVER_DESTINATION }}
          PROJECT_NAME: "project name"
```
