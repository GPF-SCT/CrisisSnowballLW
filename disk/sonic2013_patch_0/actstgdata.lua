---------------------------------------------------------------
-- actstgdata.lua
-- @author Kawabata Yoshitaka
-- @brief ステージ一覧を定義するファイルです。
---------------------------------------------------------------

---------------------------------------------------------------
-- このファイルは、開発メニューに表示されるステージを定義します。
--
-- ステージの動作の詳細は、actstgmission.luaに書きます。
-- このファイルはあくまで開発メニューの記述用だと考えてください。
-- 製品版ではこのファイルの情報は一切参照されません。


---------------------------------------------------------------
-- パラメータの説明
--
-- 
-- ■ stages テーブル
--
--		name	実行するミッション名。
--				該当するミッションがactstgmission.luaに定義されていない場合は、
--				ステージを仮設します。
--
--		title	メニューに表示されるテキスト。
-- 

stage_all = {
	-- Crisis City
   {
	  title = "Crisis Snowball",

	  stages = {
		 {
			name = "csc_a",
			title = "Crisis Snowball",
		 },
	  },
   },
   -- w1
   {
	  title = "w1草原",

	  stages = {
		 {
			name = "w1a01",
			title = "w1-1:グラスヒル",
		 },
		 {
			name = "w1a03",
			title = "w1-2:月光",
		 },
		 {
			name = "xind01",
			title = "w1-3:インディ洞窟",
		 },
		 {
			name = "w1a06",
			title = "w1-4:月光２",
		 },
	  },
   },
   -- w2
   {
	  title = "w2砂漠",

	  stages = {
		 {
			name = "w2a01",
			title = "w2-1:サンドワーム軍",
		 },
		 {
			name = "xbee01",
			title = "w2-2:ハチの巣ガンメン",
		 },
		 {
			name = "xswe01",
			title = "w2-3:ilomiloお菓子",
		 },
		 {
			name = "w2a06",
			title = "w2-4:竜巻",
		 },
	  },
   },
   -- w3
   {
	  title = "w3南国",

	  stages = {
		 {
			name = "w3a01",
			title = "w3-1:南国ビーチ",
		 },
		 {
			name = "w3a03",
			title = "w3-2:フルーツ農園",
		 },
		 {
			name = "xsea01",
			title = "w3-3:海底洞窟",
		 },
		 {
			name = "w3a06",
			title = "w3-4:オニキンメ",
		 },
		 {
			name = "w6a03",
			title = "w3-X:上昇気流",
		 },
	  },
   },
   -- w4
   {
	  title = "w4雪",

	  stages = {
		 {
			name = "w4a01",
			title = "w4-1:軍事工場",
		 },
		 {
			name = "w4a04",
			title = "w4-2:ポッポーズ",
		 },
		 {
			name = "xcas01",
			title = "w4-3:カジノ",
		 },
		 {
			name = "w4a06",
			title = "w4-4:ゲレンデ",
		 },
	  },
   },
   -- w5
   {
	  title = "w5ジャングル",

	  stages = {
		 {
			name = "w5a01",
			title = "w5-1:ジャングル軌道施設",
		 },
		 {
			name = "w5a02",
			title = "w5-2:ミミズク",
		 },
		 {
			name = "xind02",
			title = "w5-3:インディ洞窟2",
		 },
		 {
			name = "xmoa01",
			title = "w5-4:モアイ",
		 },
	  },
   },
   -- w6
   {
	  title = "w6空",

	  stages = {
		 {
			name = "w1a04",
			title = "w6-1:大ナール軍",
		 },
		 {
			name = "w5a03",
			title = "w6-2:飛竜",
		 },
		 {
			name = "w6a05",
			title = "w6-3:上昇気流２",
		 },
		 {
			name = "w2c01",
			title = "w6-4:黄色三連バネ",
		 },
		 {
			name = "xnim02",
			title = "w6-X:キン斗雲２",
		 },
	  },
   },
   -- w7
   {
	  title = "w7溶岩",
	  stages = {
		 {
			name = "w7a01",
			title = "w7-1:火山",
		 },
		 {
			name = "xsea02",
			title = "w7-2:海底洞窟2",
		 },
		 {
			name = "w7a02",
			title = "w7-3:城塞火山2",
		 },
		 {
			name = "w7a06",
			title = "w7-4:ラスボス戦",
		 },
	  },
   },
   -- w8
   {
	  title = "w8スペシャル",
	  stages = {
		 {
			name = "xcub01",
			title = "w8-1:ルービックキューブ",
		 },
		 {
			name = "xsky01",
			title = "w8-2:スカイチェイス",
		 },
		 {
			name = "xnim01",
			title = "w8-3:筋斗雲",
		 },
		 {
			name = "xbak01",
			title = "w8-4:バクバク足場",
		 },
	  },
   },
 -- mini game
   {
	  title = "ミニゲーム",

	  stages = {
		 {
			name = "mini01",
			title = "seesaw1",
		 },
		 {
			name = "mini02",
			title = "seesaw2",
		 },
		 {
			name = "mini03",
			title = "seesaw3",
		 },
		 {
			name = "mini04",
			title = "trampoline1",
		 },
		 {
			name = "mini05",
			title = "trampoline2",
		 },
		 {
			name = "mini06",
			title = "trampoline3",
		 },
		 {
			name = "mini07",
			title = "cannon1",
		 },
		 {
			name = "mini08",
			title = "cannon2",
		 },
		 {
			name = "mini09",
			title = "cannon3",
		 },
		 {
			name = "mini10",
			title = "w7 only",
		 },
	  },
   },
 -- battle game
   {
	  title = "対戦",

	  stages = {
		 {
			name = "batl01",
			title = "スピードレース1 1-1 w1a01 グラスヒル",
		 },
		 {
			name = "batl02",
			title = "スピードレース2　1-3 xind01 インディ洞窟",
		 },
		 {
			name = "batl03",
			title = "スピードレース3 2-4 w2a06 竜巻",
		 },
		 {
			name = "batl04",
			title = "スピードレース4 4-1 w4a01 軍事工場",
		 },
		 {
			name = "batl05",
			title = "スピードレース5 5-3 xind02 インディー洞窟2",
		 },
		 {
			name = "batl06",
			title = "エキスパートスピード1 2-1 w2a01 サンドワーム軍",
		 },
		 {
			name = "batl07",
			title = "エキスパートスピード2 3-1 w3a01 南国ビーチ",
		 },
		 {
			name = "batl08",
			title = "エキスパートスピード3 3-3 xsea01 海底洞窟",
		 },
		 {
			name = "batl09",
			title = "エキスパートスピード4 5-1 w5a01 ジャングル軌道施設",
		 },
		 {
			name = "batl10",
			title = "エキスパートスピード5 6-3 w6a05 上昇気流2",
		 },		 
		 {
			name = "batl11",
			title = "リングレース1 2-4 w2a06 竜巻",
		 }, 
		 {
			name = "batl12",
			title = "リングレース2 4-B w4a06 ゲレンデ",
		 },
		 {
			name = "batl13",
			title = "リングレース3 5-2 w5a02 ミミズク",
		 },
		 {
			name = "batl14",
			title = "リングレース4 6-3 w6a05 上昇気流2",
		 },
		 {
			name = "batl15",
			title = "リングレース5 4-B w7a02 城塞火山２（ラッシュ）",
		 },


	  },
   },
 -- DLC
   {
	  title = "DLC",

	  stages = {
		-- セガDLCナイツ
		 {
			name = "zdlc01",
			title = "NiGHTS",
		 },
		-- 任天堂DLCヨッシーアイランド
		 {
			name = "zdlc02",
			title = "ヨッシーアイランド",
		 },
		-- 任天堂DLCゼルダの伝説
		 {
			name = "zdlc03",
			title = "ゼルダの伝説",
		 },
	  },
   },
   -- テストステージ
   {
	  title = "テストステージ",

	  stages = {
		 -- デザインテストマップ
		 {
			name = "w0c99",
			title = "デザインテストマップ",
		 },

		 -- 撮影所
		 {
			name = "w0c99_2",
			title = "撮影所",
		 },

		 -- シェーダーテストマップ
		 {
			name = "w0c98",
			title = "シェーダーテストマップ",
		 },

		 -- デザインテストマップ2(暗い面)
		 {
			name = "w0c97",
			title = "デザインテストマップ2(暗い面)",
		 },

		 -- コリジョンテストマップ
		 {
			name = "w0c96",
			title = "コリジョンテストマップ",
		 },

		 -- w0-1
		 {
			name = "w0a01",
			title = "w0a01：プロト分割",
		 },
		 -- プロトタイプ
		 {
			name = "stg988",
			title = "プロトタイプ",
		 },
		 -- w1-2
		 {
			name = "stg812",
			title = "w1-2：インディ洞窟",
		 },
		 -- w1-3
		 {
			name = "stg820",
			title = "w1-3：月光",
		 },
		 -- w1-5
		 {
			name = "w1a05",
			title = "w1-5：モアイ",
		 },
		 -- w2-1
		 {
			name = "stg815",
			title = "w2-1：大外周テスト",
		 },
		 -- w2-6
		 {
			name = "stg822",
			title = "w2-6：竜巻テスト",
		 },
		 -- w2-2直径10ｍテスト
		 {
			name = "stg823",
			title = "w2-2：直径20ｍテスト",
		 },
		 -- w0-4
		 {
			name = "w0a04",
			title = "w3-5：SVカジノテスト（w0a04）",
		 },
		 -- モヒカンテスト
		 {
			name = "stg814",
			title = "モヒカンテスト",
		 },
		 -- FV壁走りテスト（旧w1-1）
		 {
			name = "stg811",
			title = "FV壁走りテスト",
		 },
		 -- SV壁走りテスト
		 {
			name = "w0a07",
			title = "SV壁走りテスト",
		 },
		 -- SV天井走りテスト
		 {
			name = "w0a09",
			title = "SV天井走りテスト",
		 },
		 -- トーラステスト
		 {
			name = "stg817",
			title = "トーラステスト",
		 },
		 -- ルービックキューブテスト
		 {
			name = "stg818",
			title = "ルービックキューブテスト",
		 },
		 -- 球体テスト
		 {
			name = "stg819",
			title = "球体テスト",
		 },
		 -- 六角地形テスト
		 {
			name = "w0a03",
			title = "六角地形テスト",
		 },
		 -- グラインド内周地形テスト
		 {
			name = "w0a05",
			title = "グラインド内周地形テスト",
		 },
		 -- うずまき地形テスト
		 {
			name = "w0a06",
			title = "うずまき地形テスト",
		 },
		 -- ビリヤードテスト
		 {
			name = "w0a08",
			title = "ビリヤード地形テスト",
		 },
		 -- 月光２地形テスト
		 {
			name = "w0a11",
			title = "月光２地形テスト",
		 },
		 -- 火山地形テスト
		 {
			name = "w0a12",
			title = "火山地形テスト",
		 },
		 -- ilomilo+お菓子テスト
		 {
			name = "w0a13",
			title = "ilomilo+お菓子テスト",
		 },
		 -- 海底洞窟１テスト
		 {
			name = "w0a14",
			title = "海底洞窟１テスト",
		 },
		 -- 飛龍戦テスト
		 {
			name = "w0a15",
			title = "飛竜戦テスト"
		 },
		 -- ilomiloお菓子後半テスト
		 {
			name = "w0a16",
			title = "ilomiloお菓子後半テスト",
		 },
		 -- 内周シリンダー
		 {
			name = "stg958",
			title = "内周シリンダー",
		 },
		 -- 外周シリンダー
		 {
			name = "stg963",
			title = "外周シリンダー",
		 },
		 -- 外周シリンダー・直線版
		 {
			name = "stg965",
			title = "外周シリンダー・直線版",
		 },
		 -- 外周シリンダー グラインドテスト
		 {
			name = "stg985",
			title = "外周シリンダー グラインドテスト",
		 },
		 -- うずまき地形
		 {
			name = "stg967",
			title = "うずまき地形",
		 },
		 -- ８の字トーラス
		 {
			name = "stg961",
			title = "８の字トーラス",
		 },
		 -- 立方体４面
		 {
			name = "stg964",
			title = "立方体４面",
		 },
		 -- 立方体４面ドリル"
		 {
			name = "stg966",
			title = "立方体４面ドリル",
		 },
		 -- ４面シリンダー カベ走り版
		 {
			name = "stg975",
			title = "４面シリンダー カベ走り版",
		 },
		 -- ４面シリンダー オモテウラ版
		 {
			name = "stg976",
			title = "４面シリンダー オモテウラ版",
		 },
		 -- ６面シリンダー
		 {
			name = "stg978",
			title = "６面シリンダー",
		 },
		 -- 球体地形 バッタンキングの砦版
		 {
			name = "stg977",
			title = "球体地形 バッタンキングの砦版",
		 },
		 -- ilomilo
		 {
			name = "stg979",
			title = "ilomilo",
		 },
		 -- リング
		 {
			name = "stg986",
			title = "リング",
		 },
		 -- ilomilo+リング
		 {
			name = "stg816",
			title = "ilomilo+リング",
		 },
		 -- FV+TV
		 {
			name = "stg987",
			title = "FV+TV",
		 },
		 -- 重力FV
		 {
			name = "stg982",
			title = "重力FV",
		 },
		 -- アスレチックテスト FV
		 {
			name = "stg980",
			title = "アスレチックテスト FV",
		 },
		 -- アスレチックテスト SV
		 {
			name = "stg981",
			title = "アスレチックテスト SV",
		 },
		 -- アスレチックテスト シリンダー
		 {
			name = "stg983",
			title = "アスレチックテスト シリンダー",
		 },
		 -- アスレチックテスト 重力SV
		 {
			name = "stg984",
			title = "アスレチックテスト 重力SV",
		 },
		 -- アスレチックテスト 重力SV 修正版
		 {
			name = "stg989",
			title = "アスレチックテスト 重力SV 軸修正版",
		 },
		 
		 -- プロトタイプ：天球山空
		 {
			name = "stg991",
			title = "プロトタイプ：天球山空",
		 },
		 -- プロトタイプ：天球雲海
		 {
			name = "stg992",
			title = "プロトタイプ：天球雲海",
		 },
		 -- プロトタイプ：天球海
		 {
			name = "stg993",
			title = "プロトタイプ：天球海",
		 },
		 -- プロトタイプ：天球天地無
		 {
			name = "stg994",
			title = "プロトタイプ：天球天地無",
		 },
		 -- テストマップチューブ
		 {
			name = "stg950",
			title = "チューブテストマップ",
		 },
		 -- テストマップスライダー
		 {
			name = "stg951",
			title = "スライダーテストマップ",
		 },
		 -- テストマップNewサイド
		 {
			name = "stg952",
			title = "Newサイドテストマップ",
		 },
		 -- テストマップNewサイド（周回）
		 {
			name = "stg953",
			title = "Newサイドテストマップ（周回）",
		 },
		 -- テストマップNewサイド（リゾート面模写）
		 {
			name = "stg954",
			title = "Newサイドテストマップ（リゾート面模写）",
		 },
		 -- テストマップ01
		 {
			name = "stg955",
			title = "テストマップ01",
		 },
		 -- テストマップ02
		 {
			name = "stg956",
			title = "テストマップ02",
		 },
		 -- テストマップ05（シリンダー半径サイズ検証）
		 {
			name = "stg960",
			title = "テストマップ05（シリンダー半径サイズ検証）",
		 },
		 -- テストマップ07（外周シリンダー・直線のみ試作）
		 {
			name = "stg962",
			title = "テストマップ07（外周シリンダー・直線のみ試作）",
		 },
		 -- テストマップ09（球体地形）
		 {
			name = "stg959",
			title = "テストマップ09（球体地形）",
		 },
		 -- テストマップ10（立方体地形）
		 {
			name = "stg970",
			title = "テストマップ10（立方体地形）",
		 },
		 -- テストマップ11（カプセル地形）
		 {
			name = "stg971",
			title = "テストマップ11（カプセル地形）",
		 },
		 -- テストマップ12（ひょうたん地形）
		 {
			name = "stg972",
			title = "テストマップ12（ひょうたん地形）",
		 },
		 -- テストマップ13（立方体チューブ地形）
		 {
			name = "stg973",
			title = "テストマップ13（立方体チューブ地形）",
		 },
		 -- テストマップ14（立方体チューブ・リゾートFV）
		 {
			name = "stg974",
			title = "テストマップ14（立方体チューブ・リゾートFV）",
		 },
		 -- プロトタイプシェルあり
		 {
			name = "stg990",
			title = "プロトタイプシェルあり",
		 },
		 -- プロトタイプシェルあり
		 {
			name = "stg995",
			title = "プロトタイプシェルなし",
		 },		 
		 -- w1-1
		 {
			name = "stg811",
			title = "w1-1：グラスヒル(地形未アップ)",
		 },
		 -- w0-2
		 {
			name = "w0a02",
			title = "w0a02：オブジェクトテストマップ(w0a02)",
		 },
		 -- グラスヒル　テスト
		 {
		 	name = "stg813",
		 	title = "グラスヒル　テスト",
		 },
		 -- グラスヒル（平面化）テスト
		 {
		 	name = "w0a10",
		 	title = "グラスヒル（平面化）テスト",
		 },
		 -- 上昇気流2　テスト
		 {
		 	name = "w6a05",
		 	title = "上昇気流2　テスト",
		 },
		 --テスト面の新規ステージはこれより上に定義してください
		 -- 西村SVテストマップ
		 {
			name = "w0a90",
			title = "西村SVテストマップ",
		 },
		 -- 西村テストマップ
		 {
			name = "stg902",
			title = "西村テストマップ",
		 },
		 -- オブジェクトテスト用
		 {
		 
		 	name = "stg901",
		 	title = "オブジェクトテストマップ",
		 },
		 --テスト面の新規ステージは"西村SVテストマップ"の前に定義してください

	  },
   },

}

