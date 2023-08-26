pipeline {
    agent { label'green' }
    stages {
        stage ('vcs') {
            steps {
                git url: "https://github.com/kanneboinaswapna/tera_jenkins.git", branch: 'main'
            }
        }
        stage ('build') {
            steps {
                sh """terraform init
                      terraform destroy -auto-approve"""
            }
        }
    }
}