mMAX_NUMBER = 2000000000 --protobuff int32 �����
mSTRINGTYPE = type("string")	--�ַ�������
mNUMBERTYPE = type(1)			--��������
mTABLETYPE =  type({})			--��������
--��������
ITEM_TYPE_NORMAL = 0		--����
ITEM_TYPE_EQUIP = 1			--װ��
ITEM_TYPE_MARTIAL = 2		--�书
ITEM_TYPE_PARTNERCHIP = 3	--ͬ����Ƭ
ITEM_TYPE_EQUIPCHIP = 4		--װ����Ƭ
ITEM_TYPE_MARTIALCHIP = 5	--�书��Ƭ

--�������������
ITEM_NORMAL_NEILI = 1		--��������
ITEM_NORMAL_MIJI = 2		--��ѧ�ؼ�ϻ
ITEM_NORMAL_GIFT = 3		--����
ITEM_NORMAL_VIP = 4			--Vip���
ITEM_NORMAL_BOOK = 5		--���
ITEM_NORMAL_ORE = 6			--��ʯ
ITEM_NORMAL_XING = 7		--���ǵ�
ITEM_NORMAL_OTHER = 100		--����


---װ��(������ѧ)��λ
EP_WEAPON		=   1		--����
EP_ARMOR		=   2		--�·�
EP_ACC			=   3		--��Ʒ
EP_MARTIAL_1  	=	100		--�书��λ1
EP_MARTIAL_2  	=	101		--�书��λ2
EP_MARTIAL_3  	=	102		--�书��λ3
--���߰�
mUNBIND = 0	--δ��
mBINDED = 1	--�Ѱ�
--�������ͱ��
mNORMAL_FRAME = 1 		--������
mEQUIP_FRAME = 2  		--װ����
mMARTIAL_FRAME = 3		--��ѧ��
mPARTNERCHIP_FRAME = 4	--������Ƭ
mEQUIPCHIP_FRAME = 5	--װ����Ƭ
mMARTIALCHIP_FRAME = 6	--��ѧ��Ƭ
mTALENT_FRAME = 7		--�츳��ѧ��

--�����
QUESTION_ANSWER_YES		= 1		--ͬ��
QUESTION_ANSWER_NO		= 2		--�ܾ�
QUESTION_ANSWER_CANCEL  = 3		--ȡ��

--����Ի�������
QUESTION_TYPE_NORMAL    = 100 		--��ͨ������

--������ǩ
REWARD_TAG_CASH = "cash"				--����
REWARD_TAG_EXP = "exp"					--��ɫ����
REWARD_TAG_EXP_PARTNER = "exp_partner"	--���;���
REWARD_TAG_ITEM = "item"				--����
REWARD_TAG_PARTNER = "partner"			--����
REWARD_TAG_VIGOR = "vigor"				--����
REWARD_TAG_PHYSICAL = "physical"		--����
REWARD_TAG_YUANBAO = "yuanbao"			--Ԫ��
REWARD_TAG_ZHENQI = "zhenqi"			--����
REWARD_TAG_SHENXING = "shenxing"        --����

------------------------partner------------------------
MAX_PARTNER_POS  = 9 --�������ͬ���λ������

--ͬ������
PARTNER_TYPE_ATK = 1	--������
PARTNER_TYPE_DEF = 2	--������
PARTNER_TYPE_BAL = 3	--������
PARTNER_TYPE_NEI = 4	--����������

---------------------ͬ��װ��λ---------------------
EP_WEAPON		= 1		--����
EP_MARTIAL		= 100	--�书

---------------------ͬ������----------------------
TALENT_NULL_CONDITION = 2000		--����������
TALENT_MARTIALNO_CONDITION = 2001	--�ض���ѧ
TALENT_EQUIPNO_CONDITION = 2002		--�ض�װ��
TALENT_PARTNERNO_CONDITION = 2003	--�ض�ͬ��һ������

