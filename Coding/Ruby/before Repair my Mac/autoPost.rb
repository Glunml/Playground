# -*- encoding: utf-8 -*-
require 'xmlrpc/client'

# ユーザ情報
user     = 'tatumanakano'
password = 'tatuma0326'

# 投稿区分 ( 0 : 下書き登録, 1 : 即時投稿 )
publish = 1

# 記事タイトル
title  =  "テスト投稿"

# 投稿内容 ( タグも使用可 )
description =  "1. XML-RPC による投稿のテストです。\n"
description << "2. XML-RPC による投稿のテストです。\n"
description << "3. XML-RPC による投稿のテストです。\n"

# カテゴリ ( 配列で設定 )
category = [ "ブログ" ]

# タグ ( 配列で設定 )
keywords = [ "WordPress" ]

# インスタンス化
# ( "http://www.c-ryugaku.com/xmlrpc.php" に投稿する例 )
client = XMLRPC::Client.new( 'www.c-ryugaku.com', 'xmlrpc.php')

# 投稿情報構造体 ( ハッシュで設定 )
struct = {
  'title'       => title,
  'description' => description,
  'categories'  => category,
  'mt_keywords' => keywords
}

# 投稿の実行
# ( "metaWeblog.newPost" というプロシージャを
#   ブログＩＤ、ユーザ名、ユーザパスワード、投稿情報構造体、投稿区分
#   の引数を付けてコールすると、ポストID が返る )
# 
id = client.call(
  "metaWeblog.newPost",
  1,
  user,
  password,
  struct,
  publish
)
puts "PostID: #{id}"