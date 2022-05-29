
pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
		echo "Build"
                sh 'docker build . -f /var/jenkins_home/docker-build.dockerfile -t builder'
		echo 'building is over'
            }
        }
	stage('Test'){
		steps{
			echo 'Test'
			sh 'docker build . -f /var/jenkins_home/docker-test.dockerfile -t tester'
			sh 'docker run tester'
			echo 'done testing'
		}
	}
	stage('Deploy'){
		steps{
			echo 'Deploy'
			sh 'docker build .  -f /var/jenkins_home/docker-deploy.dockerfile -t deployer'
			sh 'docker run builder'
			echo 'deploy is done'
		}

	}
	stage('Publish'){
		steps{
			echo 'publish'
			echo 'finally' 
		}
	}
}
}
