_php_artisan_completer() {
    #Thank you to https://github.com/robbyrussell/oh-my-zsh/blob/master/plugins/laravel5/laravel5.plugin.zsh
	[[ -a artisan ]] && compadd $(php artisan --no-ansi | sed "1,/Available commands/d" | awk '/^ +[a-z]+/ { print $1 }')
}
compdef _php_artisan_completer artisan='php artisan'
alias artisan="php artisan"
