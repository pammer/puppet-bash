class bash::user::root (
  $prompt             = $bash::params::root_prompt,
  $histcontrol        = $bash::params::histcontrol,
  $histfilesize       = $bash::params::histfilesize,
  $skel_file          = $bash::params::skel_file,
  $skel_template      = $bash::params::skel_template,
) inherits bash::params {


  bash::bashrc { "/root/.bashrc": 
    prompt        => "$prompt",
    histcontrol   => "$histcontrol",
    histfilesize  => "$histfilesize",
    skel_template => "$skel_template",
    owner         => 'root',
    group         => 'root',
  }
  
}