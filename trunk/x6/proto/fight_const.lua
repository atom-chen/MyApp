---------------------------------------------------------
--ս����غ궨��
---------------------------------------------------------

---ս������
mFIGHT_Id 			= 	"Id"			--սʿID
mFIGHT_Grade		= 	"Grade"			--սʿ�ȼ�
mFIGHT_Ap			=	"Ap"         --����	
mFIGHT_Dp			=	"Dp"         --����
mFIGHT_Hp			=	"Hp"         --����	
mFIGHT_HpMax		=	"HpMax"	  --�������
mFIGHT_Speed		=	"Speed"      --�ж��ٶ�	
mFIGHT_HitRate		=	"HitRate"    --����	
mFIGHT_Dodge		=	"Dodge"      --���
mFIGHT_Dizzy        =	"Dizzy"         --ѣ��          ��ֱ�
mFIGHT_Double		=	"Double"	    --��������      ��ֱ� 
mFIGHT_ReDizzy		=	"ReDizzy"	    --ѣ�ο���      ��ֱ�
mFIGHT_ReDouble		=	"ReDouble"	    --��������      ��ֱ�
	
mFIGHT_Str			=	"Str"			--����
mFIGHT_Con			=	"Con"			--����
mFIGHT_Sta			=	"Sta"			--����
mFIGHT_Dex			=	"Dex"			--����
	
mFIGHT_Fist			=	"Fist"         --ȭ�ž�ͨ	
mFIGHT_Sword		=	"Sword"        --������ͨ
mFIGHT_Qiangbang	=	"Qiangbang"    --ǹ����ͨ
	
mFIGHT_ReFist		=	"ReFist"       --ȭ�ž���	
mFIGHT_ReSword		=	"ReSword"      --��������
mFIGHT_ReQiangbang	=	"ReQiangbang"  --ǹ������
	
mFIGHT_ReDpRate		=	"ReDpRate"		--�Ʒ���    ��ֱ�
mFIGHT_ReHurt		=	"ReHurt"		--��������  ��ֱ�
mFIGHT_PvpApRate	=	"PvpApRate"	--PVP���ӹ�����ֱ�
mFIGHT_PvpDpRate	=	"PvpDpRate"	--pvp���ӷ�����ֱ�

mFIGHT_HitOk            =   "HitOk"         --�ض�����
mFIGHT_FanjiOk			=	"FanjiOk"		--�ض�����
mFIGHT_DefendHit        =   "DefendHit"     --���з���



mSK_PHY   		= 10000001      --��ͨ����
mNormal_Martial = 500000        --ͨ����ѧ
mPhy_Martial    = 10000000      --��ͨ������ѧ

mFIGHT_Weapon_QuanJiao          =   1               --ȭ��
mFIGHT_Weapon_QiangBang         =   2               --ǹ��
mFIGHT_Weapon_DaoJian           =   3               --����

mFIGHT_BaseAp			= 	"Ap"			--��������
mFIGHT_BaseDp			= 	"Dp"			--��������

mFIGHT_RayAp 			= 	"RayAp"			--���һ��
mFIGHT_AttStatusInfo 	= 	"AttStatusInfo" 	--���Ŀ��״̬����Ϣ
mFIGHT_SelfStatusInfo 	= 	"SelfStatusInfo" 	--���Ŀ��״̬����Ϣ
mFIGHT_AbsHurt 			= 	"AbsHurt" 		--�����˺�

mFIGHT_Coeffic 			= 	"Coeffic" 		--����ϵ��
mFIGHT_LianJiTimes		= 	"lianjitime"	--��������

--ս��������
mFTeam_Enemy          = 1	--����
mFTeam_CDPlayer       = 2	--ս�ѣ����ٻ��ޣ�
mFTeam_CDSummon       = 3	--ս���ٻ���
mFTeam_Self           = 4	--�Լ�
mFTeam_Comrade        = 5	--�������Լ�
mFTeam_Team           = 6	--����ȫ��
mFTeam_Marry          = 7	--����
mFTeam_Brother		  = 8	--�����еĽ�ݺ���
mFTeam_EnemySummon	  = 9	--�з��ٻ���
mFTeam_EnemyPlayer	  = 10  --�з����

mFIHGT_BuffFuncTypeTbl = {
    [1] = mFIGHT_Hp,
    [2] = mFIGHT_Ap,
    [3] = mFIGHT_Dp,
    [4] = mFIGHT_Speed,
}

--ս���еļ�������״̬
mFST_DIE        = 68 --����
mFST_CONFU      = 37 --����
mFST_SEAL       = 38 --��ӡ
mFST_WAIT       = 40 --����
mFST_DRUNK      = 46 --���
mFST_SLEEP      = 36 --��˯
mFST_LEAVE      = 50 --�뿪ս��
mFST_NOADDHP    = 43 --�޷�������Ѫ
mFST_NOADDMP    = 44 --�޷����䷨��
mFST_POISION    = 106--�ж�

