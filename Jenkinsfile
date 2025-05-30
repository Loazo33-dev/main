pipeline {
    agent any

    stages {
        stage('Clonar repositorio') {
            steps {
                git 'https://github.com/Loazo33-dev/main'
            }
        }

        stage('Instalar dependencias backend') {
            steps {
                dir('src') {
                    sh 'npm install'
                }
            }
        }

        stage('Levantar servicios con Docker') {
            steps {
                sh 'docker-compose up -d --build'
            }
        }

        stage('Pruebas') {
            steps {
                dir('src') {
                    sh 'npm test'
                }
            }
        }

        stage('Apagar Docker') {
            steps {
                sh 'docker-compose down'
            }
        }
    }
}
