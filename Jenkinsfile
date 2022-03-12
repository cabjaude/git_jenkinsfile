node {
  def remote = [:]
  remote.name = 'test'
  remote.host = '192.168.1.70'
  remote.user = 'root'
  remote.password = '!cl@udi0!'
  remote.allowAnyHosts = true  
  stage('locate path')
    sshCommand remote: remote, command: "sshPut remote: remote, from: 'cd /root/teste-ping', into: '.'"
  stage('script shell')     
    sshScript remote: remote, script: "script-teste.sh"
  }
}
