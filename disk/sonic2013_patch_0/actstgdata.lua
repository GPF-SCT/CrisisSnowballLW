---------------------------------------------------------------
-- actstgdata.lua
-- @author Kawabata Yoshitaka
-- @brief �X�e�[�W�ꗗ���`����t�@�C���ł��B
---------------------------------------------------------------

---------------------------------------------------------------
-- ���̃t�@�C���́A�J�����j���[�ɕ\�������X�e�[�W���`���܂��B
--
-- �X�e�[�W�̓���̏ڍׂ́Aactstgmission.lua�ɏ����܂��B
-- ���̃t�@�C���͂����܂ŊJ�����j���[�̋L�q�p���ƍl���Ă��������B
-- ���i�łł͂��̃t�@�C���̏��͈�؎Q�Ƃ���܂���B


---------------------------------------------------------------
-- �p�����[�^�̐���
--
-- 
-- �� stages �e�[�u��
--
--		name	���s����~�b�V�������B
--				�Y������~�b�V������actstgmission.lua�ɒ�`����Ă��Ȃ��ꍇ�́A
--				�X�e�[�W�����݂��܂��B
--
--		title	���j���[�ɕ\�������e�L�X�g�B
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
	  title = "w1����",

	  stages = {
		 {
			name = "w1a01",
			title = "w1-1:�O���X�q��",
		 },
		 {
			name = "w1a03",
			title = "w1-2:����",
		 },
		 {
			name = "xind01",
			title = "w1-3:�C���f�B���A",
		 },
		 {
			name = "w1a06",
			title = "w1-4:�����Q",
		 },
	  },
   },
   -- w2
   {
	  title = "w2����",

	  stages = {
		 {
			name = "w2a01",
			title = "w2-1:�T���h���[���R",
		 },
		 {
			name = "xbee01",
			title = "w2-2:�n�`�̑��K������",
		 },
		 {
			name = "xswe01",
			title = "w2-3:ilomilo���َq",
		 },
		 {
			name = "w2a06",
			title = "w2-4:����",
		 },
	  },
   },
   -- w3
   {
	  title = "w3�썑",

	  stages = {
		 {
			name = "w3a01",
			title = "w3-1:�썑�r�[�`",
		 },
		 {
			name = "w3a03",
			title = "w3-2:�t���[�c�_��",
		 },
		 {
			name = "xsea01",
			title = "w3-3:�C�ꓴ�A",
		 },
		 {
			name = "w3a06",
			title = "w3-4:�I�j�L����",
		 },
		 {
			name = "w6a03",
			title = "w3-X:�㏸�C��",
		 },
	  },
   },
   -- w4
   {
	  title = "w4��",

	  stages = {
		 {
			name = "w4a01",
			title = "w4-1:�R���H��",
		 },
		 {
			name = "w4a04",
			title = "w4-2:�|�b�|�[�Y",
		 },
		 {
			name = "xcas01",
			title = "w4-3:�J�W�m",
		 },
		 {
			name = "w4a06",
			title = "w4-4:�Q�����f",
		 },
	  },
   },
   -- w5
   {
	  title = "w5�W�����O��",

	  stages = {
		 {
			name = "w5a01",
			title = "w5-1:�W�����O���O���{��",
		 },
		 {
			name = "w5a02",
			title = "w5-2:�~�~�Y�N",
		 },
		 {
			name = "xind02",
			title = "w5-3:�C���f�B���A2",
		 },
		 {
			name = "xmoa01",
			title = "w5-4:���A�C",
		 },
	  },
   },
   -- w6
   {
	  title = "w6��",

	  stages = {
		 {
			name = "w1a04",
			title = "w6-1:��i�[���R",
		 },
		 {
			name = "w5a03",
			title = "w6-2:��",
		 },
		 {
			name = "w6a05",
			title = "w6-3:�㏸�C���Q",
		 },
		 {
			name = "w2c01",
			title = "w6-4:���F�O�A�o�l",
		 },
		 {
			name = "xnim02",
			title = "w6-X:�L���l�_�Q",
		 },
	  },
   },
   -- w7
   {
	  title = "w7�n��",
	  stages = {
		 {
			name = "w7a01",
			title = "w7-1:�ΎR",
		 },
		 {
			name = "xsea02",
			title = "w7-2:�C�ꓴ�A2",
		 },
		 {
			name = "w7a02",
			title = "w7-3:��ǉΎR2",
		 },
		 {
			name = "w7a06",
			title = "w7-4:���X�{�X��",
		 },
	  },
   },
   -- w8
   {
	  title = "w8�X�y�V����",
	  stages = {
		 {
			name = "xcub01",
			title = "w8-1:���[�r�b�N�L���[�u",
		 },
		 {
			name = "xsky01",
			title = "w8-2:�X�J�C�`�F�C�X",
		 },
		 {
			name = "xnim01",
			title = "w8-3:�ؓl�_",
		 },
		 {
			name = "xbak01",
			title = "w8-4:�o�N�o�N����",
		 },
	  },
   },
 -- mini game
   {
	  title = "�~�j�Q�[��",

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
	  title = "�ΐ�",

	  stages = {
		 {
			name = "batl01",
			title = "�X�s�[�h���[�X1 1-1 w1a01 �O���X�q��",
		 },
		 {
			name = "batl02",
			title = "�X�s�[�h���[�X2�@1-3 xind01 �C���f�B���A",
		 },
		 {
			name = "batl03",
			title = "�X�s�[�h���[�X3 2-4 w2a06 ����",
		 },
		 {
			name = "batl04",
			title = "�X�s�[�h���[�X4 4-1 w4a01 �R���H��",
		 },
		 {
			name = "batl05",
			title = "�X�s�[�h���[�X5 5-3 xind02 �C���f�B�[���A2",
		 },
		 {
			name = "batl06",
			title = "�G�L�X�p�[�g�X�s�[�h1 2-1 w2a01 �T���h���[���R",
		 },
		 {
			name = "batl07",
			title = "�G�L�X�p�[�g�X�s�[�h2 3-1 w3a01 �썑�r�[�`",
		 },
		 {
			name = "batl08",
			title = "�G�L�X�p�[�g�X�s�[�h3 3-3 xsea01 �C�ꓴ�A",
		 },
		 {
			name = "batl09",
			title = "�G�L�X�p�[�g�X�s�[�h4 5-1 w5a01 �W�����O���O���{��",
		 },
		 {
			name = "batl10",
			title = "�G�L�X�p�[�g�X�s�[�h5 6-3 w6a05 �㏸�C��2",
		 },		 
		 {
			name = "batl11",
			title = "�����O���[�X1 2-4 w2a06 ����",
		 }, 
		 {
			name = "batl12",
			title = "�����O���[�X2 4-B w4a06 �Q�����f",
		 },
		 {
			name = "batl13",
			title = "�����O���[�X3 5-2 w5a02 �~�~�Y�N",
		 },
		 {
			name = "batl14",
			title = "�����O���[�X4 6-3 w6a05 �㏸�C��2",
		 },
		 {
			name = "batl15",
			title = "�����O���[�X5 4-B w7a02 ��ǉΎR�Q�i���b�V���j",
		 },


	  },
   },
 -- DLC
   {
	  title = "DLC",

	  stages = {
		-- �Z�KDLC�i�C�c
		 {
			name = "zdlc01",
			title = "NiGHTS",
		 },
		-- �C�V��DLC���b�V�[�A�C�����h
		 {
			name = "zdlc02",
			title = "���b�V�[�A�C�����h",
		 },
		-- �C�V��DLC�[���_�̓`��
		 {
			name = "zdlc03",
			title = "�[���_�̓`��",
		 },
	  },
   },
   -- �e�X�g�X�e�[�W
   {
	  title = "�e�X�g�X�e�[�W",

	  stages = {
		 -- �f�U�C���e�X�g�}�b�v
		 {
			name = "w0c99",
			title = "�f�U�C���e�X�g�}�b�v",
		 },

		 -- �B�e��
		 {
			name = "w0c99_2",
			title = "�B�e��",
		 },

		 -- �V�F�[�_�[�e�X�g�}�b�v
		 {
			name = "w0c98",
			title = "�V�F�[�_�[�e�X�g�}�b�v",
		 },

		 -- �f�U�C���e�X�g�}�b�v2(�Â���)
		 {
			name = "w0c97",
			title = "�f�U�C���e�X�g�}�b�v2(�Â���)",
		 },

		 -- �R���W�����e�X�g�}�b�v
		 {
			name = "w0c96",
			title = "�R���W�����e�X�g�}�b�v",
		 },

		 -- w0-1
		 {
			name = "w0a01",
			title = "w0a01�F�v���g����",
		 },
		 -- �v���g�^�C�v
		 {
			name = "stg988",
			title = "�v���g�^�C�v",
		 },
		 -- w1-2
		 {
			name = "stg812",
			title = "w1-2�F�C���f�B���A",
		 },
		 -- w1-3
		 {
			name = "stg820",
			title = "w1-3�F����",
		 },
		 -- w1-5
		 {
			name = "w1a05",
			title = "w1-5�F���A�C",
		 },
		 -- w2-1
		 {
			name = "stg815",
			title = "w2-1�F��O���e�X�g",
		 },
		 -- w2-6
		 {
			name = "stg822",
			title = "w2-6�F�����e�X�g",
		 },
		 -- w2-2���a10���e�X�g
		 {
			name = "stg823",
			title = "w2-2�F���a20���e�X�g",
		 },
		 -- w0-4
		 {
			name = "w0a04",
			title = "w3-5�FSV�J�W�m�e�X�g�iw0a04�j",
		 },
		 -- ���q�J���e�X�g
		 {
			name = "stg814",
			title = "���q�J���e�X�g",
		 },
		 -- FV�Ǒ���e�X�g�i��w1-1�j
		 {
			name = "stg811",
			title = "FV�Ǒ���e�X�g",
		 },
		 -- SV�Ǒ���e�X�g
		 {
			name = "w0a07",
			title = "SV�Ǒ���e�X�g",
		 },
		 -- SV�V�䑖��e�X�g
		 {
			name = "w0a09",
			title = "SV�V�䑖��e�X�g",
		 },
		 -- �g�[���X�e�X�g
		 {
			name = "stg817",
			title = "�g�[���X�e�X�g",
		 },
		 -- ���[�r�b�N�L���[�u�e�X�g
		 {
			name = "stg818",
			title = "���[�r�b�N�L���[�u�e�X�g",
		 },
		 -- ���̃e�X�g
		 {
			name = "stg819",
			title = "���̃e�X�g",
		 },
		 -- �Z�p�n�`�e�X�g
		 {
			name = "w0a03",
			title = "�Z�p�n�`�e�X�g",
		 },
		 -- �O���C���h�����n�`�e�X�g
		 {
			name = "w0a05",
			title = "�O���C���h�����n�`�e�X�g",
		 },
		 -- �����܂��n�`�e�X�g
		 {
			name = "w0a06",
			title = "�����܂��n�`�e�X�g",
		 },
		 -- �r�����[�h�e�X�g
		 {
			name = "w0a08",
			title = "�r�����[�h�n�`�e�X�g",
		 },
		 -- �����Q�n�`�e�X�g
		 {
			name = "w0a11",
			title = "�����Q�n�`�e�X�g",
		 },
		 -- �ΎR�n�`�e�X�g
		 {
			name = "w0a12",
			title = "�ΎR�n�`�e�X�g",
		 },
		 -- ilomilo+���َq�e�X�g
		 {
			name = "w0a13",
			title = "ilomilo+���َq�e�X�g",
		 },
		 -- �C�ꓴ�A�P�e�X�g
		 {
			name = "w0a14",
			title = "�C�ꓴ�A�P�e�X�g",
		 },
		 -- �򗴐�e�X�g
		 {
			name = "w0a15",
			title = "�򗳐�e�X�g"
		 },
		 -- ilomilo���َq�㔼�e�X�g
		 {
			name = "w0a16",
			title = "ilomilo���َq�㔼�e�X�g",
		 },
		 -- �����V�����_�[
		 {
			name = "stg958",
			title = "�����V�����_�[",
		 },
		 -- �O���V�����_�[
		 {
			name = "stg963",
			title = "�O���V�����_�[",
		 },
		 -- �O���V�����_�[�E������
		 {
			name = "stg965",
			title = "�O���V�����_�[�E������",
		 },
		 -- �O���V�����_�[ �O���C���h�e�X�g
		 {
			name = "stg985",
			title = "�O���V�����_�[ �O���C���h�e�X�g",
		 },
		 -- �����܂��n�`
		 {
			name = "stg967",
			title = "�����܂��n�`",
		 },
		 -- �W�̎��g�[���X
		 {
			name = "stg961",
			title = "�W�̎��g�[���X",
		 },
		 -- �����̂S��
		 {
			name = "stg964",
			title = "�����̂S��",
		 },
		 -- �����̂S�ʃh����"
		 {
			name = "stg966",
			title = "�����̂S�ʃh����",
		 },
		 -- �S�ʃV�����_�[ �J�x�����
		 {
			name = "stg975",
			title = "�S�ʃV�����_�[ �J�x�����",
		 },
		 -- �S�ʃV�����_�[ �I���e�E����
		 {
			name = "stg976",
			title = "�S�ʃV�����_�[ �I���e�E����",
		 },
		 -- �U�ʃV�����_�[
		 {
			name = "stg978",
			title = "�U�ʃV�����_�[",
		 },
		 -- ���̒n�` �o�b�^���L���O�̍Ԕ�
		 {
			name = "stg977",
			title = "���̒n�` �o�b�^���L���O�̍Ԕ�",
		 },
		 -- ilomilo
		 {
			name = "stg979",
			title = "ilomilo",
		 },
		 -- �����O
		 {
			name = "stg986",
			title = "�����O",
		 },
		 -- ilomilo+�����O
		 {
			name = "stg816",
			title = "ilomilo+�����O",
		 },
		 -- FV+TV
		 {
			name = "stg987",
			title = "FV+TV",
		 },
		 -- �d��FV
		 {
			name = "stg982",
			title = "�d��FV",
		 },
		 -- �A�X���`�b�N�e�X�g FV
		 {
			name = "stg980",
			title = "�A�X���`�b�N�e�X�g FV",
		 },
		 -- �A�X���`�b�N�e�X�g SV
		 {
			name = "stg981",
			title = "�A�X���`�b�N�e�X�g SV",
		 },
		 -- �A�X���`�b�N�e�X�g �V�����_�[
		 {
			name = "stg983",
			title = "�A�X���`�b�N�e�X�g �V�����_�[",
		 },
		 -- �A�X���`�b�N�e�X�g �d��SV
		 {
			name = "stg984",
			title = "�A�X���`�b�N�e�X�g �d��SV",
		 },
		 -- �A�X���`�b�N�e�X�g �d��SV �C����
		 {
			name = "stg989",
			title = "�A�X���`�b�N�e�X�g �d��SV ���C����",
		 },
		 
		 -- �v���g�^�C�v�F�V���R��
		 {
			name = "stg991",
			title = "�v���g�^�C�v�F�V���R��",
		 },
		 -- �v���g�^�C�v�F�V���_�C
		 {
			name = "stg992",
			title = "�v���g�^�C�v�F�V���_�C",
		 },
		 -- �v���g�^�C�v�F�V���C
		 {
			name = "stg993",
			title = "�v���g�^�C�v�F�V���C",
		 },
		 -- �v���g�^�C�v�F�V���V�n��
		 {
			name = "stg994",
			title = "�v���g�^�C�v�F�V���V�n��",
		 },
		 -- �e�X�g�}�b�v�`���[�u
		 {
			name = "stg950",
			title = "�`���[�u�e�X�g�}�b�v",
		 },
		 -- �e�X�g�}�b�v�X���C�_�[
		 {
			name = "stg951",
			title = "�X���C�_�[�e�X�g�}�b�v",
		 },
		 -- �e�X�g�}�b�vNew�T�C�h
		 {
			name = "stg952",
			title = "New�T�C�h�e�X�g�}�b�v",
		 },
		 -- �e�X�g�}�b�vNew�T�C�h�i����j
		 {
			name = "stg953",
			title = "New�T�C�h�e�X�g�}�b�v�i����j",
		 },
		 -- �e�X�g�}�b�vNew�T�C�h�i���]�[�g�ʖ͎ʁj
		 {
			name = "stg954",
			title = "New�T�C�h�e�X�g�}�b�v�i���]�[�g�ʖ͎ʁj",
		 },
		 -- �e�X�g�}�b�v01
		 {
			name = "stg955",
			title = "�e�X�g�}�b�v01",
		 },
		 -- �e�X�g�}�b�v02
		 {
			name = "stg956",
			title = "�e�X�g�}�b�v02",
		 },
		 -- �e�X�g�}�b�v05�i�V�����_�[���a�T�C�Y���؁j
		 {
			name = "stg960",
			title = "�e�X�g�}�b�v05�i�V�����_�[���a�T�C�Y���؁j",
		 },
		 -- �e�X�g�}�b�v07�i�O���V�����_�[�E�����̂ݎ���j
		 {
			name = "stg962",
			title = "�e�X�g�}�b�v07�i�O���V�����_�[�E�����̂ݎ���j",
		 },
		 -- �e�X�g�}�b�v09�i���̒n�`�j
		 {
			name = "stg959",
			title = "�e�X�g�}�b�v09�i���̒n�`�j",
		 },
		 -- �e�X�g�}�b�v10�i�����̒n�`�j
		 {
			name = "stg970",
			title = "�e�X�g�}�b�v10�i�����̒n�`�j",
		 },
		 -- �e�X�g�}�b�v11�i�J�v�Z���n�`�j
		 {
			name = "stg971",
			title = "�e�X�g�}�b�v11�i�J�v�Z���n�`�j",
		 },
		 -- �e�X�g�}�b�v12�i�Ђ傤����n�`�j
		 {
			name = "stg972",
			title = "�e�X�g�}�b�v12�i�Ђ傤����n�`�j",
		 },
		 -- �e�X�g�}�b�v13�i�����̃`���[�u�n�`�j
		 {
			name = "stg973",
			title = "�e�X�g�}�b�v13�i�����̃`���[�u�n�`�j",
		 },
		 -- �e�X�g�}�b�v14�i�����̃`���[�u�E���]�[�gFV�j
		 {
			name = "stg974",
			title = "�e�X�g�}�b�v14�i�����̃`���[�u�E���]�[�gFV�j",
		 },
		 -- �v���g�^�C�v�V�F������
		 {
			name = "stg990",
			title = "�v���g�^�C�v�V�F������",
		 },
		 -- �v���g�^�C�v�V�F������
		 {
			name = "stg995",
			title = "�v���g�^�C�v�V�F���Ȃ�",
		 },		 
		 -- w1-1
		 {
			name = "stg811",
			title = "w1-1�F�O���X�q��(�n�`���A�b�v)",
		 },
		 -- w0-2
		 {
			name = "w0a02",
			title = "w0a02�F�I�u�W�F�N�g�e�X�g�}�b�v(w0a02)",
		 },
		 -- �O���X�q���@�e�X�g
		 {
		 	name = "stg813",
		 	title = "�O���X�q���@�e�X�g",
		 },
		 -- �O���X�q���i���ʉ��j�e�X�g
		 {
		 	name = "w0a10",
		 	title = "�O���X�q���i���ʉ��j�e�X�g",
		 },
		 -- �㏸�C��2�@�e�X�g
		 {
		 	name = "w6a05",
		 	title = "�㏸�C��2�@�e�X�g",
		 },
		 --�e�X�g�ʂ̐V�K�X�e�[�W�͂������ɒ�`���Ă�������
		 -- ����SV�e�X�g�}�b�v
		 {
			name = "w0a90",
			title = "����SV�e�X�g�}�b�v",
		 },
		 -- �����e�X�g�}�b�v
		 {
			name = "stg902",
			title = "�����e�X�g�}�b�v",
		 },
		 -- �I�u�W�F�N�g�e�X�g�p
		 {
		 
		 	name = "stg901",
		 	title = "�I�u�W�F�N�g�e�X�g�}�b�v",
		 },
		 --�e�X�g�ʂ̐V�K�X�e�[�W��"����SV�e�X�g�}�b�v"�̑O�ɒ�`���Ă�������

	  },
   },

}

