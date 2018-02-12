#
# Executes commands at logout.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Print the message.
#cat <<-EOF

#Thank you. Come again!
#  -- Dr. Apu Nahasapeemapetilon
#EOF


if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zlogout" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zlogout"
fi
