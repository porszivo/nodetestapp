pipeline {
	agent any
	environment {
		APP_NAME = "Node Test App"
	}
	options {
		buildDiscarder logRotator(
			daysToKeepStr: '15',
			numToKeepStr: '2'
		)
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
				stage('Checkout Code') {
					steps {
						checkout([
							$class: 'GitSCM',
							branches: [[name: '*/*']],
							userRemoteConfigs: [[url: 'https://github.com/porszivo/nodetestapp.git']]
						])
					}
				}
				stage('Build the application') {
					steps {
						sh """
							npm run build
						"""
					}
				}
	}
}
