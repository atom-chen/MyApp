--__auto_local__start--
local string=string
local pairs=pairs
--__auto_local__end--


--CHAR��ر���
BaseCharVar = 
{
	"Id",				--��Ϸ�ж����Ψһ��ʶ
	"Vfd",				--�����ʶ	
}

--CHAR��ر���
CharVar = {
	"Vfd",				--�����ʶ
	"Name",				-- ��Ϸ�е�����
	"NickName",			-- ����
	"Grade",			-- �ȼ�
	"Sex",				--�Ա�
	
    "FightObj",			--ս������	
	"LastFight",		--��һ��ս������ID   
	"AiTbl",            --ս��Ai	 
}
--�����ر���
UserVar = {
    "Acct",
	"Uid",
	"URS",
	"Ip",
	"Name",
	"WhereFrom",
	"CorpId",
	
	"Grade",
	"Exp",
	"ShowExp",
	"MaxExp",
	"Wizard",
	"Photo",
	"Sex",
	"Family",
	
	"Birthday",
	"LoginTime",		--��¼ʱ��
	"LogoutTime",		--����ʵ��
	"SaveTime",
	"SumLoginDay",		--�ۼƵ�¼����
	"SumLoginBonusDay",	--�ۼƵ�¼��������
	
	"Cash",				--����
	"TotalYuanBao",		--�ܳ�ֵԪ��
	
	"Physical",   	--����	
	"PhysicalMax",  --�������	
	"Vigor",       	--����	
	"VigorMax",     --�����
	"ShenXing",       --����	
	"ShenXingMax",     --�������
	
	"Vip",			--Vip�ȼ� 
	"VipExp",       --Vip����
	
	"Partners",
	
	"MaxFightPartnerCnt",		--����սͬ����
	"MaxPartnerCnt",			--���ӵ��ͬ����
	"Lineup",					--����
	
	"MaxZhenqiCnt",		--���ӵ��������
	"Zhenqis",			--���������б�
	"ZhenqiProgress",	--��תͨ������
	
	"OpenMartial",		--������ѧMap
	"BiWuJiFen",	--�������
	"ChatTime",			--˵��ʱ��
	"Friend",		--����
	
	"Score",		--�ۺ�ʵ������
	
	"FubenScore",	--������������
	
	"IsTaskReward",			--�Ƿ�����������ȡ
	"IsDailyTaskReward",	--�Ƿ����ճ���������ȡ
	"DailyTaskTimes",		--�ճ��������
	"DailyTaskyday",		--�ճ������������ʱ��(yday)
	
	"VigorTime",	--����ʱ��
	"PhysicalTime",	--����ʱ��
	
	"IsGuide",		--�Ƿ�������� 1����
	"IsGuideAnim",	--�Ƿ񲥷���Ч���� 1�Ѳ���
	
	"Hongmeng",		--���ɾ��ֶ� 1���� 2��ȸ 3�׻� 4����
	
	"SigninDay",	--������¼�ڼ���
	"SigninTime",	--������¼ʱ��
}
--ͬ����ر���
PartnerVar = {
	"SId", 			--��������ʶ
	"Name",			--����
	"PartnerNo", 	--���ݱ�No
	"OwnerId",		--����ID
	"Birthday",		--��������
	"Shape",		--����
	"Sex",			--�Ա�
	"Photo",		--ͷ��
	"Step",			--��λ
	"Type",			--����
	
	"FightObj",
	
	"War",			--��ս(����λ��)
	
	"Grade",		--�ȼ�
	"Exp",			--ʵ���ܾ���
	"ShowExp",		--��ʾ����
	"MaxExp",		--��ʾ�����
	
	"PartnerPos",	--ͬ��λ��
	"EquipList",	--װ��(�����书)
	
	---ս������
	"Ap",         --����	
	"Dp",         --����	
	"ApMin",      --��С����	
	"DpMin",      --��С����	
	"Hp",         --����	
	"Mp",         --����	
	"HpMin",	  --��С����
	"MpMin",	  --��С����
	"HpMax",	  --�������
	"MpMax",	  --�������
	"Speed",      --�ж��ٶ�	
	"HitRate",    --����	
	"Dodge",      --���
	"Double",	  --��������
	"ReDizzy",	  --ѣ�ο���
	"ReDouble",	  --��������
	
	"NuLineupAp",		--���������Թ���
	"NuLineupDp",		--���������Է���
	"NuLineupHpMax",--��������������
	"NuLineupSpeed",--�����������ٶ�
	
	"Str",			--����
	"Con",			--����
	"Sta",			--����
	"Dex",			--����
	
	"Fist",         --ȭ�ž�ͨ	
	"Sword",        --������ͨ
	"Qiangbang",    --ǹ����ͨ
	
	"ReFist",       --ȭ�ž���	
	"ReSword",      --��������
	"ReQiangbang",  --ǹ������
	
	"ReDpRate",		--�Ʒ���
	"ReHurt",		--��������
	"PvpApRate",	--PVP���ӹ����ٷֱ�
	"PvpDpRate",	--pvp���ӷ����ٷֱ�
	
	"Neili",		--����
	"Talent",		--����
	"TalentAttr",	--�����ӳ�����
	
	"Star",			--�Ǽ�
	"StarValue", --���ǵ�
	"ZhenqiList",	--�����б�
	"XiuLian",		--����:1Ϊ����
	"SetCardID",	--����ƪ��
	
	"Score",		--�ۺ�����
}