--�˺����� 
mATTACK = 
{
	MIT = 1,    --�����˺�
	FJ  = 2,    --�����˺�
	EXT = 3,    --�����˺�
}

--ս��״̬
FIGHT_STATUS_NORMAL 	= 100	--��ʽ����
FIGHT_STATUS_EFFECT 	= 1000	--��ʽЧ��
FIGHT_STATUS_NUQI 		= 1	    --ŭ��
FIGHT_STATUS_TIRED 		= 2	    --ƣ��
FIGHT_STATUS_JIANSHOU   = 3	    --����
FIGHT_STATUS_SUNDER		= 4	    --�Ƽ�
FIGHT_STATUS_JISU		= 5	    --����
FIGHT_STATUS_CHIHUAN    = 6	    --�ٻ�
FIGHT_STATUS_DIZZY      = 7	    --����ѣ�Σ�

function StatusName(StatusId)
	local Names = {
		[FIGHT_STATUS_EFFECT]			=	"��ʽЧ��",
		[FIGHT_STATUS_NORMAL]			=	"��ʽ����",
		[mFST_DIE]						=	"����",
        [FIGHT_STATUS_NUQI]             =   "ŭ��",
        [FIGHT_STATUS_TIRED]            =   "ƣ��",
        [FIGHT_STATUS_JIANSHOU]         =   "����",
        [FIGHT_STATUS_SUNDER]           =   "�Ƽ�",
        [FIGHT_STATUS_JISU]             =   "����",
        [FIGHT_STATUS_CHIHUAN]          =   "�ٻ�",
        [FIGHT_STATUS_DIZZY]            =   "����",
	}
	return Names[StatusId] or "NONAME"
end  

FIGHT_POS_TYPE_01 = 1  --��3��
FIGHT_POS_TYPE_02 = 2  --��3��
FIGHT_POS_TYPE_03 = 3  --ȫ��

mFIGHT_Step         = "Step"
mFIGHT_NpcStep 		= "NpcStep"						--ս��NPC�Ľ׼�������������ʾ
mFIGHT_BuffTbl 		= "NpcBuffTbl"					--ս��NPC����BUFF��


--ս���л���Ѫ����,����S2c_hpmp_effectЭ��
HPMP_RECOVER_HP = 1
HPMP_RECOVER_MP = 2
HPMP_RECOVER_HP_MP = 3


--ս����Ϣȷ��ʱ��
FIGHT_MSG_BOUT_RESET 		= "bout_reset"		--#ÿ�غ����ý׶�
FIGHT_MSG_BOUT_LASTING 		= "bout_lasting"	--#ÿ�غ�ά�ֽ׶�
FIGHT_MSG_ACTION_PRE 		= "action_pre"		--#�ж�Ԥ���׶�
FIGHT_MSG_CMD_DO 			= "cmd_do"			--#ָ��ִ�н׶�
FIGHT_MSG_CMD_DO_COM 		= "cmd_do_com"		--#���ϻ�ʱ
FIGHT_MSG_CMD_DO_HIT 		= "cmd_do_hit"		--#������ʱ
FIGHT_MSG_CMD_DO_NOT_HIT	= "cmd_do_nohit"	--# û����
FIGHT_MSG_CMD_DO_DOUBLE 	= "cmd_do_double"	--#������ʱ
FIGHT_MSG_CMD_DO_DEADLY 	= "cmd_do_deadly"	--#����ɱʱ
FIGHT_MSG_CMD_DO_REHIT 		= "cmd_do_rehit"	--#������ʱ
FIGHT_MSG_CMD_DO_LIANJI 	= "cmd_do_lianji"	--#������ʱ
FIGHT_MSG_CMD_DO_CAIZHAO 	= "cmd_do_caizhao"	--#������ʱ
FIGHT_MSG_CMD_DO_HURT 		= "cmd_do_hurt"		--#���ܴ�ʱ
FIGHT_MSG_CMD_DO_DEFENCE 	= "cmd_do_defence"	--#������ʱ
FIGHT_MSG_CMD_DO_YUANHU 	= "cmd_do_yuanhu"	--#��Ԯ��ʱ
FIGHT_MSG_BOUT_END 			= "bout_end"		--#�غϽ����׶�

--ս��Ч����Ч��
FIGHT_EFF_STEP_BOUT			=	"step_bout"		--#���׶���Ч
FIGHT_EFF_SELF_BOUT 		=	"self_bout"		--#���غ���Ч
FIGHT_EFF_FULL_BOUT 		=	"full_bout"		--#ȫ�غ���Ч
FIGHT_EFF_NEXT_BOUT 		=	"next_bout"		--#NEXT N�غ���Ч
FIGHT_EFF_AT_BOUT 			=	"at_bout"		--#ָ���غ���Ч

