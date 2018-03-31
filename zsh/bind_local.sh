# Lego-webapp run
	function lego_yarn_run() {
		BUFFER="API_URL=https://lego-staging.abakus.no/api/v1 BASE_URL=https://lego-staging.abakus.no WS_URL=wss://ws-staging.abakus.no CAPTCHA_KEY=6LfS1TQUAAAAAIcxgj4EfkM7lwWeG9efLvS37tCW yarn start"
		zle accept-line
	}
	zle -N lego_yarn_run
	bindkey "^q" lego_yarn_run