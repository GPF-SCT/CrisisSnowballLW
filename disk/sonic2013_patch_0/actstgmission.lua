---------------------------------------------------------------
-- @file    actstgmission.lua
-- @author  Kawabata Yoshitaka
-- @brief   �~�b�V�������`����t�@�C���ł�
---------------------------------------------------------------

---------------------------------------------------------------
-- �p�����[�^�̐���
--
--      name            �~�b�V������\�����j�[�N�Ȏ��ʎq�B
--
--      data            �g�p����X�e�[�W�f�[�^���B
--                      ���Z�N�V�����I�ɂ̓p�X�ƌĂԂ��Ƃ��B
--
--      player_pos      �v���C���[�̃X�^�[�g�ʒu�B
--
--      player_dir      �v���C���[�̃X�^�[�g���̌����B
--
--      player_mode     �v���C���[�̃X�^�[�g���̃��[�h
--                      "2D", "3D",     �f�t�H���g��"2D"
--
--      phantoms        �o�ꂷ��t�@���g��.drill, laser, rocket,eagle,asteroid,snake,rhythm,hover
--                      (bomb/quake�̓X�e�[�W�ɂ��Ȃ��̂œ���Ȃ��ł�������)
--
--      bgm             BGM�t�@�C�����F�f�t�H���g.bgm_sv���`�����FV��p�ɂȂ�.
--      bgm_sv          BGM�t�@�C�����FFV,SV��BGM��؂�ւ���ۂ̂ݒ�`.
--
--      amb             Ambience�t�@�C�����F�f�t�H���g.amb_in���`����Ɖ��O��p�ɂȂ�.
--      amb_in          Ambience�t�@�C�����F���O,������AMB��؂�ւ���ۂ̂ݒ�`.
--
--      reverb          ���o�[�u�̒l�F�g���X�e�[�W�̂ݒ�`.
--
--      animals         ��������̎�ގw��.�g����l�͈ȉ�����3��.
--                      FLICKIE(��),COOKIE(�{),PECKIE(�y���M��),PICKIE(��), POCKY(�e),RICKY(�I�l), ROCKY(�C�^),
--
--      unlock_animals  �A�����b�N�ɕK�v�ȓ�����.0(�L�q��)�Ȃ�A�������̃m���}��.
--
--      clear_cond      �N���A�Ƃ������ := goal|timeout. ���w��̏ꍇ�Agoal.
--                      goal = �X�e�[�W�S�[���A�܂��̓{�X���j�Atimeout = ���Ԑ����܂Ő����c��.
--
--      attrs           �X�e�[�W���.�d����.
--                      "no_redring",        // ���b�h�����O�������X�e�[�W.
--                      "only_normalplay",   // �m�[�}���v���C�����ŁA�^�C���A�^�b�N�⃉�W�R�����I�ׂȂ��X�e�[�W.
--                      "bakubaku",          // �o�N�o�N�X�e�[�W
--                      "floor_reflect",     // ���ʔ��˕\�����s��(�J�W�m)
--                      "randombox_noquake", // �����_���{�b�N�X����N�G�C�N���o�Ȃ�(�ΐ�)
--                      "no_bomb",           // �{�����o���Ȃ��X�e�[�W.(�ʏ�
--                      "lastboss",          // ���X�{�X��p����(�v���C���[��.
--                      "dlc",               // �_�E�����[�h�R���e���c�X�e�[�W.
--                      "yoshiisland",       // ���b�V�[�A�C�����h�X�e�[�W.
--	eagle_altitude  �C�[�O���t�@���g���̐������x.�P�ʂ̓��[�g��.


mission_all = {
    {
        missions = {
			
			-- Crisis City
            {
                name        = "csc_a",
                data        = "csc_a",
                player_pos  = { 5190.61, 2954.21, -668.082 },
                player_dir  = { 0.0, -180, 0.0 },
				player_mode = "SNOWBALL",
				bgm 		=  "bgm_w1a01",
				amb         = "amb_w7a06",
                time = {
                    time_limit = 700,
                    rank = {
                        300.0,    -- S rank
                        380.0,    -- A rank
                        460.0,    -- B rank
                        540.0,    -- C rank
                    },
                },
            },

            -- 1-1 w1a01 �O���X�q��
            {
                name        = "w1a01",
                data        = "w1a01",
                --  player_pos  = { 4000.0, -2500.0, 7053.0 },�i�V�����_�[�̐�[�B�Ƃ肠�����R�����g�A�E�g�j
                --  player_dir  = { 0.0, 180.0, 0.0 },�i�V�����_�[�̐�[�B�Ƃ肠�����R�����g�A�E�g�j
                player_pos  = { 4000.0, -2450.0, 6980.0 },
                player_dir  = { 0.0, 180.0, 0.0 },
                phantoms    = { "laser" },
                --�y�^�C���ݒ�̈�z
                time = {
                    time_limit = 500.0, -- �^�C���I�[�o�[�܂ł̎���(�b��)
                    rank = {
                        80.0, -- S rank (�^�C���A�^�b�N���[�h�̃S�[���b��)
                        100.0,    -- A rank
                        160.0,    -- B rank
                        280.0,    -- C rank
                    },
                },
            },
            -- 1-2 w1a03 ����
            {
                name        = "w1a03",
                data        = "w1a03",
                player_pos  = { -38.8, -2.17, 0 },
                player_dir  = { -5.415, 0.0, 0.0 },
                player_mode = "2D",
                phantoms    = { "asteroid" },
                animals     = { "PICKIE", "POCKY", "ROCKY" },
                --�y�^�C���ݒ�̈�z
                time = {
                    time_limit = 500.0, -- �^�C���I�[�o�[�܂ł̎���(�b��)
                    rank = {
                        75.0,         -- S rank (�^�C���A�^�b�N���[�h�̃S�[���b��)
                        95.0,         -- A rank
                        155.0,    -- B rank
                        275.0,    -- C rank
                    },
                },
            },
            -- 1-3 xind01 �C���f�B���A
            {
                name        = "xind01",
                data        = "xind01",
                player_pos  = { -25.0, -43.3, 1328.6 },
                player_dir  = { 0.0, 180.0, 26.0 },
                reverb      = 1.0,
                phantoms    = { "laser" },
                animals     = { "POCKY", "PECKIE", "PICKIE" },
                --�y�^�C���ݒ�̈�z
                time = {
                    time_limit = 530.0, -- �^�C���I�[�o�[�܂ł̎���(�b��)
                    rank = {
                        115.0,    -- S rank (�^�C���A�^�b�N���[�h�̃S�[���b��)
                        130.0,    -- A rank
                        190.0,    -- B rank
                        310.0,    -- C rank
                    },
                },
            },
            -- 1-B w1a06 ����2
            {
                name           = "w1a06",
                data           = "w1a06",
                player_pos     = { 2364.5, 2080.8, 1097.0 },
                player_dir     = { 10.2, -135.6, 15.0 },
                bgm            = "bgm_w1a06",
                bgm_sv         = "bgm_w1a06-2",
                amb            = "amb_w1a06",
                unlock_animals = 100,
                phantoms       = { "asteroid" },
                animals        = { "COOKIE", "RICKY", "ROCKY" },
                --�y�^�C���ݒ�̈�z
                time = {
                    time_limit = 630.0, -- �^�C���I�[�o�[�܂ł̎���(�b��)
                    rank = {
                        180.0,    -- S rank (�^�C���A�^�b�N���[�h�̃S�[���b��)
                        200.0,    -- A rank
                        260.0,    -- B rank
                        380.0,    -- C rank
                    },
                },
            },

            -- 2-1 w2a01 �T���h���[���R
            {
                name        = "w2a01",
                data        = "w2a01",
                player_pos  = { 0.02, 0.22, -206.25 },
                player_dir  = { 0.0, 180.0, 0.0 },
                amb         = "amb_w2a01_out",
                amb_in      = "amb_w2a01_in",
                phantoms    = { "eagle" },
                animals     = { "POCKY", "FLICKIE", "RICKY" },
				eagle_altitude = 20,
                --�y�^�C���ݒ�̈�z
                time = {
                    time_limit = 800.0, -- �^�C���I�[�o�[�܂ł̎���(�b��)
                    rank = {
                        240.0,    -- S rank (�^�C���A�^�b�N���[�h�̃S�[���b��)
                        270.0,    -- A rank
                        360.0,    -- B rank
                        540.0,    -- C rank
                    },
                },
            },
            -- 2-2 xbee01 �n�`�̑��K������
            {
                name        = "xbee01",
                data        = "xbee01",
                player_pos  = { -30.5, 36160.00, -46.50 },
                player_dir  = { 120.0, -90.0, 0.0 },
                amb         = "amb_xbee01_out",
                amb_in      = "amb_xbee01_in",
                animals     = { "FLICKIE", "PICKIE", "COOKIE" },
                --�y�^�C���ݒ�̈�z
                time = {
                    time_limit = 500.0, -- �^�C���I�[�o�[�܂ł̎���(�b��)
                    rank = {
                        200.0,    -- S rank (�^�C���A�^�b�N���[�h�̃S�[���b��)
                        210.0,    -- A rank
                        240.0,    -- B rank
                        285.0,    -- C rank
                    },
                },
            },
            -- 2-3 xswe01 ilomilo���َq
            {
                name        = "xswe01",
                data        = "xswe01",
                player_pos  = { -590.76, 403.30, 1040.85 },
                player_dir  = { -90.0, -3.37, 3.37 },
                player_mode = "2D",
                animals     = { "ROCKY", "RICKY", "PECKIE" },
                --�y�^�C���ݒ�̈�z
                time = {
                    time_limit = 530.0, -- �^�C���I�[�o�[�܂ł̎���(�b��)
                    rank = {
                        105.0,    -- S rank (�^�C���A�^�b�N���[�h�̃S�[���b��)
                        125.0,    -- A rank
                        185.0,    -- B rank
                        305.0,    -- C rank
                    },
                },
            },
            -- 2-4 w2a06 ����
            {
                name           = "w2a06",
                data           = "w2a06",
                player_pos     = { 0.00004, 2.445, -77.75813 },
                player_dir     = { 0.0, -180.0, 0.0 },
                player_mode    = "2D",
                amb            = "amb_w2a06",
                amb_in         = "amb_w2a06_ug",
                unlock_animals = 300,
                phantoms       = { "drill" },
                animals        = { "COOKIE", "RICKY", "FLICKIE" },
                --�y�^�C���ݒ�̈�z
                time = {
                    time_limit = 650.0, -- �^�C���I�[�o�[�܂ł̎���(�b��)
                    rank = {
                        225.0,    -- S rank (�^�C���A�^�b�N���[�h�̃S�[���b��)
                        240.0,    -- A rank
                        300.0,    -- B rank
                        420.0,    -- C rank
                    },
                },
            },
            -- 3-1 w3a01 �썑�r�[�`
            {
                name        = "w3a01",
                data        = "w3a01",
                player_pos  = { 0.00,0.00,0.00 },
                player_dir  = { 0.0, 0.0, 180.0 },
                player_mode    = "WATER",
                amb         = "amb_w3a01_beach",
                amb_in      = "amb_w3a01_uw",
                phantoms    = { "drill" },
                animals     = { "PECKIE", "POCKY", "FLICKIE" },
                --�y�^�C���ݒ�̈�z
                time = {
                    time_limit = 600.0, -- �^�C���I�[�o�[�܂ł̎���(�b��)
                    rank = {
                        145.0,    -- S rank (�^�C���A�^�b�N���[�h�̃S�[���b��)
                        160.0,    -- A rank
                        220.0,    -- B rank
                        380.0,    -- C rank
                    },
                },
            },
            -- 3-2 w3a03 �t���[�c�_��
            {
                name        = "w3a03",
                data        = "w3a03",
                player_pos  = { 1.8, -150, -1.2 },
                player_dir  = { 4.64, 0.88, -178.41 },
                player_mode = "TOP",
                phantoms    = { "rocket" },
                animals     = { "RICKY", "PECKIE", "PICKIE" },
                --�y�^�C���ݒ�̈�z
                time = {
                    time_limit = 670.0, -- �^�C���I�[�o�[�܂ł̎���(�b��)
                    rank = {
                        220.0,    -- S rank (�^�C���A�^�b�N���[�h�̃S�[���b��)
                        240.0,    -- A rank
                        300.0,    -- B rank
                        420.0,    -- C rank
                    },
                },
            },
            -- 3-3 xsea01 �C�ꓴ�A
            {
                name        = "xsea01",
                data        = "xsea01",
                player_pos  = { 0.0, 50.0, 24000.0 },
                player_dir  = { -180.0, 0.0, 0.0 },
                reverb      = 1.0,
                animals     = { "ROCKY", "FLICKIE", "PECKIE" },
                --�y�^�C���ݒ�̈�z
                time = {
                    time_limit = 460.0, -- �^�C���I�[�o�[�܂ł̎���(�b��)
                    rank = {
                        185.0,    -- S rank (�^�C���A�^�b�N���[�h�̃S�[���b��)
                        190.0,    -- A rank
                        210.0,    -- B rank
                        250.0,    -- C rank
                    },
                },
            },
            -- 3-B w3a06 �I�j�L����
            {
                name           = "w3a06",
                data           = "w3a06",
                player_pos     = { -9869.30, 5000.01, 6990.30 },
                player_dir     = { -1.80, -5.45, 88.33 },
                player_mode    = "TOP",
                unlock_animals = 800,
                phantoms       = { "rocket" },
                animals        = { "PICKIE", "POCKY", "ROCKY" },
                --�y�^�C���ݒ�̈�z
                time = {
                    time_limit = 900.0, -- �^�C���I�[�o�[�܂ł̎���(�b��)
                    rank = {
                        260.0,    -- S rank (�^�C���A�^�b�N���[�h�̃S�[���b��)
                        290.0,    -- A rank
                        380.0,    -- B rank
                        560.0,    -- C rank
                    },
                },
            },

            -- 4-1 w4a01 �R���H��
            {
                name        = "w4a01",
                data        = "w4a01",
                player_pos  = { 0.99, 0.58, 0.66},
                player_dir  = { -85.04, 174.14, 3.27 },
                phantoms    = { "laser" },
                animals         = { "ROCKY", "PECKIE", "PICKIE" },
                --�y�^�C���ݒ�̈�z
                time = {
                    time_limit = 630.0, -- �^�C���I�[�o�[�܂ł̎���(�b��)
                    rank = {
                        200.0,    -- S rank (�^�C���A�^�b�N���[�h�̃S�[���b��)
                        220.0,    -- A rank
                        280.0,    -- B rank
                        400.0,    -- C rank
                    },
                },
            },
            -- 4-2 w4a04 �|�b�|�[�Y
            {
                name        = "w4a04",
                data        = "w4a04",
                player_pos  = { 0.0, 0.0, 150.0 },
                player_dir  = { -90.0, 180.0, 0.0 },
                player_mode = "SNOWBALL",
                animals     = { "RICKY", "PECKIE", "ROCKY" },
                --�y�^�C���ݒ�̈�z
                time = {
                    time_limit = 700.0, -- �^�C���I�[�o�[�܂ł̎���(�b��)
                    rank = {
                        290.0,    -- S rank (�^�C���A�^�b�N���[�h�̃S�[���b��)
                        310.0,    -- A rank
                        360.0,    -- B rank
                        480.0,    -- C rank
                    },
                },
            },
            -- 4-3 xcas01 �J�W�m
            {
                name        = "xcas01",
                data        = "xcas01",
                player_pos  = { 0.00, -0.43, -60.00 },
                player_dir  = { 0.00, -180.00, -1.10 },
                bgm         = "bgm_xcas01",
                bgm_sv      = "bgm_xcas01-2",
      		attrs        = { "floor_reflect" },
                animals     = { "COOKIE", "POCKY", "PICKIE" },
                --�y�^�C���ݒ�̈�z
                time = {
                    time_limit = 600.0, -- �^�C���I�[�o�[�܂ł̎���(�b��)
                    rank = {
                        90.0,    -- S rank (�^�C���A�^�b�N���[�h�̃S�[���b��)
                        110.0,    -- A rank
                        160.0,    -- B rank
                        290.0,    -- C rank
                    },
                },
            },
            -- 4-B w4a06 �Q�����f
            {
                name           = "w4a06",
                data           = "w4a06",
                player_pos  = { -5940.00, -1499.98, -0.00000 },
                player_dir     = { 0.0, 0.709, 0.0 },
                player_mode    = "2D",
                unlock_animals = 1100,
                animals        = { "ROCKY", "COOKIE", "PECKIE" },
                --�y�^�C���ݒ�̈�z
                time = {
                    time_limit = 870.0, -- �^�C���I�[�o�[�܂ł̎���(�b��)
                    rank = {
                        260.0,    -- S rank (�^�C���A�^�b�N���[�h�̃S�[���b��)
                        290.0,    -- A rank
                        380.0,    -- B rank
                        590.0,    -- C rank
                    },
                },
            },

            -- 5-1 w5a01 �W�����O���O���{��
            {
                name        = "w5a01",
                data        = "w5a01",
                player_pos  = { 0.00, 0.00, 20055.35 },
                player_dir  = { -85.52, 179.86, -0.00 },
                phantoms    = { "eagle" },
                animals     = { "PICKIE", "COOKIE", "FLICKIE" },
				eagle_altitude = 18,
                --�y�^�C���ݒ�̈�z
                time = {
                    time_limit = 550.0, -- �^�C���I�[�o�[�܂ł̎���(�b��)
                    rank = {
                        130.0,    -- S rank (�^�C���A�^�b�N���[�h�̃S�[���b��)
                        150.0,    -- A rank
                        210.0,    -- B rank
                        330.0,    -- C rank
                    },
                },
            },
            -- 5-2 w5a02 �~�~�Y�N
            {
                name        = "w5a02",
                dir         = "w5a02",
                player_pos  = { -1123.15, 3.38, 3.56 },
                player_dir  = { 0.0, 90.0, 0.0 },
                player_mode = "2D",
                phantoms    = { "rhythm" },
                animals     = { "FLICKIE", "POCKY", "PICKIE" },
                --�y�^�C���ݒ�̈�z
                time = {
                    time_limit = 700.0, -- �^�C���I�[�o�[�܂ł̎���(�b��)
                    rank = {
                        215.0,    -- S rank (�^�C���A�^�b�N���[�h�̃S�[���b��)
                        235.0,    -- A rank
                        295.0,    -- B rank
                        415.0,    -- C rank
                    },
                },
            },
            -- 5-3 xind02 �C���f�B���A2
            {
                name       = "xind02",
                data       = "xind02",
                player_pos = { 0.00, -49.99, 14663.00 },
                player_dir = { -0.02, 180.00, 2.42 },
                reverb     = 1.0,
                phantoms   = { "laser" },
                animals    = { "PECKIE", "ROCKY", "RICKY" },
                --�y�^�C���ݒ�̈�z
                time = {
                    time_limit = 600.0, -- �^�C���I�[�o�[�܂ł̎���(�b��)
                    rank = {
                        160.0,    -- S rank (�^�C���A�^�b�N���[�h�̃S�[���b��)
                        180.0,    -- A rank
                        240.0,    -- B rank
                        360.0,    -- C rank
                    },
                },
            },
            -- 5-B xmoa01 ���A�C
            {
                name           = "xmoa01",
                data           = "xmoa01",
                player_pos     = { -720, 7070, 0 },
                player_dir     = { 0.0, 90.0, 0.0 },
                player_mode    = "2D",
                amb            = "amb_xmoa01_out",
                amb_in         = "amb_xmoa01_in",
                unlock_animals = 1400,
                phantoms       = { "drill" },
                animals        = { "COOKIE", "FLICKIE", "POCKY" },
                --�y�^�C���ݒ�̈�z
                time = {
                    time_limit = 700.0, -- �^�C���I�[�o�[�܂ł̎���(�b��)
                    rank = {
                        255.0,    -- S rank (�^�C���A�^�b�N���[�h�̃S�[���b��)
                        375.0,    -- A rank
                        335.0,    -- B rank
                        445.0,    -- C rank
                    },
                },
            },

            -- 6-1 w1a04 ��i�[���R
            {
                name       = "w1a04",
                data       = "w1a04",
                player_pos = { -0.01, -0.01, 15050.08 },
                player_dir = { 0.0, 180.0, 0.0 },
                phantoms   = { "eagle" },
                animals    = { "COOKIE", "POCKY", "RICKY" },
				eagle_altitude = 14,
                --�y�^�C���ݒ�̈�z
                time = {
                    time_limit = 720.0, -- �^�C���I�[�o�[�܂ł̎���(�b��)
                    rank = {
                        280.0,    -- S rank (�^�C���A�^�b�N���[�h�̃S�[���b��)
                        300.0,    -- A rank
                        360.0,    -- B rank
                        480.0,    -- C rank
                    },
                },
            },
            -- 6-2 w5a03 ��
            {
                name        = "w5a03",
                data        = "w5a03",
                player_pos  = { 10.0, 20.0, 0.0 },
                player_dir  = { 0.0, 0.0, 0.0 },
                player_mode = "2D",
                animals     = { "RICKY", "FLICKIE", "PICKIE" },
                --�y�^�C���ݒ�̈�z
                time = {
                    time_limit = 700.0, -- �^�C���I�[�o�[�܂ł̎���(�b��)
                    rank = {
                        140.0,    -- S rank (�^�C���A�^�b�N���[�h�̃S�[���b��)
                        160.0,    -- A rank
                        220.0,    -- B rank
                        340.0,    -- C rank
                    },
                },
            },
            -- 6-3 w6a03 �㏸�C��
            {
                name        = "w6a03",
                data        = "w6a03",
                player_pos  = { -338.8, 0.07, 0 },
                player_dir  = { -5.415, 0.0, 0.0 },
                player_mode = "2D",
        attrs        = {"no_redring", "only_normalplay"},
                unlock_animals = 1250,
                animals     = { "FLICKIE", "FLICKIE", "FLICKIE" },
                --�y�^�C���ݒ�̈�z
                time = {
                    time_limit = 380.0, -- �^�C���I�[�o�[�܂ł̎���(�b��)
                    rank = {
                        115.0,    -- S rank (�^�C���A�^�b�N���[�h�̃S�[���b��)
                        120.0,    -- A rank
                        140.0,    -- B rank
                        180.0,    -- C rank
                    },
                },
            },
            -- 6-5 w6a05 �㏸�C��2
            {
                name        = "w6a05",
                data        = "w6a05",
                player_pos  = { -338.80, 0.07, 0.00 },
                player_dir  = { -0.00, 90.00, 0.00 },
                player_mode = "2D",
                animals     = { "FLICKIE", "FLICKIE", "FLICKIE" },
                --�y�^�C���ݒ�̈�z
                time = {
                    time_limit = 250.0, -- �^�C���I�[�o�[�܂ł̎���(�b��)
                    rank = {
                        180.0,    -- S rank (�^�C���A�^�b�N���[�h�̃S�[���b��)
                        190.0,    -- A rank
                        210.0,    -- B rank
                        230.0,    -- C rank
                    },
                },
            },
            -- 6-X xnim02 �L���l�_�Q
            {
                name        = "xnim02",
                data        = "xnim02",
                player_pos  = { -5000.00, -69.93, 0.00 },
                player_dir  = { -0.00, 90.00, 0.00 },
                player_mode = "2D",
                unlock_animals = 1800,
                animals     = { "FLICKIE", "FLICKIE", "FLICKIE" },
        attrs        = {"no_redring", "only_normalplay"},
                --�y�^�C���ݒ�̈�z
                time = {
                    time_limit = 380.0, -- �^�C���I�[�o�[�܂ł̎���(�b��)
                    rank = {
                        114.0,    -- S rank (�^�C���A�^�b�N���[�h�̃S�[���b��)
                        119.0,    -- A rank
                        139.0,    -- B rank
                        179.0,    -- C rank
                    },
                },
            },
            -- 6-B w2c01 ���F�O�A�o�l
            {
                name           = "w2c01",
                data           = "w2c01",
                player_pos  = { -120, 10, 0 },
                player_dir     = { 0.0, -180.0, 0.0 },
                player_mode    = "2D",
                bgm            = "bgm_w2c01-2",
                bgm_sv         = "bgm_w2c01",
                unlock_animals = 1700,
                phantoms       = { "rhythm" },
                animals        = { "PECKIE", "RICKY", "POCKY" },
                --�y�^�C���ݒ�̈�z
                time = {
                    time_limit = 999.0, -- �^�C���I�[�o�[�܂ł̎���(�b��)
                    rank = {
                        340.0,    -- S rank (�^�C���A�^�b�N���[�h�̃S�[���b��)
                        370.0,    -- A rank
                        470.0,    -- B rank
                        650.0,    -- C rank
                    },
                },
            },

            -- 7-1 w7a01 �ΎR
            {
                name        = "w7a01",
                dir     = "w7a01",
                player_pos  = { 27.07, 551.92, -46.65 },
                player_mode = "TOP",
                player_dir  = { -40.41, -64.32, 24.21 },
                --�y�^�C���ݒ�̈�z
                time = {
                    time_limit = 500.0, -- �^�C���I�[�o�[�܂ł̎���(�b��)
                    rank = {
                        70.0,     -- S rank (�^�C���A�^�b�N���[�h�̃S�[���b��)
                        90.0,     -- A rank
                        140.0,    -- B rank
                        260.0,    -- C rank
                    },
                },
            },
            -- 7-2 xsea02 �C�ꓴ�A2
            {
                name       = "xsea02",
                data       = "xsea02",
                player_pos = { 6000.0, -45.00, 18000.0 },
                player_dir = { 0.0, 180.0, 0.0 },
                reverb     = 1.0,
                animals    = { "PECKIE", "COOKIE", "ROCKY" },
                --�y�^�C���ݒ�̈�z
                time = {
                    time_limit = 530.0, -- �^�C���I�[�o�[�܂ł̎���(�b��)
                    rank = {
                        250.0,    -- S rank (�^�C���A�^�b�N���[�h�̃S�[���b��)
                        255.0,    -- A rank
                        265.0,    -- B rank
                        305.0,    -- C rank
                    },
                },
            },
            -- 7-3 w7a02 ��ǉΎR2
            {
                name       = "w7a02",
                data       = "w7a02",
                player_pos = { 0, 10.0, -405.0 },
                player_dir = { 0.0, 0.0, 0.0 },
                phantoms   = { "hover" },
                animals    = { "COOKIE", "POCKY", "PICKIE" },
                --�y�^�C���ݒ�̈�z
                time = {
                    time_limit = 999.0, -- �^�C���I�[�o�[�܂ł̎���(�b��)
                    rank = {
                        410.0,    -- S rank (�^�C���A�^�b�N���[�h�̃S�[���b��)
                        440.0,    -- A rank
                        530.0,    -- B rank
                        710.0,    -- C rank
                    },
                },
            },
            -- 7-B w7a06 ���X�{�X��
            {
                name        = "w7a06",
                data        = "w7a06",
                player_pos  = { 25000, 30.0, 0.0 },
                player_dir  = { 0.0, 0.0, 0.0 },
                unlock_animals = 1900,
		attrs        = { "lastboss" },
                --�y�^�C���ݒ�̈�z
                time = {
                    time_limit = 500.0, -- �^�C���I�[�o�[�܂ł̎���(�b��)
                    rank = {
                        100.0,    -- S rank (�^�C���A�^�b�N���[�h�̃S�[���b��)
                        140.0,    -- A rank
                        190.0,    -- B rank
                        240.0,    -- C rank
                    },
                },
            },

            -- 8-1 xcub01 ���[�r�b�N�L���[�u
            {
                name        = "xcub01",
                data        = "xcub01",
                player_pos  = { 0.00, 100.00, 0.00 },
                player_dir  = { -0.00, 0.00, 0.00 },
                animals     = { "PECKIE", "COOKIE", "PICKIE" },
        attrs        = {"no_redring", "only_normalplay", "no_bomb"},
                clear_cond  = "timeout",
                --�y�^�C���ݒ�̈�z
                time = {
                    time_limit = 30.0, -- �^�C���I�[�o�[�܂ł̎���(�b��)
                    rank = {
                        250.0,    -- S rank (�^�C���A�^�b�N���[�h�̃S�[���b��)
                        270.0,    -- A rank
                        330.0,    -- B rank
                        450.0,    -- C rank
                    },
                },
            },
            -- 8-2 xsky01 �X�J�C�`�F�C�X
            {
                name        = "xsky01",
                data        = "xsky01",
                player_pos  = { 0.0, 270.0, 17950.0 },
                player_dir  = { 0.0, 180.0, 0.0 },
                animals     = { "FLICKIE", "RICKY", "POCKY" },
                player_mode = "SKYCHASE",
        attrs        = {"no_redring", "only_normalplay", "no_bomb"},
                --�y�^�C���ݒ�̈�z
                time = {
                    time_limit = 30.0, -- �^�C���I�[�o�[�܂ł̎���(�b��)
                    rank = {
                        70.0,     -- S rank (�^�C���A�^�b�N���[�h�̃S�[���b��)
                        80.0,     -- A rank
                        110.0,    -- B rank
                        170.0,    -- C rank
                    },
                },
            },
            -- 8-3 xnim01 �L���l�_
            {
                name        = "xnim01",
                data        = "xnim01",
                player_pos  = { 0.00, -100.00,-10.00 },
                player_dir  = { 0.0, 180.0, 0.0 },
                animals     = { "COOKIE", "POCKY", "FLICKIE" },
        attrs        = {"no_redring", "only_normalplay", "no_bomb"},
                --�y�^�C���ݒ�̈�z
                time = {
                    time_limit = 480.0, -- �^�C���I�[�o�[�܂ł̎���(�b��)
                    rank = {
                        150.0,    -- S rank (�^�C���A�^�b�N���[�h�̃S�[���b��)
                        160.0,    -- A rank
                        190.0,    -- B rank
                        250.0,    -- C rank
                    },
                },
            },
            -- 8-4 xbak01 �o�N�o�N����
            {
                name        = "xbak01",
                data        = "xbak01",
                player_pos  = { 0.0, 0.0, 0.0 },
                player_dir  = { 0.0, 0.0, 0.0 },
                player_mode = "2D",
                unlock_animals = 2300,
                animals     = { "FLICKIE", "PECKIE", "COOKIE" },
        attrs        = {"no_redring", "only_normalplay", "bakubaku", "no_bomb"},
                --�y�^�C���ݒ�̈�z
                time = {
                    time_limit = 620.0, -- �^�C���I�[�o�[�܂ł̎���(�b��)
                    rank = {
                        317.0,    -- S rank (�^�C���A�^�b�N���[�h�̃S�[���b��)
                        322.0,    -- A rank
                        342.0,    -- B rank
                        382.0,    -- C rank
                    },
                },
            },

            -- minigame mini01 �~�j�Q�[���F�V�[�\�[�P
            {
                name       = "mini01",
                dir        = "mini01",
                player_pos = { 0.0, 0.0, 0.0 },
                player_dir = { 0.0, 0.0, 0.0 },
                player_mode = "2D",

                --�y�^�C���ݒ�̈�z
                time = { time_limit = 60.0, }
            },
            -- minigame mini02 �~�j�Q�[���F�V�[�\�[�Q
            {
                name        = "mini02",
                dir     = "mini01",
                player_pos  = { 0.0, 0.0, 0.0 },
                player_dir  = { 0.0, 0.0, 0.0 },
                player_mode = "2D",

                --�y�^�C���ݒ�̈�z
                time = { time_limit = 60.0, }
            },
            -- minigame mini03 �~�j�Q�[���F�V�[�\�[�R
            {
                name        = "mini03",
                dir     = "mini01",
                player_pos  = { 0.0, 0.0, 0.0 },
                player_dir  = { 0.0, 0.0, 0.0 },
                player_mode = "2D",

                --�y�^�C���ݒ�̈�z
                time = { time_limit = 60.0, }
            },
            -- minigame mini04 �~�j�Q�[���F�g�����|�����P
            {
                name        = "mini04",
                dir     = "mini01",
                player_pos  = { 0.0, 0.0, 0.0 },
                player_dir  = { 0.0, 0.0, 0.0 },
                player_mode = "2D",

                --�y�^�C���ݒ�̈�z
                time = { time_limit = 60.0, }
            },
            -- minigame mini05 �~�j�Q�[���F�g�����|�����Q
            {
                name        = "mini05",
                dir     = "mini01",
                player_pos  = { 0.0, 0.0, 0.0 },
                player_dir  = { 0.0, 0.0, 0.0 },
                player_mode = "2D",

                --�y�^�C���ݒ�̈�z
                time = { time_limit = 60.0, }
            },
            -- minigame mini06 �~�j�Q�[���F�g�����|�����R
            {
                name        = "mini06",
                dir     = "mini01",
                player_pos  = { 0.0, 0.0, 0.0 },
                player_dir  = { 0.0, 0.0, 0.0 },
                player_mode = "2D",

                --�y�^�C���ݒ�̈�z
                time = { time_limit = 60.0, }
            },
            -- minigame mini07 �~�j�Q�[���F��C�P
            {
                name        = "mini07",
                dir     = "mini01",
                player_pos  = { 0.0, 0.0, 0.0 },
                player_dir  = { 0.0, 0.0, 0.0 },
                player_mode = "2D",

                --�y�^�C���ݒ�̈�z
                time = { time_limit = 60.0, }
            },
            -- minigame mini08 �~�j�Q�[���F��C�Q
            {
                name        = "mini08",
                dir     = "mini01",
                player_pos  = { 0.0, 0.0, 0.0 },
                player_dir  = { 0.0, 0.0, 0.0 },
                player_mode = "2D",

                --�y�^�C���ݒ�̈�z
                time = { time_limit = 60.0, }
            },
            -- minigame mini09 �~�j�Q�[���F��C�R
            {
                name        = "mini09",
                dir     = "mini01",
                player_pos  = { 0.0, 0.0, 0.0 },
                player_dir  = { 0.0, 0.0, 0.0 },
                player_mode = "2D",

                --�y�^�C���ݒ�̈�z
                time = { time_limit = 60.0, }
            },
            -- minigame mini10 �~�j�Q�[���Fw7��p
            {
                name        = "mini10",
                dir     = "mini01",
                player_pos  = { 0.0, 0.0, 0.0 },
                player_dir  = { 0.0, 0.0, 0.0 },
                player_mode = "2D",

                --�y�^�C���ݒ�̈�z
                time = { time_limit = 60.0, }
            },

            --�ΐ�
            -- �X�s�[�h���[�X1 1-1 w1a01 �O���X�q��
            {
                name        = "batl01",
                dir     = "w1a01",
                player_pos  = { 4000.0, -2500.0, 7053.0 },
                player_dir  = { 0.0, 180.0, 0.0 },
                player2_pos = { 4000.0, -2500.0, 7053.0 },
                player2_dir = { 0.0, 180.0, 0.0 },
                bgm         = "bgm_w1a01",
                amb         = "amb_w1a01",
                --�y�^�C���ݒ�̈�z
                time = { time_limit = 160.0, }
            },
            -- �X�s�[�h���[�X2�@1-3 xind01 �C���f�B���A
            {
                name        = "batl02",
                dir     = "xind01",
                player_pos  = { -25.0, -43.3, 1328.6 },
                player_dir  = { 0.0, 180.0, 0.0 },
                player2_pos  = { -25.0, -43.3, 1328.6 },
                player2_dir  = { 0.0, 180.0, 0.0 },
--                player_pos  = { 25.5, 43.0, 1284.0 },
--                player_dir  = { 0.0, 180.0, 180.0 },
                reverb          = 1.0,
                bgm         = "bgm_xind01",
                amb         = "amb_xind01",
                --�y�^�C���ݒ�̈�z
                time = { time_limit = 160.0, }
            },
            -- �X�s�[�h���[�X3 3-1 2-4 w2a06 ����
            {
                name        = "batl03",
                dir     = "w2a06",
                player_pos  = { 0.00004, 2.445, -77.75813 },
                player_dir  = { 0.0, -180.0, 0.0 },
                player2_pos = { 0.00004, 2.445, -77.75813 },
                player2_dir = { 0.0, -180.0, 0.0 },
                player_mode     = "2D",
                bgm         = "bgm_w2a06",
                amb         = "amb_w2a06",
                amb_in      = "amb_w2a06_ug",
                --�y�^�C���ݒ�̈�z
                time = { time_limit = 160.0, }
            },
            -- �X�s�[�h���[�X4 4-1 w4a01 �R���H��
            {
                name        = "batl04",
                dir     = "w4a01",
                --�@�O���̐�[����n�܂�|�W�V����
                --          player_pos  = { 0, 0, 0},
                --          player_dir  = { -90.0, 0.0, 0.0 },
                --
                player_pos  = { 0.99, 0.58, 0.66},
                player_dir  = { -85.04, 174.14, 3.27 },
                player2_pos  = { 0.99, 0.58, 0.66},
                player2_dir  = { -85.04, 174.14, 3.27 },
                bgm         = "bgm_w4a01",
                amb         = "amb_w4a01",
                --�y�^�C���ݒ�̈�z
                time = { time_limit = 160.0, }
            },
            -- �X�s�[�h���[�X5 5-3 xind02 �C���f�B�[���A�Q
            {
                name        = "batl05",
                dir     = "xind02",
                player_pos  = { -0, -45, 14663 },
                player_dir  = { 0.0, 180.0, 0.0 },
                player2_pos = { -0, -45, 14663 },
                player2_dir = { 0.0, 180.0, 0.0 },
                bgm         = "bgm_xind02",
                amb         = "amb_xind02",
                --�y�^�C���ݒ�̈�z
                time = { time_limit = 160.0, }
            },
            -- �G�L�X�p�[�g�X�s�[�h���[�X1 2-1 w2a01 �T���h���[���R
            {
                name        = "batl06",
                dir     = "w2a01",
                player_pos  = { 0.02, 0.22, -206.25 },
                player_dir  = { 0.0, 180.0, 0.0 },
                player2_pos = { 0.02, 0.22, -206.25 },
                player2_dir = { 0.0, 180.0, 0.0 },
                bgm         = "bgm_w2a01",
                amb         = "amb_w2a01_out",
                amb_in      = "amb_w2a01_in",
                 --�y�^�C���ݒ�̈�z
                time = { time_limit = 210.0, }
            },
            -- �G�L�X�p�[�g�X�s�[�h���[�X2 w3a01 �썑�r�[�`
            {
                name        = "batl07",
                dir     = "w3a01",
                --�@�O���̐�[����n�܂�|�W�V����
                --          player_pos  = { 0.00,0.00,0.00 },
                --          player_dir  = { 0.0, 0.0, 180.0 },
                --
                player_pos  = { 0.00,0.00,0.00 },
                player_dir  = { 0.0, 0.0, 180.0 },
                player2_pos = { 0.00,0.00,0.00 },
                player2_dir = { 0.0, 0.0, 180.0 },
                bgm         = "bgm_w3a01",
                amb         = "amb_w3a01_beach",
                amb_in      = "amb_w3a01_uw",
                 --�y�^�C���ݒ�̈�z
                time = { time_limit = 210.0, }
            },
            -- �G�L�X�p�[�g�X�s�[�h���[�X3 3-3 xsea01 �C�ꓴ�A
            {
                name        = "batl08",
                dir     = "xsea01",
                player_pos  = { 0.0, 50.0, 24000.0 },
                player_dir  = { -180.0, 0.0, 0.0 },
                player2_pos = { 0.0, 50.0, 24000.0 },
                player2_dir = { -180.0, 0.0, 0.0 },
      		attrs        = { "randombox_noquake" },
                bgm         = "bgm_xsea01",
                amb         = "amb_xsea01",
                reverb      = 1.0,
                 --�y�^�C���ݒ�̈�z
                time = { time_limit = 210.0, }
            },
            -- �G�L�X�p�[�g�X�s�[�h���[�X4 5-1 w5a01 �W�����O���O���{��
            {
                name        = "batl09",
                dir     = "w5a01",
                --�@�O���̐�[����n�܂�|�W�V����
                --          player_pos  = { 0, 0, 20065.0 },
                --          player_dir  = { 0.0, 180.0, 0.0 },
                --
                player_pos  = { 0, 0, 20065.0 },
                player_dir  = { 0.0, 180.0, 0.0 },
                player2_pos = { 0, 0, 20065.0 },
                player2_dir = { 0.0, 180.0, 0.0 },
                bgm         = "bgm_w5a01",
                amb         = "amb_w5a01",
                 --�y�^�C���ݒ�̈�z
                time = { time_limit = 210.0, }
            },
            -- �G�L�X�p�[�g�X�s�[�h���[�X5 6-3 w6a05 �㏸�C��
            {
                name        = "batl10",
                dir     = "w6a05",
                player_pos  = { -338.8, -2.17, 0 },
                player_dir  = { -5.415, 0.0, 0.0 },
                player2_pos = { -338.8, -2.17, 0 },
                player2_dir = { -5.415, 0.0, 0.0 },
                player_mode     = "2D",
       		attrs        = { "randombox_noquake" },
                bgm         = "bgm_w6a03",
                amb         = "amb_w6a03",
                 --�y�^�C���ݒ�̈�z
                time = { time_limit = 210.0, }
            },

            -- �����O���[�X1 2-4 w2a06 ����
            {
                name        = "batl11",
                dir     = "w2a06",
                player_pos  = { 0.00004, 2.445, -77.75813 },
                player_dir  = { 0.0, -180.0, 0.0 },
                player2_pos = { 0.00004, 2.445, -77.75813 },
                player2_dir = { 0.0, -180.0, 0.0 },
                player_mode     = "2D",
                bgm         = "bgm_w2a06",
                amb         = "amb_w2a06",
                amb_in      = "amb_w2a06_ug",
                 --�y�^�C���ݒ�̈�z
                time = { time_limit = 200.0, }
            },

            -- �����O���[�X2 4-4 w4a06 �Q�����f
            {
                name        = "batl12",
                dir     = "w4a06",
                player_pos  = { -5915.00, -1499.98, -0.00000 },
                player_dir  = { 0.0, 0.709, 0.0 },
                player2_pos = { -5915.00, -1499.98, -0.00000 },
                player2_dir = { 0.0, 0.709, 0.0 },
                player_mode     = "2D",
                bgm         = "bgm_w4a06",
                amb         = "amb_w4a06",
                 --�y�^�C���ݒ�̈�z
                time = { time_limit = 200.0, }
            },


            -- �����O���[�X3 5-2 w5a02 �~�~�Y�N
            {
                name        = "batl13",
                dir         = "w5a02",
                player_pos  = { -1123.15, 3.38, 3.56 },
                player_dir  = { 0.0, 90.0, 0.0 },
                player2_pos = { -1123.15, 3.38, 3.56 },
                player2_dir = { 0.0, 90.0, 0.0 },
                player_mode = "2D",
                bgm         = "bgm_w5a02",
                amb         = "amb_w5a02",
                 --�y�^�C���ݒ�̈�z
                time = { time_limit = 200.0, }
            },

            -- �����O���[�X4 6-3 w6a05 �㏸�C��
            {
                name        = "batl14",
                dir     = "w6a05",
                player_pos  = { -338.8, -2.17, 0 },
                player_dir  = { -5.415, 0.0, 0.0 },
                player2_pos = { -338.8, -2.17, 0 },
                player2_dir = { -5.415, 0.0, 0.0 },
                player_mode     = "2D",
       		attrs        = { "randombox_noquake" },
                bgm         = "bgm_w6a03",
                amb         = "amb_w6a03",
                 --�y�^�C���ݒ�̈�z
                time = { time_limit = 200.0, }
            },

            -- �����O���[�X5 w7a02 ��ǉΎR�Q
            {
                name        = "batl15",
                dir     = "w7a02",
                player_pos  = { 0, -1250.0, 6027.5 },
                player_dir  = { 0.0, 0.0, 0.0 },
                player2_pos = { 0, -1250.0, 6027.5 },
                player2_dir = { 0.0, 0.0, 0.0 },
                player_mode     = "2D",
                 --�y�^�C���ݒ�̈�z
                time = { time_limit = 200.0, }
            },
            -- DLC NiGHTS
            {
                name        = "zdlc01",
                data        = "zdlc01",
                player_pos  = { 4030.8, -473.3, 1507.9 },
                player_dir  = { 0.0, 60.0, 0.0 },
       		    attrs       = { "no_redring", "only_normalplay", "no_bomb", "dlc" },
               --�y�^�C���ݒ�̈�z
                time = {
                    time_limit = 500.0, -- �^�C���I�[�o�[�܂ł̎���(�b��)
                    rank = {
                        80.0, -- S rank (�^�C���A�^�b�N���[�h�̃S�[���b��)
                        100.0,    -- A rank
                        160.0,    -- B rank
                        280.0,    -- C rank
                    },
                },
            },
            -- DLC ���b�V�[�A�C�����h
            {
                name        = "zdlc02",
                data        = "zdlc02",
                player_pos  = { -257, -90, 0 },
                player_dir  = { 0, 90.0, 0.0 },
                player_mode = "2D",
       		    attrs       = { "no_redring", "only_normalplay", "dlc", "yoshiisland" },
                --�y�^�C���ݒ�̈�z
                time = {
                    time_limit = 500.0, -- �^�C���I�[�o�[�܂ł̎���(�b��)
                    rank = {
                        75.0,         -- S rank (�^�C���A�^�b�N���[�h�̃S�[���b��)
                        95.0,         -- A rank
                        155.0,    -- B rank
                        275.0,    -- C rank
                    },
                },
            },
            -- DLC �[���_�̓`��
            {
                name        = "zdlc03",
                data        = "zdlc03",
                player_pos  = { -848.98, 20031.34, 20533.98 },
                player_dir  = { 5, 162.0, 0.0 },
       		    attrs       = { "no_redring", "only_normalplay", "dlc", "zelda" },
                --�y�^�C���ݒ�̈�z
                time = {
                    time_limit = 500.0, -- �^�C���I�[�o�[�܂ł̎���(�b��)
                    rank = {
                        75.0,         -- S rank (�^�C���A�^�b�N���[�h�̃S�[���b��)
                        95.0,         -- A rank
                        155.0,    -- B rank
                        275.0,    -- C rank
                    },
                },
            },

            --old stage
            -- w2-a03 �Ñ�s�s
            {
                name        = "w2a03",
                data        = "w2a03",
                player_pos  = { 0.00, 0.00, 51.00 },
                player_dir  = { 0.0, 180.0, 0.0 },
            },
            -- w2-a04 �^�J�A�V�K�j
            {
                name        = "w2a04",
                data        = "w2a04",
                player_pos  = { 2.19, 0.47, 0.49 },
                player_dir  = { 0.0, 90.0, 0.0 },
                player_mode = "2D",
            },
            -- w2-a05 �T���h���[���̓�
            {
                name        = "w2a05",
                data        = "w2a05",
                player_pos  = { -1000.29, 540.33, -7.00 },
                player_dir  = { 0.0, 180.0, 0.0 },
                player_mode = "2D",
            },
            -- w3-a07 �썑�r�[�`2
            {
                name        = "w3a07",
                data        = "w3a07",
                player_pos  = { -0.54, 0.44, 105.00 },
                player_dir  = { 0.0, 180.0, 0.0 },
            },

            -- w1-a02 �C���f�B���A
            {
                name        = "w1a02",
                data        = "w1a02",
                player_pos  = { 50.1, -10.55, -188.27 },
                player_dir  = { 0.0, 180.0, 0.0 },
            },
            -- w1-a05 ���A�C
            {
                name        = "w1a05",
                data        = "w1a05",
                player_pos  = { 80, 10067.96, 0 },
                player_dir  = { 0.0, 90.0, 0.0 },
                player_mode = "2D",
            },
            -- w1-c01 �L���l�_
            {
                name        = "w1c01",
                data        = "w1c01",
                player_pos  = { 0.00, -95.00, 30.00 },
                player_dir  = { 0.0, 180.0, 0.0 },
            },
            -- w2-a02 �X�J�C�`�F�C�X
            {
                name        = "w2a02",
                data        = "w2a02",
                player_pos  = { 2401.1, 63.06, 3125.81 },
                player_dir  = { 0.0, 180.0, 0.0 },
                player_mode = "SKYCHASE"
            },
            -- w4-a02 �C���f�B���A2
            {
                name        = "w4a02",
                data        = "w4a02",
                player_pos  = { -0.18, -52.03, -73.52 },
                player_dir  = { 0.0, 180.0, 0.0 },
            },
            -- w4-a03 ilomilo���َq
            {
                name        = "w4a03",
                data        = "w4a03",
                player_pos  = { -1.08, 3.02, -3.30 },
                player_dir  = { 0.0, 90.0, 0.0 },
                player_mode = "2D",
            },
        },
    },



    -- RSO(���]�[�g��)
    {
        missions = {

            -- �`�b�s�P�i���`�b�s�P�̑O�������j
            {
                name        = "stg110",
                data        = "stg110",
                player_pos  = { -11942.84, 1575.931, 16972.49 },
                player_dir  = { 0.0, -159.2, 0.0 },
                start_event = 1,
                bgm         = "bgm_stg110_rso",
                phantoms    = { "laser", "drill" },
                result_bg   = "result_01_rso_act1",

                --�y�X�R�A�ݒ�̈�z
                score = {
                    rank = {
                        60,   -- S rank (�S�[���b��)
                        120,  -- A rank
                        180,  -- B rank
                        240,  -- C rank
                        320,  -- D rank
                    },
                    time_basis = 320000,
                    time_down = 1100,

                    no_miss = {
                        280000,
                        210000,
                        182000,
                        56000,
                        28000,
                    },

                },
            },
        },
    },

}

---------------------------------------------------------------
-- �]�[���A�~�b�V�����A�X�e�[�W�̑Ή��\

zone_table = {
    -- world1
    {
        index = 0,
        missions = { "w1a01", "w1a03", "xind01","w1a06"  },
    },
    -- world2
    {
        index = 1,
        missions = { "w2a01", "xbee01","xswe01","w2a06"  },
    },
    -- world3
    {
        index = 2,
        missions = { "w3a01", "w3a03", "xsea01","w3a06", "w6a03" },
    },
    -- world4
    {
        index = 3,
        missions = { "w4a01", "w4a04", "xcas01","w4a06"  },
    },
    -- world5
    {
        index = 4,
        missions = { "w5a01", "w5a02", "xind02","xmoa01" },
    },
    -- world6
    {
        index = 5,
        missions = { "w1a04", "w5a03", "w6a05", "w2c01", "xnim02" },
    },
    -- world7
    {
        index = 6,
        missions = { "w7a01", "xsea02","w7a02", "w7a06"  },
    },
    -- world8
    {
        index = 7,
        missions = { "xcub01","xsky01","xnim01","xbak01"  },
    },
    -- minigame (WorldMap, SaveData)
    --world1
    {
        index = 8,
        missions = { "w1m0a","w1m0b","w1m0c","w1m0d", "csc_a" },
    },
    --world2
    {
        index = 9,
        missions = { "w2m0a","w2m0b","w2m0c","w2m0d"  },
    },
    --world3
    {
        index = 10,
        missions = { "w3m0a","w3m0b","w3m0c","w3m0d"  },
    },
    --world4
    {
        index = 11,
        missions = { "w4m0a","w4m0b","w4m0c","w4m0d"  },
    },
    --world5
    {
        index = 12,
        missions = { "w5m0a","w5m0b","w5m0c","w5m0d"  },
    },
    --world6
    {
        index = 13,
        missions = { "w6m0a","w6m0b","w6m0c","w6m0d"  },
    },
    --world7
    {
        index = 14,
        missions = { "w7m0a","w7m0b","w7m0c","w7m0d"  },
    },

    -- battle
    -- speed race
    {
        index = 15,
        missions = { "batl01","batl02","batl03","batl04","batl05"  },
    },
    -- expart race
    {
        index = 16,
        missions = { "batl06","batl07","batl08","batl09","batl10"  },
    },
    -- ring race
    {
        index = 17,
        missions = { "batl11","batl12","batl13","batl14","batl15"  },
    },
    -- dlc �����ɒǉ����邯��ǁA�Z�[�u�̈�I�ɂ�WORLD_1,STAGE_5�n�܂�Ȃ̂Œ���.
    {
        index = 18,
        missions = { "zdlc01","zdlc02","zdlc03" },
    },
}
