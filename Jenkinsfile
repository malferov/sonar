pipeline {
    agent any
    environment {
        repo    = "https://github.com/malferov/sonar.git"
    }
    stages {
        stage('Checkout') {
            steps {
                git branch: 'sonarqube', url: "${env.repo}"
                sh "git status"
            }
        }
        stage('SonarQube') {
            steps {
                script {
                    scannerHome = tool 'scanner'
                }
                withSonarQubeEnv('sonar') {
                    sh "${scannerHome}/bin/sonar-scanner"
                }
            }
        }
    }
}
