%%% ----------------------------------------------------------------------------
%%% @author Ryuu
%%% @copyright (C) 2018, Nemo
%%% @doc
%%%     操作类型
%%% @end
%%% ----------------------------------------------------------------------------
-ifndef(__OP_TYPE_HRL__).
-define(__OP_TYPE_HRL__, 1).

-define(OPT_GM, 1). %% GM获得
-define(OPT_BAG_SELL, 2). %% 背包出售
-define(OPT_BAG_EXTEND, 3). %% 背包扩充
-define(OPT_BAG_CLEAN, 4). %% 背包整理
-define(OPT_BAG_CLEAR, 5). %% 背包清理
-define(OPT_CHAT, 6). %% 聊天
-define(OPT_MAIL_ATTACH, 7). %% 获取邮件附件
-define(OPT_EQUIP_WEAR, 8). %% 穿戴装备
-define(OPT_EQUIP_TAKE_OFF, 9). %% 卸下装备

-define(OPT_EQUIP_STREN, 10). %% 强化装备
-define(OPT_EQUIP_REFINE, 11). %% 精炼装备
-define(OPT_EQUIP_TEMPER, 12). %% 锻炼装备
-define(OPT_EQUIP_QUENCH, 13). %% 淬炼装备
-define(OPT_TITLE_ACTIVATE, 14). %% 激活称号
-define(OPT_FASHION_ACTIVATE, 15). %% 时装激活
-define(OPT_FASHION_DYEING, 16). %% 时装染色
-define(OPT_LEVEL_MANUAL, 17). %% 手动升级
-define(OPT_SKILL_UPGRADE, 18). %% 技能升级
-define(OPT_HAIR_SWITCH, 19). %% 改变发型

-define(OPT_EQUIP_CASTING, 20). %% 装备铸造
-define(OPT_GOD_EQUIP_REFINE, 27). %% 神装洗练
-define(OPT_GOD_EQUIP_UPGRADE, 28). %% 神装升级
-define(OPT_SHOP_BUY_ITEM, 29). %% 购买商店物品

-define(OPT_DUNGEON, 30). %% 副本挑战
-define(OPT_DUNGEON_SWIPE, 31). %% 副本扫荡
-define(OPT_DUNGEON_RESET, 32). %% 副本重置
-define(OPT_DUNGEON_FIRST, 33). %% 副本首通奖励
-define(OPT_DUNGEON_CHAPTER, 34). %% 副本章节奖励
-define(OPT_BAG_SMELT, 39). %% 背包容量

-define(OPT_SCENE_HANGUP, 42). %% 场景挂机
-define(OPT_MON_DROP, 43). %% 怪物死亡掉落
-define(OPT_FRIEND_COIN, 44). %% 领取友情币
-define(OPT_ARENA_BUY, 48). %% 竞技场购买
-define(OPT_ARENA_SETTLE_UP, 49). %% 竞技场结算

-define(OPT_DAILY_KILL_MONS_DROP, 50). %% 每日杀怪奖励
-define(OPT_DAILY_KILL_MONS_FINISH, 51). %% 每日杀怪购买
-define(OPT_RAIDER_REFRESH, 52). %% 夺宝奇兵刷新
-define(OPT_RAIDER_REWARD, 53). %% 夺宝奇兵奖励
-define(OPT_RAIDER_BUY, 54). %% 夺宝奇兵购买
-define(OPT_TASK_REWARD, 55). %% 任务奖励
-define(OPT_TASK_ACCEPT, 56). %% 领取任务
-define(OPT_CHESS_REFRESH, 57). %% 珍珑棋局刷新
-define(OPT_CHESS_FINISH, 58). %% 珍珑棋局一键完成
-define(OPT_CHESS_REWARD, 59). %% 珍珑棋局领取奖励

-define(OPT_SKILL_ACTIVE, 60). %% 技能激活
-define(OPT_GUILD_CREATE, 61). %% 帮派创建
-define(OPT_GUILD_DONATE, 62). %% 帮派捐献
-define(OPT_GUILD_RENAME, 63). %% 帮派改名
-define(OPT_GUILD_WELFARE, 64). %% 帮派福利
-define(OPT_ARENA_REWARD, 65). %% 竞技场奖励
-define(OPT_VIP_GIFT, 66). %% VIP等级礼包
-define(OPT_GUILD_COOK, 67). %% 帮派烹饪
-define(OPT_GUILD_LIVENESS, 68). %% 帮派活跃
-define(OPT_MARRY, 69). %% 结婚

-define(OPT_MARRY_GIFT, 70). %% 结婚礼金
-define(OPT_RECHARGE, 71). %% 充值
-define(OPT_MARRY_DIVORCE, 72). %% 离婚
-define(OPT_MARRY_ADV_RING, 73). %% 升级婚戒
-define(OPT_GUILD_UP_SKILL, 74). %% 升级帮派技能
-define(OPT_GUILD_EXCHANGE, 75). %% 帮派收购
-define(OPT_GUILD_REFRESH_EX, 76). %% 刷新帮派收购
-define(OPT_COLLECT, 77). %% 采集获得
-define(OPT_HERO_ACTIVE, 78). %% 激活英雄
-define(OPT_HERO_COMPOSE, 79). %% 合成英雄培养道具