old_stage_all = {

   -- w1
   {
	  title = "w1草原",

	  stages = {
		 {
			name = "w1a01",
			title = "w1-1:グラスヒル",
		 },
		 {
			name = "w1a02",
			title = "w1-2:インディ洞窟",
		 },
		 {
			name = "w1a03",
			title = "w1-3:月光",
		 },
		 {
			name = "w1a04",
			title = "w1-4:大ナール軍",
		 },
		 {
			name = "w1a05",
			title = "w1-5:モアイ",
		 },
		 {
			name = "w1c01",
			title = "w1-A:キン斗雲",
		 },
	  },
   },
   -- w2
   {
	  title = "w2砂漠",

	  stages = {
		 {
			name = "w2a01",
			title = "w2-1:サンドワーム軍",
		 },
		 {
			name = "w2a02",
			title = "w2-2:スカイチェイス",
		 },
		 {
			name = "w2a03",
			title = "w2-3:古代都市",
		 },
		 {
			name = "w2a04",
			title = "w2-4:タカアシガニ",
		 },
		 {
			name = "w2a05",
			title = "w2-5:サンドワーム体内",
		 },
		 {
			name = "w2a06",
			title = "w2-6:竜巻",
		 },
		 {
			name = "w2c01",
			title = "w2-A:黄色三連バネ",
		 },
	  },
   },
   -- w3
   {
	  title = "w3南国",

	  stages = {
		 {
			name = "w3a01",
			title = "w3-1:南国ビーチ",
		 },
		 {
			name = "w3a03",
			title = "w3-3:フルーツ農園",
		 },
		 {
			name = "w3a07",
			title = "w3-7:南国ビーチ2",
		 },
	  },
   },
   -- w4
   {
	  title = "w4雪",

	  stages = {
		 {
			name = "w4a01",
			title = "w4-1:軍事工場",
		 },
		 {
			name = "w4a02",
			title = "w4-2:インディ洞窟2",
		 },
		 {
			name = "w4a03",
			title = "w4-3:ilomiloお菓子",
		 },
	  },
   },
   -- w5
   {
	  title = "w5ジャングル",

	  stages = {
		 {
			name = "w5a01",
			title = "w5-1:ジャングル軌道施設",
		 },
	  },
   },
   -- テストステージ
   {
	  title = "テストステージ",

	  stages = {
		 -- デザインテストマップ
		 {
			name = "w0c99",
			title = "デザインテストマップ",
		 },

		 -- シェーダーテストマップ
		 {
			name = "w0c98",
			title = "シェーダーテストマップ",
		 },

		 -- w0-1
		 {
			name = "w0a01",
			title = "w0a01：プロト分割",
		 },
		 -- プロトタイプ
		 {
			name = "stg988",
			title = "プロトタイプ",
		 },
		 -- w1-2
		 {
			name = "stg812",
			title = "w1-2：インディ洞窟",
		 },
		 -- w1-3
		 {
			name = "stg820",
			title = "w1-3：月光",
		 },
		 -- w1-4
		 {
			name = "stg814",
			title = "w1-4：大ナール軍",
		 },
		 -- w1-5
		 {
			name = "stg821",
			title = "w1-5：モアイ",
		 },
		 -- w2-1
		 {
			name = "stg815",
			title = "w2-1：大外周テスト",
		 },
		 -- w2-6
		 {
			name = "stg822",
			title = "w2-6：竜巻テスト",
		 },
		 -- w2-2直径10ｍテスト
		 {
			name = "stg823",
			title = "w2-2：直径20ｍテスト",
		 },
		 -- w0-4
		 {
			name = "w0a04",
			title = "w3-5：SVカジノテスト（w0a04）",
		 },
		 -- FV壁走りテスト（旧w1-1）
		 {
			name = "stg811",
			title = "FV壁走りテスト",
		 },
		 -- SV壁キックテスト
		 {
			name = "w0a07",
			title = "SV壁キックテスト",
		 },
		 -- トーラステスト
		 {
			name = "stg817",
			title = "トーラステスト",
		 },
		 -- ルービックキューブテスト
		 {
			name = "stg818",
			title = "ルービックキューブテスト",
		 },
		 -- 球体テスト
		 {
			name = "stg819",
			title = "球体テスト",
		 },
		 -- 六角地形テスト
		 {
			name = "w0a03",
			title = "六角地形テスト",
		 },
		 -- グラインド内周地形テスト
		 {
			name = "w0a05",
			title = "グラインド内周地形テスト",
		 },
		 -- うずまき地形テスト
		 {
			name = "w0a06",
			title = "うずまき地形テスト",
		 },
		 -- 内周シリンダー
		 {
			name = "stg958",
			title = "内周シリンダー",
		 },
		 -- 外周シリンダー
		 {
			name = "stg963",
			title = "外周シリンダー",
		 },
		 -- 外周シリンダー・直線版
		 {
			name = "stg965",
			title = "外周シリンダー・直線版",
		 },
		 -- 外周シリンダー グラインドテスト
		 {
			name = "stg985",
			title = "外周シリンダー グラインドテスト",
		 },
		 -- うずまき地形
		 {
			name = "stg967",
			title = "うずまき地形",
		 },
		 -- ８の字トーラス
		 {
			name = "stg961",
			title = "８の字トーラス",
		 },
		 -- 立方体４面
		 {
			name = "stg964",
			title = "立方体４面",
		 },
		 -- 立方体４面ドリル"
		 {
			name = "stg966",
			title = "立方体４面ドリル",
		 },
		 -- ４面シリンダー カベ走り版
		 {
			name = "stg975",
			title = "４面シリンダー カベ走り版",
		 },
		 -- ４面シリンダー オモテウラ版
		 {
			name = "stg976",
			title = "４面シリンダー オモテウラ版",
		 },
		 -- ６面シリンダー
		 {
			name = "stg978",
			title = "６面シリンダー",
		 },
		 -- 球体地形 バッタンキングの砦版
		 {
			name = "stg977",
			title = "球体地形 バッタンキングの砦版",
		 },
		 -- ilomilo
		 {
			name = "stg979",
			title = "ilomilo",
		 },
		 -- リング
		 {
			name = "stg986",
			title = "リング",
		 },
		 -- ilomilo+リング
		 {
			name = "stg816",
			title = "ilomilo+リング",
		 },
		 -- FV+TV
		 {
			name = "stg987",
			title = "FV+TV",
		 },
		 -- 重力FV
		 {
			name = "stg982",
			title = "重力FV",
		 },
		 -- アスレチックテスト FV
		 {
			name = "stg980",
			title = "アスレチックテスト FV",
		 },
		 -- アスレチックテスト SV
		 {
			name = "stg981",
			title = "アスレチックテスト SV",
		 },
		 -- アスレチックテスト シリンダー
		 {
			name = "stg983",
			title = "アスレチックテスト シリンダー",
		 },
		 -- アスレチックテスト 重力SV
		 {
			name = "stg984",
			title = "アスレチックテスト 重力SV",
		 },
		 -- アスレチックテスト 重力SV 修正版
		 {
			name = "stg989",
			title = "アスレチックテスト 重力SV 軸修正版",
		 },
		 
		 -- プロトタイプ：天球山空
		 {
			name = "stg991",
			title = "プロトタイプ：天球山空",
		 },
		 -- プロトタイプ：天球雲海
		 {
			name = "stg992",
			title = "プロトタイプ：天球雲海",
		 },
		 -- プロトタイプ：天球海
		 {
			name = "stg993",
			title = "プロトタイプ：天球海",
		 },
		 -- プロトタイプ：天球天地無
		 {
			name = "stg994",
			title = "プロトタイプ：天球天地無",
		 },
		 -- テストマップチューブ
		 {
			name = "stg950",
			title = "チューブテストマップ",
		 },
		 -- テストマップスライダー
		 {
			name = "stg951",
			title = "スライダーテストマップ",
		 },
		 -- テストマップNewサイド
		 {
			name = "stg952",
			title = "Newサイドテストマップ",
		 },
		 -- テストマップNewサイド（周回）
		 {
			name = "stg953",
			title = "Newサイドテストマップ（周回）",
		 },
		 -- テストマップNewサイド（リゾート面模写）
		 {
			name = "stg954",
			title = "Newサイドテストマップ（リゾート面模写）",
		 },
		 -- テストマップ01
		 {
			name = "stg955",
			title = "テストマップ01",
		 },
		 -- テストマップ02
		 {
			name = "stg956",
			title = "テストマップ02",
		 },
		 -- テストマップ05（シリンダー半径サイズ検証）
		 {
			name = "stg960",
			title = "テストマップ05（シリンダー半径サイズ検証）",
		 },
		 -- テストマップ07（外周シリンダー・直線のみ試作）
		 {
			name = "stg962",
			title = "テストマップ07（外周シリンダー・直線のみ試作）",
		 },
		 -- テストマップ09（球体地形）
		 {
			name = "stg959",
			title = "テストマップ09（球体地形）",
		 },
		 -- テストマップ10（立方体地形）
		 {
			name = "stg970",
			title = "テストマップ10（立方体地形）",
		 },
		 -- テストマップ11（カプセル地形）
		 {
			name = "stg971",
			title = "テストマップ11（カプセル地形）",
		 },
		 -- テストマップ12（ひょうたん地形）
		 {
			name = "stg972",
			title = "テストマップ12（ひょうたん地形）",
		 },
		 -- テストマップ13（立方体チューブ地形）
		 {
			name = "stg973",
			title = "テストマップ13（立方体チューブ地形）",
		 },
		 -- テストマップ14（立方体チューブ・リゾートFV）
		 {
			name = "stg974",
			title = "テストマップ14（立方体チューブ・リゾートFV）",
		 },
		 -- プロトタイプシェルあり
		 {
			name = "stg990",
			title = "プロトタイプシェルあり",
		 },
		 -- プロトタイプシェルあり
		 {
			name = "stg995",
			title = "プロトタイプシェルなし",
		 },		 
		 -- w1-1
		 {
			name = "stg811",
			title = "w1-1：グラスヒル(地形未アップ)",
		 },
		 -- 西村テストマップ
		 {
			name = "stg902",
			title = "西村テストマップ",
		 },
		 -- 西村SVテストマップ
		 {
			name = "w0a90",
			title = "西村SVテストマップ",
		 },

		 -- オブジェクトテスト用
		 {
		 
		 	name = "stg901",
		 	title = "オブジェクトテストマップ",
		 },
		 -- w0-2
		 {
			name = "w0a02",
			title = "w0a02：オブジェクトテストマップ(w0a02)",
		 },
		 -- Multiオブジェクトテスト用
		 {
		 
		 	name = "stg905",
		 	title = "Multiオブジェクトテストマップ",
		 },
		 -- グラスヒル　テスト
		 {
		 	name = "stg813",
		 	title = "グラスヒル　テスト",
		 },
	  },
   },

}
