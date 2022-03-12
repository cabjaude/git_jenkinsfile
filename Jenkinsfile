node {
  def remote = [:]
  remote.name = 'test'
  remote.host = '192.168.1.70'
  remote.user = 'vagrant'
  remote.password = 'vagrant'
  remote.allowAnyHosts = true
  stage('Remote SSH') {
    sshCommand remote: remote, command: "cd /home/vagrant/teste-ping" 
    sshCommand remote: remote, command: "sh script-teste.sh"
  }
}
