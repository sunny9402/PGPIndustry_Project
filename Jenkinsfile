
pipeline {
agent any
    
	    
    stages {
        stage('Checkout') {
            steps {
                checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/sunny9402/PGPIndustry_Project.git']])
    	
            }
        }
        stage("MavenBuild"){
            steps{
                sh "mvn -B clean compile install package --file pom.xml"
                sh "mvn test"
                
            }
        }
        stage("DockerAnsibleBuild"){
            steps{
                sh 'ansible-playbook ansibledocker.yml'
            }
        }
        
	    stage("kube Deploy"){
	        steps{
	            script{
	                kubeconfig(credentialsId: 'k8sec2', serverUrl: '') {
    sh 'ansible-playbook ansiblekubedeploy.yml'
}
	                
	            }
	        }
	    }
		    
    }

}
