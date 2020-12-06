## cfn_nag report for SonarQube
```
docker run -v `pwd`/template.yaml:/template.yaml stelligent/cfn_nag --output-format=json /template.yaml > template.yaml.nag
```

## Jenkins pipeline
- Manage Jenkins -> Manage Plugins -> Available -> filter: sonar -> SonarQube Scanner for Jenkins -> Install and restart
- Manage Jenkins -> Configure System -> SonarQube servers -> Add SonarQube -> Name: `sonar`, Host: http://<sonar>:9000 -> Save
- Manage Jenkins -> Global Tool Configuration -> Add SonarQube Scanner -> Name: `scanner` -> Save
- Create new project using `pipeline` template and paste `jenkins/Jenkinsfile` content
