# My first Ruby
#coding: utf-8

# puts 'もしかして括弧もいらない？'
# puts 'しかもコロンもいらない？';
# puts 'コロンがないと、改行されない?';
# puts 'いや、改行タグが必要なのか';
# puts 'あれ？違うなどうやったら改行できるんだ？';
# puts '円マークは認識されないみたい\n'
# puts 'だからバックスラッシュを入力する必要があるみたい'
# puts 'それも違った。printでは括弧なしの改行はできないか、何か他の方法があるみたいだ。今はとりあえずスルーして、putsを使う。'

sesu = 123
moji = "321"
booleeeen = true

#え、ruby超短くて済むやん。何にも定義せんでいいやん。

# puts sesu
# 
# say = "He said\"I'll be back\""#全角スペースには気をつけるように
# #クォーテーションとダブルクォーテーション\"で'を文字として扱える
# 
# puts say
# 
# puts "文字列の中で式展開させる。sesu= #{sesu}"
# puts `date` #バッククォーテーションでコマンドの出力。この場合は今日の日付を表示
# puts "Hello"

# puts <<Shikibetsushi
# 	This is 識別子
# 	This is also 識別子
# Shikibetsushi
# 
# 
# puts <<Shikibetsushi
# 	This is 識別子
# 	This is also 識別子
# Shikibetsushi
# 
# #これで複数行一気にかける（だけじゃないと思うけどとりあえずスルー）
# 
# 
# puts <<first,<<second 
# 	This is first string
# first
# 	This is second string.
# second

#これで複数の識別子をまとめて書ける。注意点は<<first,と<<secondの間にスペースを入れないこと。


# def localVar() #これがローカル変数
# 	var = 123
# end
# 
# puts localVar()




#-------------------------------------------------
#この記述だとsetNameとgetNameを1回しか使えない

# 	def setName(str)
# 		@name = str #インスタンス変数は＠をつける
# 	end
# 	
# 	def getName()
# 		return @name
# 	end
# 
# 
# setName("Nakano")
# 
# puts getName();

#-------------------------------------------------


#-------------------------------------------------

#こうしてClassで囲うと、2つ以上のオブジェクトを同じコードから使いまわせる

# class MyClass
# 	
# 	def setName(str)
# 		@name = str #これが本題。インスタンス変数。オブジェクトが存在する間有効
# 	end
# 	
# 	def getName()
# 		return @name
# 	end
# end
# 
# obj1 = MyClass.new()
# obj2 = MyClass.new()
# 
# obj1.setName("Nakano")
# 
# puts obj1.getName();
# puts obj2.getName();


#-------------------------------------------------







# #クラス変数は@@をつける
# class MyClass
#   def setName(str)
#     @@name = str
#   end
# 
#   def getName()
#     return @@name
#   end
# end
# 
# obj1 = MyClass.new()
# obj2 = MyClass.new()
# obj1.setName("Tanaka")
# puts obj1.getName()           # => Tanaka
# puts obj2.getName()           # => Tanaka





# #$マークをつけるとグローバル変数（どこからでもスコープに入る）になる
# 
# $name = "Tanaka"
# puts $name







# #大文字で始めるとCONSTになる。1度値を代入すると変えられない
# 
# # puts PI; イニシャライズしないとconstはエラーになる
# PI = 3.14;
# puts "After #{PI}"


#配列
# array = ["one","two","three"]
# 
# puts array[0];


# # 二重配列
# doubleArray = [["A","one"],["B","two"],["C","three"]]
# 
# puts doubleArray[0][0]





# #arrayの長さを取得するにはlengthかsizeを使う
# arrayLength = [1,2,3,4,5]
# 
# puts arrayLength.length
# puts arrayLength.size




# #配列を繰り返し参照。最初から最後までを全部取得。
# arrayX = [1,2,3,4,5]
# 
# arrayX.each{ |x|
# 	puts x
# }



# #ハッシュ
# .each_keyで文字列取得。.each_valueで数値取得.each_pairで両方取得

# 
# month = {"Jan" => 1, "Feb" => 2, "Mar" => 3}
# 
# month.each_key{ |key|
# 	puts key
# }



# month = {"Jan" => 1, "Feb" => 2, "Mar" => 3}
# 
# month.each_value{ |value|
# 	puts value
# }



# month = {"Jan" => 1, "Feb" => 2, "Mar" => 3}
# 
# month.each_pair{ |pair|
# 	puts pair
# }


# 範囲(Range) forだけどloopではないのか？
# n..m（点2つがn以上m以下）
# n...m（点3つがn以上m以下）

# for i in 1..5 do
# 	puts i 
# end
# 
# for i in 1...5 do
# 	puts i 
# end


# # if構文
# 
# num = 11
# 
# if num > 10 then
# 	puts "BIG"
# elsif num <= 10 && num >= 5 then #else ifの書き方に注意
# 	puts "SOSO"
# else
# 	puts "SMALL"
# end




# # ～の場合(case, when)
# 
# num = 1
# case num #numが
# when 1..3 then#1~3だったら
#   puts "SMALL"#SMALLと表示
# when 4..6 then#4~6だったら
#   puts "NORMAL"#NORMALと表示
# else#その他は
#   puts "BIG"#BIGと表示
# end