-define(OPT_HERO_CULT, 80). %% 培养英雄
-define(OPT_HERO_LEGEND, 81). %% 激活英雄真武指点
-define(OPT_DAILY_SIGN, 82). %% 每日签到奖励
-define(OPT_ACC_SIGN, 83). %% 累计签到奖励
-define(OPT_QUESTION, 84). %% 帮派答题
-define(OPT_DAILY_EVENT, 85). %% 每日必做
-define(OPT_KF_DAILY_CHARGE, 86). %% 开服累计充值
-define(OPT_LEVEL_GIFT, 87). %% 等级礼包
-define(OPT_WELFARE, 89). %% 天龙福利

-define(OPT_GUILD_DAILY_TASK, 90). %% 帮派领地任务
-define(OPT_WEEKLY_MONTH_CARD, 91). %% 周月卡
-define(OPT_MYSTICAL_STORE, 92). %% 神秘商店
-define(OPT_DYNASTY_WAR_SETTLE, 93). %% 宋辽战争结算
-define(OPT_AUCTION_BID, 94). %% 拍卖行竞拍
-define(OPT_AUCTION_REWARD, 95). %% 拍卖行奖励
-define(OPT_AUCTION_RETURN, 96). %% 拍卖行返还
-define(OPT_AUCTION_BONUS, 97). %% 拍卖行分红
-define(OPT_LUCKY_RORATY, 98). %% 幸运转盘
-define(OPT_DAILY_CHARGE, 99). %% 每日充值

-define(OPT_WORLD_BOSS, 100). %% 世界boss击杀奖励
-define(OPT_DAILY_THIEF, 101). %% 马贼任务
-define(OPT_GUILD_PRACTICE, 102). %% 帮会修炼技能
-define(OPT_GUILD_JUNKET, 103). %% 帮派宴请
-define(OPT_GUILD_BONUS, 104). %% 帮派分红
-define(OPT_MASTER_SETTLE, 105). %% 武林盟主结算
-define(OPT_WORLD_BOSS_DICE, 106). %% 武林禁地骰子奖励
-define(OPT_ACC_LV_UP, 107). %% 累积经验自动升级
-define(OPT_GUILD_DEFEND, 108). %% 帮派守卫战
-define(OPT_STONE_INLAY, 109). %% 宝石镶嵌

-define(OPT_STONE_ADV, 110). %% 宝石提升
-define(OPT_ITEM_COMPOSE, 111). %% 物品合成
-define(OPT_PARIS_INLAY, 112). %% 重楼镶嵌
-define(OPT_PARIS_STREN, 113). %% 重楼强化
-define(OPT_PARIS_STRIP, 114). %% 重楼拆卸
-define(OPT_FORGE_EQUIP, 115). %% 打造装备
-define(OPT_FORGE_WHEEL, 116). %% 打造转盘
-define(OPT_GATHER_COLL, 117). %% 装备采集
-define(OPT_GATHER_UPGRADE, 118). %% 升级采集技能
-define(OPT_CAREER_BATTLE, 119). %% 门派竞技

-define(OPT_PET_ACTIVE, 120). %% 激活珍兽
-define(OPT_PET_UPGRADE_SAVVY, 121). %% 替身珍兽悟性
-define(OPT_PET_UPGRADE_GROW, 122). %% 升级珍兽成长等级
-define(OPT_PET_UPGRADE_SKILL, 123). %% 升级珍兽技能
-define(OPT_PET_LEARN_SKILL, 124). %% 学习珍兽技能
-define(OPT_PET_INHERIT, 125). %% 珍兽继承
-define(OPT_PET_PAY_HATCH, 126). %% 珍兽求种消耗
-define(OPT_PET_RENAME, 127). %% 珍兽改名
-define(OPT_LAKE_BANDITS, 128). %% 镜湖剿匪
-define(OPT_PET_PUTON_INTERNAL, 129). %% 珍兽内丹装配

-define(OPT_PET_UPGRADE_INTERNAL, 130). %% 珍兽内丹升级
-define(OPT_GUILD_TASK, 131). %% 帮派任务
-define(OPT_CHANNEL_ACTIVE, 132). %% 打通经脉
-define(OPT_CHANNEL_CULT, 133). %% 培养潜能
-define(OPT_CHANNEL_CHANGE, 134). %% 改变潜能
-define(OPT_CHANNEL_WEAR, 135). %% 穿戴经脉装备
-define(OPT_CHANNEL_TAKE_OFF, 136). %% 卸下经脉装备
-define(OPT_EXAMINE, 137). %% 科举考试
-define(OPT_CHANNEL_DRAW, 138). %% 经脉夺宝抽奖
-define(OPT_CHANNEL_DRAW_ACC, 139). %% 经脉夺宝累计奖励

