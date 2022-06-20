properties([disableConcurrentBuilds()])

pipeline {
    agent any

	options {
		timestamps()
	}
    stages {
        stage('Create docker image') {
            steps {
                // Get some code from a GitHub repository
                echo "#########START BUILDING IMAGE#########"
                bat "docker build -t getting-started ."
				bat "docker run -d -p 8778:8778 -p 8080:8080  getting-started"
                echo "Bababa"
            }
        }
    }
}
