pipeline {
   agent any
   environment {
       TF_DIR = "prod"
       TF_CLI_ARGS = "-no-color"   // Ensures clean, aligned output
   }
   stages {
       stage('Checkout Code') {
           steps {
               git branch: 'master', url: 'https://github.com/kgovardhan409/full-stack-deployment.git'
           }
       }
       stage('Terraform Init') {
           steps {
               dir("${TF_DIR}") {
                   sh 'terraform init'
               }
           }
       }
       stage('Terraform Validate') {
           steps {
               dir("${TF_DIR}") {
                   sh 'terraform validate'
               }
           }
       }
       stage('Terraform Plan') {
           steps {
               dir("${TF_DIR}") {
                   sh 'terraform plan'
               }
           }
       }
       stage('Terraform Apply') {
           steps {
               dir("${TF_DIR}") {
                   sh 'terraform apply -auto-approve'
               }
           }
       }
   }
}