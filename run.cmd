echo Running mattermost for development
mkdir -p ../mattermost-webapp/dist/files
go run -ldflags "-X github.com/mattermost/mattermost-server/model.BuildNumber=w3im -X 'github.com/mattermost/mattermost-server/model.BuildDate=2018' -X github.com/mattermost/mattermost-server/model.BuildHash=sabbir -X github.com/mattermost/mattermost-server/model.BuildHashEnterprise=false -X github.com/mattermost/mattermost-server/model.BuildEnterpriseReady=false" ./cmd/mattermost/main.go --disableconfigwatch &
echo Running mattermost client for development
ln -nfs ../mattermost-webapp/dist client
cd ../mattermost-webapp && npm run run &