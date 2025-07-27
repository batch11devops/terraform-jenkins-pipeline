pipeline {
    agent any

    environment {
        TERRAFORM_PATH = "/usr/bin/terraform"
    }

    stages {
        stage('Init') {
            steps {
                sh '#!/bin/bash -l\n$TERRAFORM_PATH init'
            }
        }

        stage('Validate') {
            steps {
                sh '#!/bin/bash -l\n$TERRAFORM_PATH validate'
            }
        }

        stage('Plan') {
            steps {
                sh '#!/bin/bash -l\n$TERRAFORM_PATH plan'
            }
        }

        stage('Apply') {
            steps {
                sh '#!/bin/bash -l\n$TERRAFORM_PATH apply -auto-approve'
            }
        }

        stage('Check Output') {
            steps {
                sh '''#!/bin/bash -l
                echo "Files inside /tmp/tf-dir1:"
                ls -l /tmp/tf-dir1
                echo "Files inside /tmp/tf-dir2:"
                ls -l /tmp/tf-dir2
                '''
            }
        }
    }
}

       
