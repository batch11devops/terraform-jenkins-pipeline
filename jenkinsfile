pipeline {
    agent any

    stages {
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
                sh 'terraform plan'
            }
        }

        stage('Apply') {
            steps {
                sh 'terraform apply -auto-approve'
            }
        }

        stage('Check Output') {
            steps {
                sh '''
                echo "Files inside /tmp/tf-dir1:"
                ls -l /tmp/tf-dir1
                echo "Files inside /tmp/tf-dir2:"
                ls -l /tmp/tf-dir2
                '''
            }
        }
    }
}

