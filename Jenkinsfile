pipeline {
    agent any
    environment {
        AWS_ACCESS_KEY_ID = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
        REGION = credentials('REGION')
        PROJECT_NAME = credentials('PROJECT_NAME')
        VPC_CIDR = credentials('VPC_CIDR')
        PUB_SUB_1A_CIDR = credentials('PUB_SUB_1A_CIDR')
        PUB_SUB_2B_CIDR = credentials('PUB_SUB_2B_CIDR')
        PRI_SUB_3A_CIDR = credentials('PRI_SUB_3A_CIDR')
        PRI_SUB_4B_CIDR = credentials('PRI_SUB_4B_CIDR')
        PRI_SUB_5A_CIDR = credentials('PRI_SUB_5A_CIDR')
        PRI_SUB_6B_CIDR = credentials('PRI_SUB_6B_CIDR')
        DB_USERNAME = credentials('DB_USERNAME')
        DB_PASSWORD = credentials('DB_PASSWORD')
        CERTIFICATE_DOMAIN_NAME = credentials('CERTIFICATE_DOMAIN_NAME')
        ADDITIONAL_DOMAIN_NAME = credentials('ADDITIONAL_DOMAIN_NAME')
    }
    stages {
        stage("Deploy Node.js app") {
            steps {
                script {
                    dir('root') {
                        sh "terraform init"
                        sh "terraform apply -auto-approve -var 'project_name=${PROJECT_NAME}' -var 'region=${REGION}' -var 'vpc_cidr=${VPC_CIDR}' -var 'pub_sub_1a_cidr=${PUB_SUB_1A_CIDR}' -var 'pub_sub_2b_cidr=${PUB_SUB_2B_CIDR}' -var 'pri_sub_3a_cidr=${PRI_SUB_3A_CIDR}' -var 'pri_sub_4b_cidr=${PRI_SUB_4B_CIDR}' -var 'pri_sub_5a_cidr=${PRI_SUB_5A_CIDR}' -var 'pri_sub_6b_cidr=${PRI_SUB_6B_CIDR}' -var 'db_username=${DB_USERNAME}' -var 'db_password=${DB_PASSWORD}' -var 'certificate_domain_name=${CERTIFICATE_DOMAIN_NAME}' -var 'additional_domain_name=${ADDITIONAL_DOMAIN_NAME}'"
                    }
                }
            }
        }
    }
}
