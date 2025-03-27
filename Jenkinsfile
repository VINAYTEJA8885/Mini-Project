pipeline {
    agent any

    stages {
        stage('Clone Repo') {
            steps {
                git 'https://github.com/your-username/vinay-html-project.git'
            }
        }

        stage('Verify Files') {
            steps {
                sh 'ls -l'
            }
        }

        stage('Archive Site') {
            steps {
                archiveArtifacts artifacts: '**/*.html', fingerprint: true
            }
        }
    }

    post {
        success {
            echo 'HTML project build (CI) complete!'
        }
        failure {
            echo 'Something went wrong!'
        }
    }
}
