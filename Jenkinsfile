node {
  def remote = [:]
  remote.name = 'test'
  remote.host = '192.168.1.70'
  remote.user = 'vagrant'
  remote.password = 'vagrant'
  remote.allowAnyHosts = true
  stage('Remote SSH') {
    sshCommand remote: remote, command: "git clone https://github.com/cabjaude/teste-ping.git" 
  stage('acesso a pasta')     
    sshCommand remote: remote, command: "cd teste-ping"
  stage('script shell')     
    sshCommand remote: remote, command: "./script-teste.sh"
  }
}
