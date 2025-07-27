pipeline {
    agent any

    environment {
        TF_VAR_example = 'value'   // Optional: Set any environment variable if needed
    }

    stages {
        stage('Checkout Code') {
            steps {
                git credentialsId: 'terra-job', url: 'https://github.com/batch11devops/terraform-jenkins-pipeline', branch: 'main'
            }
        }

        stage('Init') {
            steps {
                sh 'terraform init'
            }
        }

        stage('Validate') {
            steps {
                sh 'terraform validate'
            }
        }

        stage('Plan') {
            steps {
                sh 'terraform plan -out=tfplan'
            }
        }

        stage('Apply') {
            steps {
                input message: "Do you want to apply the changes?"
                sh 'terraform apply tfplan'
            }
        }

        stage('Check Output') {
            steps {
                sh 'terraform output'
            }
        }
    }
}