--����Ч�����
TALENT_ADDAP_EFFECT				= 3001	--��������������ֱ�
TALENT_ADDDP_EFFECT				= 3002	--������������ֱ�
TALENT_ADDHP_EFFECT				= 3003	--������������ֱ�
TALENT_ADDSPEED_EFFECT			= 3004	--�ٶ���������ֱ�
TALENT_ADDHITRATE_EFFECT		= 3005	--������������ֱ�
TALENT_ADDDODGE_EFFECT			= 3006	--������������ֱ�
TALENT_ADDREHURT_EFFECT			= 3007	--��������������������ͨ�����˺�������ֱ�
TALENT_ADDREQIANGBANG_EFFECT	= 3008	--ǹ������������ǹ����ѧ���˳̶ȣ�����ֱ�
TALENT_ADDRESWORD_EFFECT		= 3009	--��������������������ѧ���˳̶ȣ�����ֱ�
TALENT_ADDREFIST_EFFECT			= 3010	--ȭ�ž���������ȭ����ѧ���˳̶ȣ�����ֱ�
TALENT_ADDQIANGBANG_EFFECT		= 3011	--ǹ����ͨ������ǹ����ѧ�˺��ӳɣ�����ֱ�
TALENT_ADDSWORD_EFFECT			= 3012	--������ͨ������������ѧ�˺��ӳɣ�����ֱ�
TALENT_ADDFIST_EFFECT			= 3013	--ȭ�ž�ͨ������ȭ����ѧ�˺��ӳɣ�����ֱ�
TALENT_ADDDOUBLE_EFFECT			= 3014  --������������ֱ�
----------------------------����ϵͳ-------------------------
--��ҷ�����Ϣ�����
WORLD_CHANNEL 		= 	1		--����
SLOGAN_CHANNEL		= 	2		--�㲥
PRIVATE_CHANNEL 	= 	3		--˽��

--ϵͳ������Ϣ�����
SYS_ROLL 						= 1			--ϵͳ�㲥����������ƣ�
SYS_PROMT_BOX 			= 2			--��ʾ��Ϣ����������,����(UserObj:Notify(msg))��
SYS_DIALOG 					= 3			--��Ϣ��,��Ҫȷ����ʧ
SYS_SYSTEM					=	4			--ϵͳ��Ϣ
SYS_NOTICE 					= 5			--������Ϣ

--��������
TASK_TYPE_SUMLOGIN = 1				--������¼��������
TASK_TYPE_FUBENCHAPTER = 2			--ͨ�ظ����½�
TASK_TYPE_FUBENENEMY = 3			--ͨ�ظ����ؿ�
TASK_TYPE_UPGRADE = 4				--��������
TASK_TYPE_CHONGZHI = 5				--1���ʳ�ֵ 2�ۼƳ�ֵ 3�ۼ�����
TASK_TYPE_CONSUME = 6				--���������� �����ַ�����������ṩ��,����
TASK_TYPE_SHOP = 7					--�̳ǹ������
TASK_TYPE_FUBENNUM = 8				--���ظ�������
TASK_TYPE_SUMBIWU = 9				--�ۼƱ��������ʤ������
TASK_TYPE_DUOBAO = 10				--�ᱦ
TASK_TYPE_JUXIANG = 11				--��Եׯ
TASK_TYPE_EQUIPSTRENG = 12 			--ǿ��װ��
TASK_TYPE_EQUIPXlPROP = 13 			--����װ��
TASK_TYPE_UPGRADEMARTIAL = 14		--�����书�ȼ�
TASK_TYPE_UPGRADEMARTIALREALM = 15 	--�����书����
TASK_TYPE_TUNSHIZHENQI = 16 		--��������
TASK_TYPE_UPGRADEZHENQI = 17		--��������
TASK_TYPE_JIUZHUANORTONGXUAN = 18 	--��תͨ��
TASK_TYPE_TUNYUAN = 19				--������Ԫ

