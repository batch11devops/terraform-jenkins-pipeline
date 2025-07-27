pipeline {
    agent any

    stages {
        stage('Init') {
            steps {
                sh '/usr/local/bin/terraform init'
            }
        }

        stage('Validate') {
            steps {
                sh '/usr/local/bin/terraform validate'
            }
        }

        stage('Plan') {
            steps {
                sh '/usr/local/bin/terraform plan'
            }
        }

        stage('Apply') {
            steps {
                sh '/usr/local/bin/terraform apply -auto-approve'
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
