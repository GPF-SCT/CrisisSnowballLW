---------------------------------------------------------------
-- @file	csc_a_config.lua
-- @author	GPF
-- @brief	crisis city A section
-- @data	17/1/2024
---------------------------------------------------------------

METER = 10.0

---------------------------------------------------------------

-- 落ち死にする高さ。これより下にプレイヤーが移動すると死にます。
dead_line = -20000.0 * METER

-- カメラ設定.
camera = {
   near = 0.1 * METER,
   far = 25000.0 * METER,
   fov = 120,
}

-- サービスのリスト.
services = {

	-- グレア
   {
	  name = "CGlareManager",
	  params = {
		 ev = 2.0,
	  },
   },

}

-- 描画設定
gfx = {
	
	-- エフェクト設定
	fx = {
		-- カリング
		{
			name = "CullRange",
			params = {
				-- デフォルト
				range_default = 80000,
				
				-- 遠景
				range_far = 10000,
			},
		},
		
		-- ライト設定
		{
			name = "BasicLight",
			params = {
				-- グローバルライト(平行光)の有効・無効
				global_light_enable = true,
				
				-- アンビエントライトの有効・無効
				ambient_light_enable = true,
				
				-- ローカルライト(点光源）の有効・無効
				local_light_enable = false,
				
				-- カメラライトの有効・無効
				eye_light_enable = true,
				
				-- カメラライトモード(0:Directional 1:Omni)
				eye_light_mode = 1,
				
				-- カメラライト ディフューズ(RGB)
				eye_light_diffuse = { 0.5, 0.0, 0.0, },
				
				-- カメラライト スペキュラ(RGB)
				eye_light_specular = { 0.5, 0.0, 0.0, },
				
				-- カメラライト 距離減衰の開始距離
				eye_light_range_start = 0.0,
				
				-- カメラライト 距離減衰の終了距離
				eye_light_range_end = 200.0,
			},
		},
		
		-- シーン描画設定
		{
			name = "Scene",
			params = {
				
				-- 天球の明るさ
				sky_intensity_scale = 1.1,
				
				-- 天球のY軸追従率
				sky_followup_ratio_y = 0.0,
				
				-- 疑似dof(true or false)
				pseudo_dof = false,
				
				--dof系ブラー強化
				deepblur_enable= false,
				
				--ブラースケール
				blurscale=0,
				
				-- 疑似半透明フォグ
				pseudo_farfog = true,
				
				-- 疑似半透明フォグでのfar除外
				pseudo_farfog_withoutfar = true, 
				
			},
		},
		
		-- ライトフィールド設定
		{
			name = "LightField",
			params = {
				
				-- スケーリングタイプ(0:KeepingLuminance 1:KeepingBrightness 2:None)
				saturation_scaling_type = 0,
				
				-- データが存在しても無視する
				ignore_data = false,
				
				-- デフォルト更新頻度
				default_update_interval = 1,
				
				-- 終段の色補正をしない
				no_final_adjestcolor = true,
				
				-- インテンシティの閾値
				intensity_threshold = 0.5,
				
				-- 輝度最低値
				luminance_min = 0.0,
				
				-- 輝度最高値
				luminance_max = 1.0,
				
				-- 輝度中間値
				luminance_center = 0.5,
				
				-- 彩度スケール
				saturation_scaling_rate = 1.0,
				
				-- 輝度スケール
				luminance_scaling_rate = 1.0,
				
				-- デフォルト値_上から(RGB)
				default_color_up = {0.5, 0.5, 0.5, },
				
				-- デフォルト値_下から(RGB)
				default_color_down = {0.5, 0.5, 0.5, },
				
				-- オフセット値_上から(RGB)
				default_coloroffset_up = {0.0, 0.0, 0.0, },
				
				-- オフセット値_下から(RGB)
				default_coloroffset_down = {0.0, 0.0, 0.0, },
			},
		},
		
		-- ライトスキャッタリングなど
		{
			name = "LightScattering",
			params = {
				-- 共通
				-- 遠景と設定を分けるならtrue
				-- 分ける場合は、params_farも記述のこと.
				separate_enable = true,
				
				-- 有効・無効
				enable = true,
				
				-- カラー(RGB)
				color = { 0.1, 0.0, 0.0, },
				depth_scale = 0.7,
				
				--ライトスキャッタリング
				in_scattering_scale = 110.0,
				rayleigh = 3.50,
				mie = 5.50,
				mie_power = 1.00,
				near = 0.0,
				far = 13800.0,
			},
			
			-- Farライトスキャッタリングなど
			params_far = {
				-- 共通
				-- 有効・無効
				enable = true,
				
				-- カラー(RGB)
				color = { 0.08, 0.0, 0.0, },
				depth_scale = 0.1,
				
				--ライトスキャッタリング
				in_scattering_scale = 111.0,
				rayleigh = 3.50,
				mie = 5.50,
				mie_power = 1.00,
				near = 0.0,
				far = 173800.0,
			
			},
		},
		
		-- HDR設定
		{
			name = "HDR",
			params = {
				-- 有効・無効
				enable = true,
				
				-- タイプ(0:SimpleScale 1:ControlExposure 2:OriginalToneMap 3:CustomToneMap)
				type = 1,
				
				-- 明暗順応有効?
				adaption = true,
				
				middle_gray = 0.8,
				scale = 0.45,
				luminance_low = 0.5,
				luminance_high = 0.5,
			},
		},
		
		-- ブルーム＆スター設定
		{
			name = "BloomStar",
			params = {
				-- 有効・無効
				enable = true,
				
				-- グレアタイプ
				-- 0:Nothing 1:Natural 2:CheapLens 3:CrossScreen 4:SpectralCrossScreen 5:SnowCross
				-- 6:SpectralSnowCross 7:SunnyCross 8:SpectralSunnyCross 9:VerticalSlits 10:HorizontalSlits
				type = 1,
				
				brightpass_threshold = 0.1,
				brightpass_invscale = 08.00,
				persistent = 0.3,
				bloom_scale = 4.2,
				
				star_scale = 0.4,
			},
		},
		
		-- 被写界深度
		{
			name = "DepthofField",
			params = {
				-- 有効・無効
				enable = true,
				
				focus = 54.0,
				near = 14.0,
				far = 5000.0,
				focus_range = 32.0,
				
				-- 天球に被写界深度をかけない
				ignore_sky = false,
			},
		},
		
	}
}
