//VIDEO 38:53
//http://schoo.jp/class/3059/room#

(function(){
	'use strict';
	
	var passedTime = 0;
	var intervalId;
	var timer = document.getElementById('timer');
	
	document.getElementById('start').addEventListener('click', start);
	//startというIDがクリックされた時、関数startを実行
	document.getElementById('stop').addEventListener('click', stop);
	document.getElementById('reset').addEventListener('click', reset);
	
	function start(){
		
		intervalId = setInterval(function(){
			passedTime++;
			render();
		}, 1000)
		
	}
	
	function stop(){
		clearInterval(intervalId);
	}
	
	function reset(){
		stop();
		passedTime = 0;
		render();
	}
	
	function render(){
		timer.textContent = zeroFill(minutes) + ':' + zeroFill(seconds);
	}
	

	
	
	render();//render();を最初に表示させるためにここにも書かないといけない
	
	
	function zeroFill(num){
		return ('0' + num).slice(-2);
	}
			
	
}());




/*
	setInterval(function(){
		var date = new Date();
		var hours = date.getHours();
		var minutes = date.getMinutes();
		var seconds = date.getSeconds();

		
		timer.textContent = zeroFill(hours) 
		+ ':' + zeroFill(minutes) 
		+ ':' + zeroFill(seconds);
		}, 1000);
*/



//------------------------------------------------------------------------------------

//------------------------------------------note--------------------------------------



//'use strict';
//ストリクトモード =>普通なら別に問題なく実行されるが今後問題を生み出す可能性のあるプログラムを組んだ時にエラーとして表示されるようにするコード


//------------------------------------------------------------------------------------



//Date(); 
//jsに元々用意されているインスタンスの一つ。引数に何も指定しなかった場合は現在時刻が表示される。


//------------------------------------------------------------------------------------



//setInterval(set, interval);
//interval秒ごとにset内を繰り返す。という意味


//------------------------------------------------------------------------------------


//.slice(-2);
//文字列の指定した部分だけを取り出すことができる。この場合の -2 だと、後ろから２文字を取ってくれる。

//Sample code
/*

		var sentence = ('This is a sentence!').slice(-5);
		
		console.log(sentence);
		
*/

//配列の扱いになるので、最初は0から始まる。
//例えば、 (5)を入れると6文字目から表示してくれる。
//(-5)を入れると、後ろから5文字を取ってくれる。



//------------------------------------------------------------------------------------

//passedTime += 1;
//valuable += num
//+=は
//valuable = valuable + num;
//と同じ意味

//------------------------------------------------------------------------------------


//clearInterval(valuable of setInterval);
//setInterval()で設定されたタイマーを解除します。パラメータにはsetInterval()が返したタイマーIDを指定します。

//------------------------------------------------------------------------------------


//addEventListener(, )
//何かが起きた時に実行する。クリックだったり、スクロールだったり、
