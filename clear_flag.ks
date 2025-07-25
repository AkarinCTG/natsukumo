*start|
[initscene]

;//フラグ管理メッセージ

[next target=*on_notice_pr02 cond="sf.ky_clear == 1 && sf.notice_pr02 == 0 " ]
[next target=*not_notice_pr02]

*on_notice_pr02|
[msgon]
 [font color=0xbfc0c0]「歩き続けるための条件」[resetfont]
 [font color=0xbfc0c0]「夏休みの始まりと世界の終わり」[resetfont]が読み終わり、
 [font color=0xf39910]「零佳との始まり。僕の歪み」[resetfont]が追加されました。

[eval exp="sf.notice_pr02=1"]

*not_notice_pr02|

[next target=*on_notice_pr03 cond="sf.hm_clear == 1 && sf.notice_pr03 == 0 " ]
[next target=*not_notice_pr03]

*on_notice_pr03|
 [font color=0xf39910]「零佳との始まり。僕の歪み」[resetfont]が読み終わり、
 [font color=0xffbeff]「回転しながら落ちていく夢」[resetfont]が追加されました。

[eval exp="sf.notice_pr03=1"]

*not_notice_pr03|


[next target=*on_notice_pr06 cond="sf.rn_clear == 1 && sf.notice_pr06 == 0 " ]
[next target=*not_notice_pr06]

*on_notice_pr06|
 [font color=0xffbeff]「回転しながら落ちていく夢」[resetfont]が読み終わり、
 [font color=0xffff48]「崩れた世界の点の意味」[resetfont]が追加されました。

[eval exp="sf.notice_pr06=1"]

*not_notice_pr06|


*not_notice|


[msgoff]
;//フラグ管理メッセージ終了


;//プレイしたらおまけをｏｎにする
[eval exp="sf.clear=1"]

;//クリア後用紫穂ボイスフラグ初期化
[eval exp="f.sound_siho=0"]

;//フラグクリア
;//KYを読み終わっていないと選択肢はでない
[next target=*not_kyflag cond="sf.ky_clear == 0" ]

;//KYを一回みていたら表示
;//プロローグ３への選択肢は姫佳ルート終わったら表示
[seladd text="「得以继行的条件」"         target="*sel_0105"]
[seladd text="「暑假开始与世界终结」" target="*sel_0101"]
[seladd text="「和零佳的相遇与我的扭曲」"     target="*sel_0102"]
[seladd text="「回旋坠落之梦」"     target="*sel_0103"  eval="sf.hm_clear"]
[seladd text="「深究世界崩坏之因」"         target="*sel_0104"  eval="sf.rn_clear"]
[select]

*sel_0105|歩き続けるための条件
[eval exp="sf.walk_flag=1"]
[next storage=pr01.txt]

*sel_0101|夏休みの始まりと世界の終わり
[eval exp="f.pr02=0"]
[eval exp="f.pr03=0"]
[next storage=ky01.txt]

*sel_0102|零佳との始まり。僕の歪み
[eval exp="f.pr02=1"]
[eval exp="f.pr03=0"]
[next storage=pr02.txt]

*sel_0103|回転しながら落ちていく夢
[eval exp="f.pr02=0"]
[eval exp="f.pr03=1"]
[next storage=pr03.txt]

*sel_0104|崩れた世界の点の意味
[next storage=pr06.txt]


;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

*not_kyflag|
[next storage="pr01.txt"]


;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■






