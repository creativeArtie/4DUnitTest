var $1 : Integer
Case of 
	: ($1=On after host database startup:K74:4)
		runStartup
	: ($1=On before host database exit:K74:5)
		runExit
End case 