-define(OPT_USE_GOODS, 140). %% 使用消耗
-define(OPT_USE_GOODS_GAIN, 141). %% 使用获得
-define(OPT_PET_AWAKEN, 142). %% 神兽觉醒
-define(OPT_DAILY_ROBBER, 143). %% 逞凶打图
-define(OPT_DUNGEON_DROP, 144). %% 副本掉落
-define(OPT_JOUSTS_HALL, 145). %% 演武堂
-define(OPT_GUILD_WINE_ACT, 146). %% 帮派行酒令
-define(OPT_TREASURE_MAP, 147). %% 藏宝图
-define(OPT_TERRITORY_DRUM, 148). %% 领地战击鼓
-define(OPT_GUILD_WINE_PRACTICE, 149). %% 帮派练功

-define(OPT_TERRITORY_SETTLE, 150). %% 领地战结算
-define(OPT_GUILD_CARRY, 151). %% 帮派运镖
-define(OPT_GUILD_CARRY_REFRESH, 152). %% 帮派运镖刷新
-define(OPT_GUILD_CARRY_FOREGIFT, 153). %% 帮派运镖押金
-define(OPT_GUILD_CARRY_FOREGIFT_BACK, 154). %% 帮派运镖押金归还
-define(OPT_CATCH_PET, 155). %% 捕捉宠物
-define(OPT_GUILD_CARRY_ROB, 156). %% 帮派劫镖
-define(OPT_ARTIFACT_ADD_EXTRA_ATTR, 157). %% 神器神铸属性
-define(OPT_ARTIFACT_LV_UP, 158). %% 神器升阶
-define(OPT_KILL_MON_EXP, 159). %% 野外杀怪经验

-define(OPT_DAILY_LIVELY, 160). %% 每日活跃奖励
-define(OPT_LAKE_EXPRICENE, 161). %% 江湖历练
-define(OPT_BAG_TRANSFER, 162). %% 转移背包物品
-define(OPT_ANQI_PRACTICE, 163). %% 暗器修炼
-define(OPT_ANQI_FORGE, 164). %% 暗器打造
-define(OPT_ANQI_LV_UP, 165). %% 暗器升品阶
-define(OPT_ANQI_UNLOCK_SKILL_PLAN, 166). %% 暗器开启技能方案
-define(OPT_ANQI_REFRESH_SKILL_PLAN, 167). %% 暗器重洗技能方案
-define(OPT_ANQI_UNLOCK_POISON_SLOT, 168). %% 暗器开启淬毒孔
-define(OPT_ANQI_CREATE_POISON, 169). %% 暗器炼毒

-define(OPT_TASK_QUICK, 170). %% 任务快速完成
-define(OPT_TASK_HELP, 171). %% 任务帮助
-define(OPT_TASK_HELPED, 172). %% 任务受助
-define(OPT_MURDEROUS_PUNISH, 173). %% 杀气惩罚
-define(OPT_MARKET_PUT_ON, 174). %% 商会上架
-define(OPT_MARKET_TAKE_OFF, 175). %% 商会下架
-define(OPT_MARKET_RESALE, 176). %% 商会重新上架
-define(OPT_MARKET_BUY, 177). %% 商会购买
-define(OPT_MARKET_SELL, 178). %% 商会出售
-define(OPT_LEVEL_EXCH_BOX, 179). %% 兑换历练宝箱

-define(OPT_WEEKLY_CONSUME, 180). %% 每周反馈
-define(OPT_CHARGE_GIFT, 181). %% 充值礼包
-define(OPT_WEEKLY_CONSUME_RORATY, 182). %% 周消费转盘
-define(OPT_FIRST_CHARGE_REWARD, 183). %% 首充奖励
-define(OPT_TITLE_HONOR, 184). %% 头衔
-define(OPT_DAILY_GIFT, 185). %% 每日礼包
-define(OPT_GROW_FUND, 186). %% 成长基金
-define(OPT_ONLINE_REWARD, 187). %% 在线奖励
-define(OPT_MON_RETRIEVE, 188). %% 历练补偿
-define(OPT_DAILY_RETRIEVE, 189). %% 每日找回

-define(OPT_PRIZE_ACCEPT, 190). %% 领取武林悬赏令任务
-define(OPT_AUTO_DISMISS_GROUP, 191). %% 自动解散好友群组
-define(OPT_DAILY_TASK, 192). %% 每日任务
-define(OPT_SIGN_BQ, 193). %% 签到补签
-define(OPT_TITLE_EXPIRE, 194). %% 称号过期
-define(OPT_GUILD_METALL, 195). %% 帮派炼金
-define(OPT_MARKET_EXPIRE, 196). %% 商会过期

-endif.