--npc��صı���
NpcVar = {
	"Name",			--����
	"NpcNo", 	    --���ݱ�No	
	"Birthday",		--��������
	"Shape",		--����
	"Sex",			--�Ա�
	"Photo",		--ͷ��
	"Step",			--��λ
	"Type",			--����
	
	"FightObj",
	"MartialAdd",   --�����к϶ȼӳ�ֵ��        ��ֱ�
	
	"Grade",		--�ȼ�
	
	
	---ս������
	"Ap",         --����	
	"Dp",         --����	
	"ApMin",      --��С����	
	"DpMin",      --��С����	
	"Hp",         --����	
	"Mp",         --����	
	"HpMin",	  --��С����
	"MpMin",	  --��С����
	"HpMax",	  --�������
	"MpMax",	  --�������
	"Speed",      --�ж��ٶ�	
	"HitRate",    --����	
	"Dodge",      --���
	"Double",	  --��������
	"ReDizzy",	  --ѣ�ο���
	"ReDouble",	  --��������
	
	"Str",			--����
	"Con",			--����
	"Sta",			--����
	"Dex",			--����
	
	"Fist",         --ȭ�ž�ͨ	
	"Sword",        --������ͨ
	"Qiangbang",    --ǹ����ͨ
	
	"ReFist",       --ȭ�ž���	
	"ReSword",      --��������
	"ReQiangbang",  --ǹ������
	
	"ReDpRate",		--�Ʒ���
	"ReHurt",		--��������
	"PvpApRate",	--PVP���ӹ����ٷֱ�
	"PvpDpRate",	--pvp���ӷ����ٷֱ�
	
	"Neili",		--����
	
	"AtkSound",     --������Ч
	"DeadSound",    --������Ч  	
}

ItemVar = {
	"Amount",
	"IsBind",
	"ItemNo",
	"SId",
	"Birthday",
	"OwnerId",
	"FrameNo",
	"Grid",
	"EquipPartner",
	"EquipPos",
	
	"StrengGrade",	--ǿ���ȼ�
	"PropTbl",		--���Ա�
	"Step",			--װ��������λ
	
	"MartialTable",	--��ѧ��
	
	"Score",		--����
}

ZhenqiVar = {
	"ZhenqiNo",
	"OwnerId",
	
	"Grade",		--�ȼ�
	"Exp",			--ʵ���ܾ���
	"ShowExp",		--��ʾ����
	"MaxExp",		--��ʾ�����
	
	"ZhenqiPos",	--����λ��
	
	"EquipPartner",	--װ������
	"EquipPos",		--װ��λ��
}

