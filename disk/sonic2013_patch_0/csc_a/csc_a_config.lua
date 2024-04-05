---------------------------------------------------------------
-- @file	csc_a_config.lua
-- @author	GPF
-- @brief	crisis city A section
-- @data	17/1/2024
---------------------------------------------------------------

METER = 10.0

---------------------------------------------------------------

-- �������ɂ��鍂���B�����艺�Ƀv���C���[���ړ�����Ǝ��ɂ܂��B
dead_line = -20000.0 * METER

-- �J�����ݒ�.
camera = {
   near = 0.1 * METER,
   far = 25000.0 * METER,
   fov = 120,
}

-- �T�[�r�X�̃��X�g.
services = {

	-- �O���A
   {
	  name = "CGlareManager",
	  params = {
		 ev = 2.0,
	  },
   },

}

-- �`��ݒ�
gfx = {
	
	-- �G�t�F�N�g�ݒ�
	fx = {
		-- �J�����O
		{
			name = "CullRange",
			params = {
				-- �f�t�H���g
				range_default = 80000,
				
				-- ���i
				range_far = 10000,
			},
		},
		
		-- ���C�g�ݒ�
		{
			name = "BasicLight",
			params = {
				-- �O���[�o�����C�g(���s��)�̗L���E����
				global_light_enable = true,
				
				-- �A���r�G���g���C�g�̗L���E����
				ambient_light_enable = true,
				
				-- ���[�J�����C�g(�_�����j�̗L���E����
				local_light_enable = false,
				
				-- �J�������C�g�̗L���E����
				eye_light_enable = true,
				
				-- �J�������C�g���[�h(0:Directional 1:Omni)
				eye_light_mode = 1,
				
				-- �J�������C�g �f�B�t���[�Y(RGB)
				eye_light_diffuse = { 0.5, 0.0, 0.0, },
				
				-- �J�������C�g �X�y�L����(RGB)
				eye_light_specular = { 0.5, 0.0, 0.0, },
				
				-- �J�������C�g ���������̊J�n����
				eye_light_range_start = 0.0,
				
				-- �J�������C�g ���������̏I������
				eye_light_range_end = 200.0,
			},
		},
		
		-- �V�[���`��ݒ�
		{
			name = "Scene",
			params = {
				
				-- �V���̖��邳
				sky_intensity_scale = 1.1,
				
				-- �V����Y���Ǐ]��
				sky_followup_ratio_y = 0.0,
				
				-- �^��dof(true or false)
				pseudo_dof = false,
				
				--dof�n�u���[����
				deepblur_enable= false,
				
				--�u���[�X�P�[��
				blurscale=0,
				
				-- �^���������t�H�O
				pseudo_farfog = true,
				
				-- �^���������t�H�O�ł�far���O
				pseudo_farfog_withoutfar = true, 
				
			},
		},
		
		-- ���C�g�t�B�[���h�ݒ�
		{
			name = "LightField",
			params = {
				
				-- �X�P�[�����O�^�C�v(0:KeepingLuminance 1:KeepingBrightness 2:None)
				saturation_scaling_type = 0,
				
				-- �f�[�^�����݂��Ă���������
				ignore_data = false,
				
				-- �f�t�H���g�X�V�p�x
				default_update_interval = 1,
				
				-- �I�i�̐F�␳�����Ȃ�
				no_final_adjestcolor = true,
				
				-- �C���e���V�e�B��臒l
				intensity_threshold = 0.5,
				
				-- �P�x�Œ�l
				luminance_min = 0.0,
				
				-- �P�x�ō��l
				luminance_max = 1.0,
				
				-- �P�x���Ԓl
				luminance_center = 0.5,
				
				-- �ʓx�X�P�[��
				saturation_scaling_rate = 1.0,
				
				-- �P�x�X�P�[��
				luminance_scaling_rate = 1.0,
				
				-- �f�t�H���g�l_�ォ��(RGB)
				default_color_up = {0.5, 0.5, 0.5, },
				
				-- �f�t�H���g�l_������(RGB)
				default_color_down = {0.5, 0.5, 0.5, },
				
				-- �I�t�Z�b�g�l_�ォ��(RGB)
				default_coloroffset_up = {0.0, 0.0, 0.0, },
				
				-- �I�t�Z�b�g�l_������(RGB)
				default_coloroffset_down = {0.0, 0.0, 0.0, },
			},
		},
		
		-- ���C�g�X�L���b�^�����O�Ȃ�
		{
			name = "LightScattering",
			params = {
				-- ����
				-- ���i�Ɛݒ�𕪂���Ȃ�true
				-- ������ꍇ�́Aparams_far���L�q�̂���.
				separate_enable = true,
				
				-- �L���E����
				enable = true,
				
				-- �J���[(RGB)
				color = { 0.1, 0.0, 0.0, },
				depth_scale = 0.7,
				
				--���C�g�X�L���b�^�����O
				in_scattering_scale = 110.0,
				rayleigh = 3.50,
				mie = 5.50,
				mie_power = 1.00,
				near = 0.0,
				far = 13800.0,
			},
			
			-- Far���C�g�X�L���b�^�����O�Ȃ�
			params_far = {
				-- ����
				-- �L���E����
				enable = true,
				
				-- �J���[(RGB)
				color = { 0.08, 0.0, 0.0, },
				depth_scale = 0.1,
				
				--���C�g�X�L���b�^�����O
				in_scattering_scale = 111.0,
				rayleigh = 3.50,
				mie = 5.50,
				mie_power = 1.00,
				near = 0.0,
				far = 173800.0,
			
			},
		},
		
		-- HDR�ݒ�
		{
			name = "HDR",
			params = {
				-- �L���E����
				enable = true,
				
				-- �^�C�v(0:SimpleScale 1:ControlExposure 2:OriginalToneMap 3:CustomToneMap)
				type = 1,
				
				-- ���Ï����L��?
				adaption = true,
				
				middle_gray = 0.8,
				scale = 0.45,
				luminance_low = 0.5,
				luminance_high = 0.5,
			},
		},
		
		-- �u���[�����X�^�[�ݒ�
		{
			name = "BloomStar",
			params = {
				-- �L���E����
				enable = true,
				
				-- �O���A�^�C�v
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
		
		-- ��ʊE�[�x
		{
			name = "DepthofField",
			params = {
				-- �L���E����
				enable = true,
				
				focus = 54.0,
				near = 14.0,
				far = 5000.0,
				focus_range = 32.0,
				
				-- �V���ɔ�ʊE�[�x�������Ȃ�
				ignore_sky = false,
			},
		},
		
	}
}
