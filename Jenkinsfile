node {
  def remote = [:]
  remote.name = 'test'
  remote.host = '192.168.1.70'
  remote.user = 'root'
  remote.password = '!cl@udi0!'
  remote.allowAnyHosts = true  
  stage('locate path')
    sshCommand remote: remote, command: "ls -lh"
  stage('script shell')     
    sshCommand remote: remote, command: "cat /root/teste-ping/script-teste.sh"
  }
}