--�������б���
AllVar = {}

VarTblMap = {
	["BaseCharVar"] = BaseCharVar,
	["CharVar"] = CharVar,
	["UserVar"] = UserVar,
	["PartnerVar"] = PartnerVar,
	["NpcVar"] = NpcVar,
	["ItemVar"] = ItemVar,
	["ZhenqiVar"] = ZhenqiVar,
	["AllVar"] = AllVar,
}

-- auto bind Get/Set/Add/Sub functions to class
function BindFunc(Class, VarList, SaveVarList)
	local function ShowBind (Class, VarName, ...)
		local ctype = Class.__ClassType
		if ctype  then
--			_DEBUG ("bind ----------:", ctype, VarName, ...)
		end
	end
	SaveVarList = SaveVarList or AllSaveVar
	local Parent = Super(Class) or {}
	for VarKey, VarName in pairs(VarList) do
--		_DEBUG("var_name:BindFunc",VarKey,VarName)
		local Getor = "Get"..VarName
		local Setor = "Set"..VarName
		local Addor = "Add"..VarName
		local Subor = "Sub"..VarName
		local MyGetor = rawget(Class, Getor)
		local ParentGetor = rawget(Parent, Getor)
		if MyGetor == nil or MyGetor == ParentGetor then
			if table.member_key(SaveVarList, VarName)  then
				Class[Getor] = function (self)
					return self:GetSave(VarName)
				end
				ShowBind (Class, VarName, " getsave", MyGetor, Class[Getor])
			else
				Class[Getor] = function (self)
					return self:GetTmp(VarName)
				end
				ShowBind (Class, VarName, " gettmp")
			end
		end
		
		local MySetor = rawget(Class, Setor)
		local ParentSetor = rawget(Parent, Setor)
		if MySetor == nil or MySetor == ParentSetor then
			if table.member_key(SaveVarList, VarName)  then
				Class[Setor] = function (self, Value)
					return self:SetSave(VarName, Value)
				end
				ShowBind (Class, VarName, " setsave")
			else
				Class[Setor] = function (self, Value)
					return self:SetTmp(VarName, Value)
				end
				ShowBind (Class, VarName, " settmp")
			end
		end

		local MyAddor = rawget(Class, Addor)
		local ParentAddor = rawget(Parent, Addor)
		if MyAddor == nil or ParentAddor == MyAddor then
			Class[Addor] = function(self, Value)
				local Pre = self[Getor](self) or 0
				return self[Setor](self, Pre+Value)
			end
		end

		local MySubor = rawget(Class, Subor)
		local ParentSubor = rawget(Parent, Subor)
		if MySubor == nil or MySubor == ParentSubor then
			Class[Subor] = function(self, Value)
				local Pre = self[Getor](self) or 0
				return self[Setor](self, Pre-Value)
			end
		end
	end
end

--�����ɵ����ݲ��뵽 "autogen-bein" �� "autogen-end" ֮��
function Save (File, Data)
	local function Repl (Begin, End) 
		return Begin..Data..End
	end

	local path = string.match(File,".+%.lua")
	if not path then return end 
	
	local Content 
	local rf = io.open (File, "r")
	if rf then -- File exists
		Content = rf:read ("*a")
		rf:close ()
	end

	if Content then
		-- see lua reference about string.gsub 
		--If repl is a string, then its value is used for replacement. 
		-- The character % works as an escape character.
		-- the statement below will discard the "%"
		--Data, sub = string.gsub (Content, "(%-%-autogen%-begin).-(%-%-autogen%-end)", "%1"..Data.."%2")

		local sub
		Data, sub = string.gsub (Content, "(%-%-autogen%-begin).-(%-%-autogen%-end)", Repl)
		--assert (sub == 1, "must insert into the file:"..File)
