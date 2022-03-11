node {
  def remote = [:]
  remote.name = 'test'
  remote.host = '192.168.1.70'
  remote.user = 'vagrant'
  remote.password = 'vagrant'
  remote.allowAnyHosts = true
  stage('Remote SSH') {
    sshGet remote: remote, from: 'scriptping.sh', into: 'scriptping.sh', override: true
    
  }
}