POSION_TYPE_01              =   1               --ǰ
POSION_TYPE_02              =   2               --��
POSION_TYPE_03              =   3               --��

PosTypeTbl = {
    [1] = POSION_TYPE_01,[2] = POSION_TYPE_01,[3] = POSION_TYPE_01,
    [4] = POSION_TYPE_02,[5] = POSION_TYPE_02,[6] = POSION_TYPE_02,
    [7] = POSION_TYPE_03,[8] = POSION_TYPE_03,[9] = POSION_TYPE_03,
}

SKILL_TYPE_00               =   0               --��ͨ����
SKILL_TYPE_01               =   1               --��ѧ����
SKILL_TYPE_02               =   2               --��ѧɱ��
SKILL_TYPE_03               =   3               --��ѧ����
SKILL_TYPE_04               =   4               --��ѧ����

------��ѧѡ����սʿ����
SKILL_CHOOSE_WAR_TYPE_00    =   0               --��ͨ
SKILL_CHOOSE_WAR_TYPE_01    =   1               --�������
SKILL_CHOOSE_WAR_TYPE_02    =   2               --�������
SKILL_CHOOSE_WAR_TYPE_03    =   3               --�������
SKILL_CHOOSE_WAR_TYPE_04    =   4               --�������
SKILL_CHOOSE_WAR_TYPE_05    =   5               --�ٶ����
SKILL_CHOOSE_WAR_TYPE_06    =   6               --�ٶ����
SKILL_CHOOSE_WAR_TYPE_07    =   7               --�������
SKILL_CHOOSE_WAR_TYPE_08    =   8               --�������
SKILL_CHOOSE_WAR_TYPE_09    =   9               --��2������
SKILL_CHOOSE_WAR_TYPE_10    =   10              --��3������
SKILL_CHOOSE_WAR_TYPE_11    =   11              --��2������
SKILL_CHOOSE_WAR_TYPE_12    =   12              --��3������
SKILL_CHOOSE_WAR_TYPE_13    =   13              --��1������
SKILL_CHOOSE_WAR_TYPE_14    =   14              --��1������


--�˺�����
HURT_TYPE_00 	= 0 	--��ͨ�˺�
HURT_TYPE_01	= 1		--�����˺�
HURT_TYPE_02	= 2		--����+�Ʒ��˺�
HURT_TYPE_03	= 3		--�����˺�
HURT_TYPE_04 	= 4		--�Ʒ��˺�
HURT_TYPE_05	= 5		--�����˺�

--ս��ָ��
WAR_CMD_DEFENCE = 1 -------����
WAR_CMD_ESCAPE = 2  -------����
WAR_CMD_ATTACK = 3 -------������
WAR_CMD_PROTECT = 4 ------����
WAR_CMD_CATCH = 5 -------��׽
WAR_CMD_SUMMON = 6 ------�ٻ�
WAR_CMD_DISMISS = 7 ------�ٻ�
WAR_USE_ITEM = 8  -------ʹ����Ʒ
WAR_MAGIC_ATTACK = 9 ----��������
WAR_CMD_MARTIAL = 10 ----�л���ѧ
WAR_CMD_EQUIP = 11	 ----�л�����
WAR_CMD_ENYUAN = 12  ----��Թbuff
WAR_CMD_BOUTTIME = 13   ----���޾ƣ��޸Ļغ�ʱ�䣩
WAR_CMD_NOESCAPE = 14   ----��������

--սʿ����
WARRIOR_TYPE_USER = 1 --���
WARRIOR_TYPE_NPC = 2 --NPC
WARRIOR_TYPE_PARTNER = 3 --����
--ս����Ӫ
WAR_CAMP_ATTACKER = 1                       --������
WAR_CAMP_TARGET = 2                         --��������
WAR_CAMP_ENEMY = 3                          --�з�
WAR_CAMP_COMRADE = 4                        --����
--ս������
WAR_TYPE_PVE = 0                            --pveս��
WAR_TYPE_PVP = 1                            --pvpս��
--��
LINEUP_NORMAL = 1000                        --����id

-----��������
WAR_DIE_RUSH_OUT = 1    --------�ɳ���Ļ
WAR_DIE_DEAD_BODY = 2   -------  ������ʬ������ս����
WAR_DIE_DISAPPEAR = 3   --------�ɳ���Ļ

--ս����Ч
FIGHT_ACTION_01 = 1		--����
FIGHT_ACTION_02 = 2		--�ֿ�

MAX_WARRIOR = 6 --ս����һ��������Ա��
MAX_LINEUP_WARRIOR = 9  --������վ���������




mFIGHT_WorldBoss = "worldboss"                --����boss

