pipeline {
    agent any
    environment {
        AWS_ACCESS_KEY_ID = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
        DB_USERNAME = credentials('DB_USERNAME')
        DB_PASSWORD = credentials('DB_PASSWORD')
    }
    stages {
        stage("Deploy Node.js app") {
            steps {
                script {
                    dir('root') {
                        sh "terraform init"
                        sh "terraform apply -auto-approve -var 'db_username=${DB_USERNAME}' -var 'db_password=${DB_PASSWORD}'"
                    }
                }
            }
        }
    }
}
