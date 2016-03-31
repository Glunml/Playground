var request = require('request');
var cheerio = require('cheerio');

var roomInfo = new Array;

var count = 0;

request('https://bbs.ablogg.jp/usa/sfo/thread/rent/',function(error, response, html){
	if(!error && response.statusCode == 200){
		var $ = cheerio.load(html);
/*
		$('.thread-info,h3').each(function(i, element){//全ての(.eachの)span.feeに対してfunctionをかける
			var fee = $(this).find('span.fee'); //$(this)でそれ自体を選ぶことができる
			var title = $(this).find('.thread-title');
			roomInfo.push({title:title.text(),fee:fee.text()});
			console.log(roomInfo);
		})
*/
		(function(){
			roomInfo[count] = [];
		$('.thread-title').each(function(){
			var title = $(this).find('.thread-title');
			roomInfo[count][0] = (title.text());
			});
		$('.fee').each(function(){
			var fee = $(this).find('.fee');
			roomInfo[count][1] = (fee.text());
		});
			
			count++;
		})();
		
		console.log(roomInfo[1]);
	}
});

