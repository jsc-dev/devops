include_recipe 'esycat::sys-utils'
include_recipe 'esycat::fs-utils'

package 'coreutils'
package 'bash-completion'
package 'zsh'
package 'wget'
package 'vim'
package 'vim-scripts'
package 'mc'
package 'p7zip-full'
package 'realpath'
package 'whois'
package 'rsync'
package 'xpdf'
package 'pwgen'
package 'git'
package 'ssh'
package 'screen'
package 'ntp'

if %w{debian}.include?(node.platform_family)
    package 'aptitude'
    package 'software-properties-common'
    package 'python-software-properties'
end

service 'ntp' do
    action :enable
end
