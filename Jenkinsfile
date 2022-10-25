pipeline {
	agent any
	environment {
		APP_NAME = "Node Test App"
	}
	stages {
        stage('Cleanup Workspace') {
            steps {
                cleanWs()
                sh """
                echo "Cleaned Up Workspace for ${APP_NAME}"
                """
            }
        }
				stage('print hello world') {
							steps {
								sh """
								echo "Hello World"
								"""
							}
				}
	}
}