old_stage_all = {

   -- w1
   {
	  title = "w1����",

	  stages = {
		 {
			name = "w1a01",
			title = "w1-1:�O���X�q��",
		 },
		 {
			name = "w1a02",
			title = "w1-2:�C���f�B���A",
		 },
		 {
			name = "w1a03",
			title = "w1-3:����",
		 },
		 {
			name = "w1a04",
			title = "w1-4:��i�[���R",
		 },
		 {
			name = "w1a05",
			title = "w1-5:���A�C",
		 },
		 {
			name = "w1c01",
			title = "w1-A:�L���l�_",
		 },
	  },
   },
   -- w2
   {
	  title = "w2����",

	  stages = {
		 {
			name = "w2a01",
			title = "w2-1:�T���h���[���R",
		 },
		 {
			name = "w2a02",
			title = "w2-2:�X�J�C�`�F�C�X",
		 },
		 {
			name = "w2a03",
			title = "w2-3:�Ñ�s�s",
		 },
		 {
			name = "w2a04",
			title = "w2-4:�^�J�A�V�K�j",
		 },
		 {
			name = "w2a05",
			title = "w2-5:�T���h���[���̓�",
		 },
		 {
			name = "w2a06",
			title = "w2-6:����",
		 },
		 {
			name = "w2c01",
			title = "w2-A:���F�O�A�o�l",
		 },
	  },
   },
   -- w3
   {
	  title = "w3�썑",

	  stages = {
		 {
			name = "w3a01",
			title = "w3-1:�썑�r�[�`",
		 },
		 {
			name = "w3a03",
			title = "w3-3:�t���[�c�_��",
		 },
		 {
			name = "w3a07",
			title = "w3-7:�썑�r�[�`2",
		 },
	  },
   },
   -- w4
   {
	  title = "w4��",

	  stages = {
		 {
			name = "w4a01",
			title = "w4-1:�R���H��",
		 },
		 {
			name = "w4a02",
			title = "w4-2:�C���f�B���A2",
		 },
		 {
			name = "w4a03",
			title = "w4-3:ilomilo���َq",
		 },
	  },
   },
   -- w5
   {
	  title = "w5�W�����O��",

	  stages = {
		 {
			name = "w5a01",
			title = "w5-1:�W�����O���O���{��",
		 },
	  },
   },
   -- �e�X�g�X�e�[�W
   {
	  title = "�e�X�g�X�e�[�W",

	  stages = {
		 -- �f�U�C���e�X�g�}�b�v
		 {
			name = "w0c99",
			title = "�f�U�C���e�X�g�}�b�v",
		 },

		 -- �V�F�[�_�[�e�X�g�}�b�v
		 {
			name = "w0c98",
			title = "�V�F�[�_�[�e�X�g�}�b�v",
		 },

		 -- w0-1
		 {
			name = "w0a01",
			title = "w0a01�F�v���g����",
		 },
		 -- �v���g�^�C�v
		 {
			name = "stg988",
			title = "�v���g�^�C�v",
		 },
		 -- w1-2
		 {
			name = "stg812",
			title = "w1-2�F�C���f�B���A",
		 },
		 -- w1-3
		 {
			name = "stg820",
			title = "w1-3�F����",
		 },
		 -- w1-4
		 {
			name = "stg814",
			title = "w1-4�F��i�[���R",
		 },
		 -- w1-5
		 {
			name = "stg821",
			title = "w1-5�F���A�C",
		 },
		 -- w2-1
		 {
			name = "stg815",
			title = "w2-1�F��O���e�X�g",
		 },
		 -- w2-6
		 {
			name = "stg822",
			title = "w2-6�F�����e�X�g",
		 },
		 -- w2-2���a10���e�X�g
		 {
			name = "stg823",
			title = "w2-2�F���a20���e�X�g",
		 },
		 -- w0-4
		 {
			name = "w0a04",
			title = "w3-5�FSV�J�W�m�e�X�g�iw0a04�j",
		 },
		 -- FV�Ǒ���e�X�g�i��w1-1�j
		 {
			name = "stg811",
			title = "FV�Ǒ���e�X�g",
		 },
		 -- SV�ǃL�b�N�e�X�g
		 {
			name = "w0a07",
			title = "SV�ǃL�b�N�e�X�g",
		 },
		 -- �g�[���X�e�X�g
		 {
			name = "stg817",
			title = "�g�[���X�e�X�g",
		 },
		 -- ���[�r�b�N�L���[�u�e�X�g
		 {
			name = "stg818",
			title = "���[�r�b�N�L���[�u�e�X�g",
		 },
		 -- ���̃e�X�g
		 {
			name = "stg819",
			title = "���̃e�X�g",
		 },
		 -- �Z�p�n�`�e�X�g
		 {
			name = "w0a03",
			title = "�Z�p�n�`�e�X�g",
		 },
		 -- �O���C���h�����n�`�e�X�g
		 {
			name = "w0a05",
			title = "�O���C���h�����n�`�e�X�g",
		 },
		 -- �����܂��n�`�e�X�g
		 {
			name = "w0a06",
			title = "�����܂��n�`�e�X�g",
		 },
		 -- �����V�����_�[
		 {
			name = "stg958",
			title = "�����V�����_�[",
		 },
		 -- �O���V�����_�[
		 {
			name = "stg963",
			title = "�O���V�����_�[",
		 },
		 -- �O���V�����_�[�E������
		 {
			name = "stg965",
			title = "�O���V�����_�[�E������",
		 },
		 -- �O���V�����_�[ �O���C���h�e�X�g
		 {
			name = "stg985",
			title = "�O���V�����_�[ �O���C���h�e�X�g",
		 },
		 -- �����܂��n�`
		 {
			name = "stg967",
			title = "�����܂��n�`",
		 },
		 -- �W�̎��g�[���X
		 {
			name = "stg961",
			title = "�W�̎��g�[���X",
		 },
		 -- �����̂S��
		 {
			name = "stg964",
			title = "�����̂S��",
		 },
		 -- �����̂S�ʃh����"
		 {
			name = "stg966",
			title = "�����̂S�ʃh����",
		 },
		 -- �S�ʃV�����_�[ �J�x�����
		 {
			name = "stg975",
			title = "�S�ʃV�����_�[ �J�x�����",
		 },
		 -- �S�ʃV�����_�[ �I���e�E����
		 {
			name = "stg976",
			title = "�S�ʃV�����_�[ �I���e�E����",
		 },
		 -- �U�ʃV�����_�[
		 {
			name = "stg978",
			title = "�U�ʃV�����_�[",
		 },
		 -- ���̒n�` �o�b�^���L���O�̍Ԕ�
		 {
			name = "stg977",
			title = "���̒n�` �o�b�^���L���O�̍Ԕ�",
		 },
		 -- ilomilo
		 {
			name = "stg979",
			title = "ilomilo",
		 },
		 -- �����O
		 {
			name = "stg986",
			title = "�����O",
		 },
		 -- ilomilo+�����O
		 {
			name = "stg816",
			title = "ilomilo+�����O",
		 },
		 -- FV+TV
		 {
			name = "stg987",
			title = "FV+TV",
		 },
		 -- �d��FV
		 {
			name = "stg982",
			title = "�d��FV",
		 },
		 -- �A�X���`�b�N�e�X�g FV
		 {
			name = "stg980",
			title = "�A�X���`�b�N�e�X�g FV",
		 },
		 -- �A�X���`�b�N�e�X�g SV
		 {
			name = "stg981",
			title = "�A�X���`�b�N�e�X�g SV",
		 },
		 -- �A�X���`�b�N�e�X�g �V�����_�[
		 {
			name = "stg983",
			title = "�A�X���`�b�N�e�X�g �V�����_�[",
		 },
		 -- �A�X���`�b�N�e�X�g �d��SV
		 {
			name = "stg984",
			title = "�A�X���`�b�N�e�X�g �d��SV",
		 },
		 -- �A�X���`�b�N�e�X�g �d��SV �C����
		 {
			name = "stg989",
			title = "�A�X���`�b�N�e�X�g �d��SV ���C����",
		 },
		 
		 -- �v���g�^�C�v�F�V���R��
		 {
			name = "stg991",
			title = "�v���g�^�C�v�F�V���R��",
		 },
		 -- �v���g�^�C�v�F�V���_�C
		 {
			name = "stg992",
			title = "�v���g�^�C�v�F�V���_�C",
		 },
		 -- �v���g�^�C�v�F�V���C
		 {
			name = "stg993",
			title = "�v���g�^�C�v�F�V���C",
		 },
		 -- �v���g�^�C�v�F�V���V�n��
		 {
			name = "stg994",
			title = "�v���g�^�C�v�F�V���V�n��",
		 },
		 -- �e�X�g�}�b�v�`���[�u
		 {
			name = "stg950",
			title = "�`���[�u�e�X�g�}�b�v",
		 },
		 -- �e�X�g�}�b�v�X���C�_�[
		 {
			name = "stg951",
			title = "�X���C�_�[�e�X�g�}�b�v",
		 },
		 -- �e�X�g�}�b�vNew�T�C�h
		 {
			name = "stg952",
			title = "New�T�C�h�e�X�g�}�b�v",
		 },
		 -- �e�X�g�}�b�vNew�T�C�h�i����j
		 {
			name = "stg953",
			title = "New�T�C�h�e�X�g�}�b�v�i����j",
		 },
		 -- �e�X�g�}�b�vNew�T�C�h�i���]�[�g�ʖ͎ʁj
		 {
			name = "stg954",
			title = "New�T�C�h�e�X�g�}�b�v�i���]�[�g�ʖ͎ʁj",
		 },
		 -- �e�X�g�}�b�v01
		 {
			name = "stg955",
			title = "�e�X�g�}�b�v01",
		 },
		 -- �e�X�g�}�b�v02
		 {
			name = "stg956",
			title = "�e�X�g�}�b�v02",
		 },
		 -- �e�X�g�}�b�v05�i�V�����_�[���a�T�C�Y���؁j
		 {
			name = "stg960",
			title = "�e�X�g�}�b�v05�i�V�����_�[���a�T�C�Y���؁j",
		 },
		 -- �e�X�g�}�b�v07�i�O���V�����_�[�E�����̂ݎ���j
		 {
			name = "stg962",
			title = "�e�X�g�}�b�v07�i�O���V�����_�[�E�����̂ݎ���j",
		 },
		 -- �e�X�g�}�b�v09�i���̒n�`�j
		 {
			name = "stg959",
			title = "�e�X�g�}�b�v09�i���̒n�`�j",
		 },
		 -- �e�X�g�}�b�v10�i�����̒n�`�j
		 {
			name = "stg970",
			title = "�e�X�g�}�b�v10�i�����̒n�`�j",
		 },
		 -- �e�X�g�}�b�v11�i�J�v�Z���n�`�j
		 {
			name = "stg971",
			title = "�e�X�g�}�b�v11�i�J�v�Z���n�`�j",
		 },
		 -- �e�X�g�}�b�v12�i�Ђ傤����n�`�j
		 {
			name = "stg972",
			title = "�e�X�g�}�b�v12�i�Ђ傤����n�`�j",
		 },
		 -- �e�X�g�}�b�v13�i�����̃`���[�u�n�`�j
		 {
			name = "stg973",
			title = "�e�X�g�}�b�v13�i�����̃`���[�u�n�`�j",
		 },
		 -- �e�X�g�}�b�v14�i�����̃`���[�u�E���]�[�gFV�j
		 {
			name = "stg974",
			title = "�e�X�g�}�b�v14�i�����̃`���[�u�E���]�[�gFV�j",
		 },
		 -- �v���g�^�C�v�V�F������
		 {
			name = "stg990",
			title = "�v���g�^�C�v�V�F������",
		 },
		 -- �v���g�^�C�v�V�F������
		 {
			name = "stg995",
			title = "�v���g�^�C�v�V�F���Ȃ�",
		 },		 
		 -- w1-1
		 {
			name = "stg811",
			title = "w1-1�F�O���X�q��(�n�`���A�b�v)",
		 },
		 -- �����e�X�g�}�b�v
		 {
			name = "stg902",
			title = "�����e�X�g�}�b�v",
		 },
		 -- ����SV�e�X�g�}�b�v
		 {
			name = "w0a90",
			title = "����SV�e�X�g�}�b�v",
		 },

		 -- �I�u�W�F�N�g�e�X�g�p
		 {
		 
		 	name = "stg901",
		 	title = "�I�u�W�F�N�g�e�X�g�}�b�v",
		 },
		 -- w0-2
		 {
			name = "w0a02",
			title = "w0a02�F�I�u�W�F�N�g�e�X�g�}�b�v(w0a02)",
		 },
		 -- Multi�I�u�W�F�N�g�e�X�g�p
		 {
		 
		 	name = "stg905",
		 	title = "Multi�I�u�W�F�N�g�e�X�g�}�b�v",
		 },
		 -- �O���X�q���@�e�X�g
		 {
		 	name = "stg813",
		 	title = "�O���X�q���@�e�X�g",
		 },
	  },
   },

}