--		if sub == 0 then
--			Log ("Warning:", File.." has exists and has not autogen-region. just skip it.")
--		end
	else -- File does not exist
		Data = "--autogen-begin"..Data.."--autogen-end"
	end
	
	local Fd  = assert(io.open (File, "w"))
	Fd:write (Data)
	Fd:flush ()
	Fd:close ()
	if not Content then 
		UTIL.ToUtf8File(File)
	end 
end

PreVarMd5Str = {}
__SAVE_NAME = "varmd5str"
function CheckVarSame(VarKey, DbKey)
	if not VarKey then return false end
	local tbl = VarTblMap[VarKey]
	local tblstr = UTIL.Serialize(tbl)
	local tblmd5 = xy3crypto.md5(tblstr)
	local ret1 = true
	if not PreVarMd5Str[VarKey] or PreVarMd5Str[VarKey]~=tblmd5 then
		PreVarMd5Str[VarKey] = tblmd5
		ret1 = false
	end
	
	local ret2 = true
	if DbKey then
		tbl = GetSaveVars(DbKey)
		if tbl then
			tblstr = UTIL.Serialize(tbl)
			tblmd5 = xy3crypto.md5(tblstr)
			if not PreVarMd5Str[DbKey] or PreVarMd5Str[DbKey]~=tblmd5 then
				PreVarMd5Str[DbKey] = tblmd5
				ret2 = false
			end
		end
	end
	return ret1 and ret2
end

--�����ļ�������
function BindFuncFile(ClassName, VarList, SaveVarList, FilePath, VarKey, DbKey)
	if CheckVarSame(VarKey, DbKey) then return end
	local VarPatternStr = [[
function %s:Get%s()
	return self.%s.%s
end
function %s:Set%s(%s)
	self.%s.%s = %s
end
	]]
	SaveVarList = SaveVarList or {}
	local VarListStr = ""
	for VarKey, VarName in pairs(VarList) do
		if table.member_key(SaveVarList, VarName) then
			VarListStr = VarListStr..string.format(VarPatternStr, ClassName, VarName, "__data", VarName, ClassName, VarName, VarName, "__data", VarName, VarName).."\n"
		else
			VarListStr = VarListStr..string.format(VarPatternStr, ClassName, VarName, "__tmp", VarName, ClassName, VarName, VarName, "__tmp", VarName, VarName).."\n"
		end
	end
	Save(FilePath, "\n"..VarListStr.."\n")
end

function __init__()
	if IsInternalServer() then
		local _AllVar = {CharVar, UserVar, NpcVar, ItemVar}	
		for _, Tmp in pairs(_AllVar) do
			for _,var in pairs(Tmp) do
				--������Ҫ�򵥵�������ʽ, �����Ķ����޸ġ�
				if not string.match(var, "^[%a_][%w_]*$") then
					error(string.format("%s is not valid var name", var))
				else
					table.insert(AllVar, var)
				end
			end
		end
		
		SAVE.ModuleRestore()
		SAVE.Register("PreVarMd5Str")
		
		--�������ļ�
		BindFuncFile("clsChar", CharVar, nil, "char/char.lua", "CharVar")
		BindFuncFile("clsUser", UserVar, assert(GetSaveVars("user")), "char/user/user.lua", "UserVar", "user")
		BindFuncFile("clsPartner", PartnerVar, assert(GetSaveVars("partner")), "char/partner/partner.lua", "PartnerVar", "partner")
	    BindFuncFile("clsNpc", NpcVar, assert(GetSaveVars("npc")), "char/npc/npc.lua", "NpcVar", "npc")
		BindFuncFile("clsItem", ItemVar, assert(GetSaveVars("item")), "char/item/item.lua", "ItemVar", "item")
		BindFuncFile("clsZhenqi", ZhenqiVar, assert(GetSaveVars("zhenqi")), "module/zhenqi/zhenqi.lua", "ZhenqiVar", "zhenqi")
	end
end
