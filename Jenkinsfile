pipeline {
agent any

```
environment {
       TF_DIR = "dev"
       TF_CLI_ARGS = "-no-color"   // Ensures clean, aligned output
}

stages {

    stage('Checkout Code') {
        steps {
            git 'https://github.com/kgovardhan409/full-stack-deployment.git'
        }
    }

    stage('Terraform Init') {
        steps {
            sh 'terraform init'
        }
    }

    stage('Terraform Validate') {
        steps {
            sh 'terraform validate'
        }
    }

    stage('Terraform Plan') {
        steps {
            sh 'terraform plan -out=tfplan'
        }
    }

    stage('Terraform Apply') {
        steps {
            input message: "Do you want to apply Terraform changes?"
            sh 'terraform apply -auto-approve tfplan'
        }
    }
}
```

}
