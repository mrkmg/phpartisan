_php_artisan_completer() {
	[[ -a artisan ]] && compadd $(php artisan | grep "^  " | cut -d " " -f 3 | grep -v "^command$" | grep -v "^-" | sed '/^$/d')
}
compdef _php_artisan_completer artisan='php artisan'
alias artisan="php artisan"
