class profiles::agent_nodes {
  include dockeragent
  dockeragent::node {'localhost'}
  dockeragent::node {'web.puppet.vm':}
  dockeragent::node {'db.puppet.vm':}
}
