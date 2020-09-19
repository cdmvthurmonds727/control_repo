node default {

}
node 'localhost.puppet.vm' {
  include role::localhost.localdomain
}