--�ճ���������
DAILYTASK_TYPE_EQUIPSTRENG = 1 			--a)	ǿ����
DAILYTASK_TYPE_EQUIPXlPROP = 2 			--b)	������
DAILYTASK_TYPE_FUBENENEMY = 3			--c)	����������
DAILYTASK_TYPE_BIWU = 4					--d)	������
DAILYTASK_TYPE_DUOBAO = 5 				--e)	�ᱦ��
DAILYTASK_TYPE_ZHAOCAI = 6 				--f)	�в���
DAILYTASK_TYPE_JIEJIAO = 7				--g)	�ύ��
DAILYTASK_TYPE_WULIN = 8 				--h)	���ְ���
DAILYTASK_TYPE_ZHENQIUPGRADE = 9		--i)	��ת��������
DAILYTASK_TYPE_CHOUKATIMES = 10			--j)	�鿨�� 1.�鿨����
DAILYTASK_TYPE_CHOUKASTEPPARTNER = 11	--j)	�鿨�� 2.��ȡָ��Ʒ�ʵ����͵����ɴ�
DAILYTASK_TYPE_UPGRADEMARTIAL = 12		--k)	�书������
DAILYTASK_TYPE_GIVEITEM = 13			--l)	������Դ��
DAILYTASK_TYPE_TUNYUAN = 14				--m)	��Ԫ��
DAILYTASK_TYPE_UPSTAR = 15				--n)	������

--�ʼ�����
MAIL_TYPE_SYS = 1			--ϵͳ�ʼ�
MAIL_TYPE_USER = 2		--�����ʼ�
MAIL_TYPE_FIGHT = 3		--ս���ʼ�

--�ʼ�������
MAIL_TYPE_FIGHT_BIWU = 1		--ս��:����
MAIL_TYPE_FIGHT_DUOBAO = 2		--ս��:�ᱦ
MAIL_TYPE_FIGHT_WULIN = 3		--ս��:���ְ�
MAIL_TYPE_FIGHT_ENEMY = 4		--ս��:����pk
MAIL_TYPE_FIGHT_QIECUO = 5      --ս��:�д�

--����¼�����
RANDOMEV_CAIQUAN_TYPE 	= 1		--��ȭ����
RANDOMEV_YAOQIAN_TYPE 	= 2		--ҡǮ������
RANDOMEV_BAIFA_TYPE		= 3		--�ٷ���������
RANDOMEV_ZHIDIAN_TYPE 	= 4		--����ָ������
RANDOMEV_LAOREN_TYPE 	= 5		--������������
RANDOMEV_DAXIA_TYPE 	= 6		--������ս����
RANDOMEV_QIECUO_TYPE 	= 7		--����д�����

--����ϵͳ��Ϣ����
SYSTIPS_TYPE_ITEM = 1		--����ض�Ʒ�ʵ����͡��书��װ��
SYSTIPS_TYPE_BOSS = 2		--boss���ȡ��ָ����Χ�ڵ�����
SYSTIPS_TYPE_RANKLIST = 3	--���а���ȡ��ָ����Χ������
SYSTIPS_TYPE_WULIN = 4		--���ְ���ȡ��ָ����Χ������
SYSTIPS_TYPE_NAME = 5		--���ʹ�ø������߱������

PARTYBASE_PHY_TYPE = 1      --��Ӫ���������
PARTYBASE_VIG_TYPE = 2      --��Ӫ���������

MERGE_TYPE_EQUIP = 1        --�ϳ�װ������
MERGE_TYPE_MARTIAL = 2      --�ϳ���ѧ����

GIFT_CODE_POS1 = 8
GIFT_CODE_POS2 = 10
GIFT_CODE_POS3 = 12

--LOG_DAOJU               = 1
--LOG_EQUIP               = 2
--LOG_MARTIAL             = 3
--LOG_PARTNER             = 4
--LOG_PARTNERCHIP         = 5  
--LOG_EQUIPCHIP           = 6
--LOG_MARTIALCHIP         = 7  
--LOG_ZHENQI              = 8
--LOG_YUANBAO             = 9
--LOG_CASH                = 10
--LOG_EXP                 = 11
--LOG_GRADE               = 12
--LOG_FUBEN               = 13 

LOG_ITEM_TBL = {
    [mNORMAL_FRAME] = "daoju_logchange",
    [mEQUIP_FRAME] = "equip_logchange",
    [mMARTIAL_FRAME] = "martial_logchange",
    [mPARTNERCHIP_FRAME] = "partnerchip_logchange",
    [mEQUIPCHIP_FRAME] = "equipchip_logchange",
    [mMARTIALCHIP_FRAME] = "martialchip_logchange",
}