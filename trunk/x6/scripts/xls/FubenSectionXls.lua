--- 
-- 总篇章内容
-- 该文件为代码自动生成，请不要手动修改
-- @module xls.FubenSectionXls
-- 

module("xls.FubenSectionXls")

--- 
-- @type FubenSectionXls
-- @field	#number	Type	篇章类型	 
-- @field	#string	Name	篇章名称	 
-- @field	#number	IconNo	篇章图标	 
-- @field	#number	FirstChapter	第一章节编号	 
-- @field	#numbers	OpenPartners	开放侠客	notNull
-- @field	#number	SectionNo	篇章编号	 
-- 

--- 
-- FubenSectionXls
-- @field [parent=#xls.FubenSectionXls] #FubenSectionXls FubenSectionXls
-- 

--- 
-- data
-- @field [parent=#xls.FubenSectionXls] #table data SectionNo -> @{FubenSectionXls}表
-- 
data = 
{
	[1] = {
		["Type"] = 1,
		["Name"] = "纷乱江湖",
		["SectionNo"] = 1,
		["FirstChapter"] = 1001,
		["OpenPartners"] = { [1] = 101001, [2] = 101002, [3] = 101003, [4] = 101004, [5] = 101005, [6] = 101006, [7] = 101007, [8] = 101008, [9] = 101009, [10] = 101010, [11] = 101011, [12] = 101012, [13] = 101014, [14] = 101015, [15] = 101016, [16] = 101017, [17] = 101018, [18] = 101019, [19] = 101020, [20] = 101021, [21] = 101022, [22] = 101023, [23] = 101024, [24] = 101025, [25] = 101027, [26] = 101028, [27] = 101035, [28] = 101036, [29] = 101037, [30] = 101038, [31] = 101041, [32] = 101042, [33] = 101048, [34] = 101049, [35] = 101050, [36] = 101013,		},
		["IconNo"] = 1,
	},
	[2] = {
		["Type"] = 1,
		["Name"] = "九阴九阳",
		["SectionNo"] = 2,
		["FirstChapter"] = 1008,
		["OpenPartners"] = { [1] = 102001, [2] = 102002, [3] = 102003, [4] = 102005, [5] = 102006, [6] = 102007, [7] = 102008, [8] = 102009, [9] = 102010, [10] = 102011, [11] = 102012, [12] = 102013, [13] = 102014, [14] = 102015, [15] = 102021, [16] = 102022, [17] = 102023, [18] = 102024, [19] = 102025, [20] = 102026, [21] = 102027, [22] = 102031, [23] = 102032, [24] = 102033, [25] = 102034, [26] = 102035, [27] = 102036, [28] = 102037, [29] = 102038, [30] = 102039, [31] = 102040, [32] = 102042, [33] = 102043, [34] = 102044, [35] = 102041,		},
		["IconNo"] = 2,
	},
	[3] = {
		["Type"] = 1,
		["Name"] = "古墓绝情",
		["SectionNo"] = 3,
		["FirstChapter"] = 1014,
		["OpenPartners"] = { [1] = 103003, [2] = 103004, [3] = 103005, [4] = 103006, [5] = 103007, [6] = 103008, [7] = 103009, [8] = 103010, [9] = 103011, [10] = 103012, [11] = 103013, [12] = 103014, [13] = 103015, [14] = 103016, [15] = 103019, [16] = 103020, [17] = 103021, [18] = 103022, [19] = 103025, [20] = 103027, [21] = 103028, [22] = 103029, [23] = 103030, [24] = 103031, [25] = 103034, [26] = 103035, [27] = 103042, [28] = 103044, [29] = 103045, [30] = 102043, [31] = 102044, [32] = 103002,		},
		["IconNo"] = 3,
	},
	[4] = {
		["Type"] = 1,
		["Name"] = "天下五绝",
		["SectionNo"] = 4,
		["FirstChapter"] = 1019,
		["OpenPartners"] = { [1] = 104001, [2] = 104002, [3] = 104003, [4] = 104004, [5] = 104005, [6] = 104006, [7] = 104007, [8] = 104008, [9] = 104009, [10] = 104010, [11] = 104011, [12] = 104012, [13] = 104013, [14] = 104014, [15] = 104015, [16] = 104016, [17] = 103017, [18] = 103018, [19] = 103036, [20] = 103037, [21] = 103038, [22] = 103043, [23] = 103002, [24] = 103015, [25] = 103021, [26] = 103044, [27] = 102044, [28] = 103006, [29] = 103001, [30] = 103011, [31] = 102044,		},
		["IconNo"] = 4,
	},
	[5] = {
		["Type"] = 1,
		["Name"] = "血战狂沙",
		["SectionNo"] = 5,
		["FirstChapter"] = 1025,
		["OpenPartners"] = { [1] = 105001, [2] = 105002, [3] = 105003, [4] = 105004, [5] = 105005, [6] = 105006, [7] = 105007, [8] = 105008, [9] = 105009, [10] = 105010, [11] = 105011, [12] = 105012, [13] = 105013, [14] = 105014, [15] = 105015, [16] = 105016, [17] = 105017, [18] = 105018, [19] = 105019, [20] = 105020, [21] = 105022, [22] = 105023, [23] = 105024, [24] = 105025, [25] = 105026, [26] = 105027, [27] = 102043, [28] = 103044, [29] = 101046, [30] = 105021,		},
		["IconNo"] = 5,
	},
	[6] = {
		["Type"] = 1,
		["Name"] = "小李飞刀",
		["SectionNo"] = 6,
		["FirstChapter"] = 1032,
		["OpenPartners"] = { [1] = 106001, [2] = 106002, [3] = 106003, [4] = 106004, [5] = 106005, [6] = 106006, [7] = 106007, [8] = 106008, [9] = 106010, [10] = 106011, [11] = 106012, [12] = 106013, [13] = 106014, [14] = 106015, [15] = 106016, [16] = 106017, [17] = 106018, [18] = 106020, [19] = 101046, [20] = 106022, [21] = 106023, [22] = 106024, [23] = 106025, [24] = 106026, [25] = 101047,		},
		["IconNo"] = 6,
	},
	[7] = {
		["Type"] = 1,
		["Name"] = "陆小凤",
		["SectionNo"] = 7,
		["FirstChapter"] = 1038,
		["OpenPartners"] = { [1] = 107001, [2] = 107002, [3] = 107003, [4] = 107004, [5] = 107005, [6] = 107006, [7] = 107007, [8] = 107008, [9] = 107009, [10] = 107010, [11] = 107011, [12] = 107012, [13] = 107013, [14] = 107014, [15] = 107015, [16] = 107016, [17] = 107017, [18] = 107018, [19] = 107019, [20] = 107023, [21] = 101047, [22] = 107025, [23] = 107026,		},
		["IconNo"] = 7,
	},
}