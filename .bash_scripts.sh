#!/bin/bash

# greet the user
function greet() {
 	 echo 'Hello' $1'!'
}

cdd () {
cd ..
}


function mkhtmltwo() {
	mkdir $1
	cd $1
	mkdir img
	touch index.html
	touch stylesheet.css
	touch script.js
	echo 'You made a folder named' $1;
	echo 'With files included';
	#html doc gets a title and body
	echo -e "<html> \n <!DOCTYPE html> \n <head> \n  <title> This should show </title>" >> index.html
	echo -e "<link href="stylesheet.css" rel="stylesheet" type="text/css">" >> index.html
	echo -e "\n	<a href="https://github.com/popados" >[My Github Account] </a>" >> index.html
	echo -e " </head>" >> index.html
	echo -e " <body> " >> index.html
	echo -e " <div> This is text is for $1 </div>" >> index.html
	echo -e ' </body>' >> index.html	
	echo -e "<script src="script.js"> </script>" >> index.html
	echo -e '</html>' >> index.html
	}
	
function mkhtml(){
	mkdir $1
	cd $1
	mkdir img
	touch index.html
	touch stylesheet.css
	touch script.js
	
	cat <<- _EOF_ > index.html
	
<!DOCTYPE html>

	<html>
	<head>
	<title>$1</title>
	<link href="stylesheet.css" rel="stylesheet" type="text/css">
	<a href="https://github.com/popados" >[My Github Account] </a>
	</head>
	<body>
    <h1>$1</h1>
		<div></div>
	</body>
	<script src="script.js"> </script>
	</html>

	_EOF_
	
}	
	
	
	
	
function mkmd() {
	touch $1.md
	echo "made markdown file" $1
	echo "open $1.md to edit"
	echo -e "<div id="top-of-doc"></div>" >> $1.md
	echo -e "\n# Progress Record 2022 |" >> $1.md
	echo -e "\n[My Github Account](https://github.com/popados) | [First Quarter](#quarter-info) | [Jump to End](#end-of-doc)" >> $1.md
	echo -e "\n### DayNum | x/x/20xx - Today" >> $1.md 
	echo -e "\n***" >> $1.md
	echo -e "\n<div id="end-of-doc"></div>" >> $1.md
	echo -e "\n[Jump to Top](#top-of-doc)" >> $1.md

}



function mkindex {
	touch index.html
	#html doc gets a title and body
	echo -e "<html> \n <head> \n 	<title> This should show </title>" >> index.html
	echo -e "<link href="stylesheet.css" rel="stylesheet" type="text/css">" >> index.html
	echo -e " </head>" >> index.html
	echo -e " <body> " >> index.html
	echo -e " <div> This is text </div>" >> index.html
	echo -e " </body>" >> index.html
	echo -e "<script src="script.js"> </script>" >> index.html	
	echo -e "</html>" >> index.html


}

function mkreadme() {
	touch README.md
	echo "made markdown file README.md"
	echo "open README.md to edit"
	echo -e "<div id="top-of-doc"></div>" >> README.md
	echo -e "\n# Progress Record 2022 |" >> README.md
	echo -e "\n[My Github Account](https://github.com/popados) | [First Quarter](#quarter-info) | [Jump to End](#end-of-doc)" >> README.md
	echo -e "\n### DayNum | x/x/20xx - Today" >> README.md 
	echo -e "\n***" >> README.md
	echo -e "\n<div id="end-of-doc"></div>" >> README.md
	echo -e "\n[Jump to Top](#top-of-doc)" >> README.md

}




function mkgit {
	mkdir $1
	cd $1
	git init
	mkreadme
	touch .gitignore.txt
}



