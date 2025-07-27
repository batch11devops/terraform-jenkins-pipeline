pipeline {
    agent any
    environment {
        TERRAFORM_PATH = "/usr/local/bin/terraform"
    }
    stages {
        stage('Checkout Code') {
            steps {
                git credentialsId: 'terra-job', url: 'https://github.com/batch11devops/terraform-jenkins-pipeline'
            }
        }
        stage('Init') {
            steps {
                sh "${TERRAFORM_PATH} init"
            }
        }
        stage('Validate') {
            steps {
                sh "${TERRAFORM_PATH} validate"
            }
        }
        stage('Plan') {
            steps {
                sh "${TERRAFORM_PATH} plan"
            }
        }
        stage('Apply') {
            steps {
                sh "${TERRAFORM_PATH} apply -auto-approve"
            }
        }
        stage('Check Output') {
            steps {
                sh "${TERRAFORM_PATH} output"
            }
        }
    }
}

