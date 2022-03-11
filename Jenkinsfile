node {
  def remote = [:]
  remote.name = 'test'
  remote.host = '192.168.1.70'
  remote.user = 'vagrant'
  remote.password = 'vagrant'
  remote.allowAnyHosts = true
  stage('Remote SSH') {
    writeFile file: 'scriptping.sh', text: 'ls -lrt'
    sshScript remote: remote, script: "scriptping.sh"
  }
}