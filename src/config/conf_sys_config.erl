%% -*- coding: latin-1 -*-
%%------------------------------------------------------------------------------
%% @File   : sys_config
%% @Brief  : 通用配置
%% @Author : Ryuu
%%------------------------------------------------------------------------------
-module(conf_sys_config).

-export([
    get/1
]).

get(bag_init_cell_num) ->
    #{
        key => bag_init_cell_num,
        value => 20        
    };
get(bag_max_cell_num) ->
    #{
        key => bag_max_cell_num,
        value => 300        
    };
get(bag_room_not_enough_mail) ->
    #{
        key => bag_room_not_enough_mail,
        value => 301        
    };
get(god_equip_refine_material_type) ->
    #{
        key => god_equip_refine_material_type,
        value => [{16100101,3}]        
    };
get(god_equip_refine_material_ratio) ->
    #{
        key => god_equip_refine_material_ratio,
        value => [{16100201,3}]        
    };
get(god_equip_refine_weight_type) ->
    #{
        key => god_equip_refine_weight_type,
        value => [{1,1000},{5,1000},{6,1000},{9,1000},{10,1000},{11,1000},{12,1000},{13,1000},{14,1000}]        
    };
get(god_equip_refine_weight_ratio) ->
    #{
        key => god_equip_refine_weight_ratio,
        value => [{100,200,5000},{201,300,10000},{301,400,5000},{401,500,1000}]        
    };
get(max_accumulate_offline_time) ->
    #{
        key => max_accumulate_offline_time,
        value => 43200        
    };
get(mail_valid_period) ->
    #{
        key => mail_valid_period,
        value => 2592000        
    };
get(mail_max_num) ->
    #{
        key => mail_max_num,
        value => 100        
    };
get(chat_content_len) ->
    #{
        key => chat_content_len,
        value => 50        
    };
get(chat_ban_times) ->
    #{
        key => chat_ban_times,
        value => {60,3}        
    };
get(chat_same_times) ->
    #{
        key => chat_same_times,
        value => {60,5}        
    };
get(chat_ban_span) ->
    #{
        key => chat_ban_span,
        value => [{1,1,1800},{2,2,10800},{3,3,21600},{4,-1,15552000}]        
    };
get(chat_ban_mail) ->
    #{
        key => chat_ban_mail,
        value => 3        
    };
get(rumor_max_len) ->
    #{
        key => rumor_max_len,
        value => 30        
    };
get(pet_lock_skill_cost) ->
    #{
        key => pet_lock_skill_cost,
        value => [{1,10},{2,20},{3,30},{4,40},{5,50}]        
    };
get(pet_lv_up_add_exp) ->
    #{
        key => pet_lv_up_add_exp,
        value => 10        
    };
get(pet_advance_add_exp) ->
    #{
        key => pet_advance_add_exp,
        value => 1        
    };
get(friend_num_limit) ->
    #{
        key => friend_num_limit,
        value => 100        
    };
get(friend_ban_num_limit) ->
    #{
        key => friend_ban_num_limit,
        value => 20        
    };
get(friend_enemy_num_limit) ->
    #{
        key => friend_enemy_num_limit,
        value => 20        
    };
get(friend_block_num_limit) ->
    #{
        key => friend_block_num_limit,
        value => 3        
    };
get(friend_create_group_num) ->
    #{
        key => friend_create_group_num,
        value => 3        
    };
get(friend_user_group_num_limit) ->
    #{
        key => friend_user_group_num_limit,
        value => 20        
    };
get(friend_sys_group_num_limit) ->
    #{
        key => friend_sys_group_num_limit,
        value => 5        
    };
get(equip_goods_type) ->
    #{
        key => equip_goods_type,
        value => {10,17,18,19,20,21,22,23,24,25,26,27}        
    };
get(equip_stone_adv_rune) ->
    #{
        key => equip_stone_adv_rune,
        value => 16260001        
    };
get(smelt_soul_star) ->
    #{
        key => smelt_soul_star,
        value => 6        
    };
get(smelt_soul_rate) ->
    #{
        key => smelt_soul_rate,
        value => 500        
    };
get(arena_reward_mail) ->
    #{
        key => arena_reward_mail,
        value => 12        
    };
get(arena_robot_num) ->
    #{
        key => arena_robot_num,
        value => 5000        
    };
get(arena_reward_times_cd) ->
    #{
        key => arena_reward_times_cd,
        value => 7200        
    };
get(arena_max_store_times) ->
    #{
        key => arena_max_store_times,
        value => 5        
    };
get(arena_buy_add_times) ->
    #{
        key => arena_buy_add_times,
        value => 5        
    };
get(arena_round_time) ->
    #{
        key => arena_round_time,
        value => 60        
    };
get(arena_scene) ->
    #{
        key => arena_scene,
        value => 20001        
    };
get(arena_rival_pos) ->
    #{
        key => arena_rival_pos,
        value => {70,110}        
    };
get(arena_victory_reward) ->
    #{
        key => arena_victory_reward,
        value => 4101        
    };
get(arena_failure_reward) ->
    #{
        key => arena_failure_reward,
        value => 4102        
    };
get(daily_kill_mons_finish) ->
    #{
        key => daily_kill_mons_finish,
        value => {100,200,300}        
    };
get(raider_rank_reward_mail) ->
    #{
        key => raider_rank_reward_mail,
        value => 21        
    };
get(raider_reward_times_cd) ->
    #{
        key => raider_reward_times_cd,
        value => 600        
    };
get(raider_max_store_times) ->
    #{
        key => raider_max_store_times,
        value => 10        
    };
get(chess_reward_times_cd) ->
    #{
        key => chess_reward_times_cd,
        value => 60        
    };
get(chess_max_store_times) ->
    #{
        key => chess_max_store_times,
        value => 5        
    };
get(chess_one_key_gold) ->
    #{
        key => chess_one_key_gold,
        value => 300        
    };
get(chess_finish_times) ->
    #{
        key => chess_finish_times,
        value => 10        
    };
get(chess_refresh_star_gold) ->
    #{
        key => chess_refresh_star_gold,
        value => 300        
    };
get(chess_scene) ->
    #{
        key => chess_scene,
        value => 90003        
    };
get(chess_npc_id) ->
    #{
        key => chess_npc_id,
        value => 13        
    };
get(chess_team_need_num) ->
    #{
        key => chess_team_need_num,
        value => 2        
    };
get(guild_seat_scene) ->
    #{
        key => guild_seat_scene,
        value => 40001        
    };
get(guild_desolation_span) ->
    #{
        key => guild_desolation_span,
        value => 7        
    };
get(guild_desolation_mail) ->
    #{
        key => guild_desolation_mail,
        value => 103        
    };
get(guild_auto_impeach_day) ->
    #{
        key => guild_auto_impeach_day,
        value => 3        
    };
get(guild_auto_impeach_active) ->
    #{
        key => guild_auto_impeach_active,
        value => 7        
    };
get(guild_join_mail_temp_id) ->
    #{
        key => guild_join_mail_temp_id,
        value => 101        
    };
get(guild_join_rumor) ->
    #{
        key => guild_join_rumor,
        value => 10001        
    };
get(guild_leave_rumor) ->
    #{
        key => guild_leave_rumor,
        value => 10002        
    };
get(guild_become_chief_rumor) ->
    #{
        key => guild_become_chief_rumor,
        value => 10003        
    };
get(guild_pos_change_rumor) ->
    #{
        key => guild_pos_change_rumor,
        value => 10005        
    };
get(guild_upgrade_rumor) ->
    #{
        key => guild_upgrade_rumor,
        value => 10004        
    };
get(guild_rename_mail) ->
    #{
        key => guild_rename_mail,
        value => 105        
    };
get(guild_rename_item) ->
    #{
        key => guild_rename_item,
        value => 16180002        
    };
get(guild_chief_abdicate_mail) ->
    #{
        key => guild_chief_abdicate_mail,
        value => 104        
    };
get(guild_kick_mail) ->
    #{
        key => guild_kick_mail,
        value => 102        
    };
get(guild_recruit_rumor) ->
    #{
        key => guild_recruit_rumor,
        value => 10006        
    };
get(guild_recruit_cd) ->
    #{
        key => guild_recruit_cd,
        value => 600        
    };
get(guild_ex_refresh_gold) ->
    #{
        key => guild_ex_refresh_gold,
        value => 100        
    };
get(guild_ex_refresh_times) ->
    #{
        key => guild_ex_refresh_times,
        value => 10        
    };
get(guild_announce_length) ->
    #{
        key => guild_announce_length,
        value => {1,80}        
    };
get(create_guild_init_funds) ->
    #{
        key => create_guild_init_funds,
        value => 100000        
    };
get(guild_down_mail) ->
    #{
        key => guild_down_mail,
        value => 106        
    };
get(marry_send_gift_mail) ->
    #{
        key => marry_send_gift_mail,
        value => 201        
    };
get(marry_return_gift_mail) ->
    #{
        key => marry_return_gift_mail,
        value => 202        
    };
get(marry_divorce_mail) ->
    #{
        key => marry_divorce_mail,
        value => 203        
    };
get(marry_rumor) ->
    #{
        key => marry_rumor,
        value => 10007        
    };
get(marry_invite_cd) ->
    #{
        key => marry_invite_cd,
        value => 180        
    };
get(marry_ring_adv_temp_attr) ->
    #{
        key => marry_ring_adv_temp_attr,
        value => [{1,10}]        
    };
get(marry_ring_adv_add_exp) ->
    #{
        key => marry_ring_adv_add_exp,
        value => 10        
    };
get(marry_cele_valid_time) ->
    #{
        key => marry_cele_valid_time,
        value => 3600        
    };
get(novice_xiake_shop) ->
    #{
        key => novice_xiake_shop,
        value => 40        
    };
get(novice_czx_shop) ->
    #{
        key => novice_czx_shop,
        value => 40        
    };
get(novice_zs_shop) ->
    #{
        key => novice_zs_shop,
        value => 40        
    };
get(novice_zigq_task) ->
    #{
        key => novice_zigq_task,
        value => 1019        
    };
get(recharge_mail) ->
    #{
        key => recharge_mail,
        value => 31        
    };
get(recharge_mail_rebate) ->
    #{
        key => recharge_mail_rebate,
        value => 32        
    };
get(world_level_default) ->
    #{
        key => world_level_default,
        value => 100        
    };
get(welfare_level_diff) ->
    #{
        key => welfare_level_diff,
        value => 3        
    };
get(hero_active_legend) ->
    #{
        key => hero_active_legend,
        value => {16230001,10}        
    };
get(hero_active_legend_lv) ->
    #{
        key => hero_active_legend_lv,
        value => {60,10}        
    };
get(hero_active_lv) ->
    #{
        key => hero_active_lv,
        value => {40,5}        
    };
get(dynasty_war_prepare_scene) ->
    #{
        key => dynasty_war_prepare_scene,
        value => 20004        
    };
get(dynasty_war_battle_scene) ->
    #{
        key => dynasty_war_battle_scene,
        value => 20003        
    };
get(dynasty_war_settle_mail) ->
    #{
        key => dynasty_war_settle_mail,
        value => 401        
    };
get(dynasty_war_score_win) ->
    #{
        key => dynasty_war_score_win,
        value => 400        
    };
get(dynasty_war_score_lose) ->
    #{
        key => dynasty_war_score_lose,
        value => 200        
    };
get(dynasty_war_score_draw) ->
    #{
        key => dynasty_war_score_draw,
        value => 300        
    };
get(dynasty_war_born_pos_song) ->
    #{
        key => dynasty_war_born_pos_song,
        value => {244,432}        
    };
get(dynasty_war_born_pos_liao) ->
    #{
        key => dynasty_war_born_pos_liao,
        value => {244,244}        
    };
get(dynasty_war_match_time) ->
    #{
        key => dynasty_war_match_time,
        value => 600        
    };
get(dynasty_war_match_num) ->
    #{
        key => dynasty_war_match_num,
        value => 10        
    };
get(dynasty_war_pos_yunzhong) ->
    #{
        key => dynasty_war_pos_yunzhong,
        value => {86,163}        
    };
get(dynasty_war_pos_daijun) ->
    #{
        key => dynasty_war_pos_daijun,
        value => {157,182}        
    };
get(dynasty_war_pos_yanmen) ->
    #{
        key => dynasty_war_pos_yanmen,
        value => {122,167}        
    };
get(dynasty_war_show_reward) ->
    #{
        key => dynasty_war_show_reward,
        value => 1005        
    };
get(auction_bonus_mail) ->
    #{
        key => auction_bonus_mail,
        value => 501        
    };
get(auction_reward_mail_bid) ->
    #{
        key => auction_reward_mail_bid,
        value => 502        
    };
get(auction_return_mail) ->
    #{
        key => auction_return_mail,
        value => 503        
    };
get(auction_reward_mail_now) ->
    #{
        key => auction_reward_mail_now,
        value => 504        
    };
get(auction_bonus_min_num) ->
    #{
        key => auction_bonus_min_num,
        value => 10        
    };
get(aution_abortion_rate) ->
    #{
        key => aution_abortion_rate,
        value => 0.25        
    };
get(auction_boss_max_item) ->
    #{
        key => auction_boss_max_item,
        value => 50        
    };
get(auction_now_bonus) ->
    #{
        key => auction_now_bonus,
        value => 1.5        
    };
get(master_rob_cd) ->
    #{
        key => master_rob_cd,
        value => 180        
    };
get(master_rob_time) ->
    #{
        key => master_rob_time,
        value => 60        
    };
get(master_rob_scene) ->
    #{
        key => master_rob_scene,
        value => 40004        
    };
get(master_rob_pert) ->
    #{
        key => master_rob_pert,
        value => 0.3        
    };
get(master_rob_protect) ->
    #{
        key => master_rob_protect,
        value => 180        
    };
get(master_chap_cd) ->
    #{
        key => master_chap_cd,
        value => 180        
    };
get(master_chap_time) ->
    #{
        key => master_chap_time,
        value => 60        
    };
get(master_chap_scene) ->
    #{
        key => master_chap_scene,
        value => 40003        
    };
get(master_chap_hp_ratio) ->
    #{
        key => master_chap_hp_ratio,
        value => [{0,30,3},{31,60,2},{61,100,1}]        
    };
get(master_chap_fix_ratio) ->
    #{
        key => master_chap_fix_ratio,
        value => 0.3        
    };
get(master_settle_mail_role) ->
    #{
        key => master_settle_mail_role,
        value => 402        
    };
get(master_settle_mail_guild) ->
    #{
        key => master_settle_mail_guild,
        value => 403        
    };
get(master_boss_born_pos) ->
    #{
        key => master_boss_born_pos,
        value => {70,110}        
    };
get(master_start_rumor) ->
    #{
        key => master_start_rumor,
        value => 20401        
    };
get(master_stop_rumor) ->
    #{
        key => master_stop_rumor,
        value => 20402        
    };
get(master_rob_fight_limit) ->
    #{
        key => master_rob_fight_limit,
        value => 3.5        
    };
get(lucky_roraty_rumor) ->
    #{
        key => lucky_roraty_rumor,
        value => 20001        
    };
get(daily_thief_id_list) ->
    #{
        key => daily_thief_id_list,
        value => [170001,170002,170003,170004,170005,170006,170007,170008,170009,170010]        
    };
get(daily_thief_adventure_list) ->
    #{
        key => daily_thief_adventure_list,
        value => [170101,170102,170103,170104,170105,170106,170107,170108,170109,170110]        
    };
get(daily_thief_exp_max_times) ->
    #{
        key => daily_thief_exp_max_times,
        value => 2        
    };
get(daily_thief_roraty_max_times) ->
    #{
        key => daily_thief_roraty_max_times,
        value => 2        
    };
get(guild_defend_bonus_ratio) ->
    #{
        key => guild_defend_bonus_ratio,
        value => [{1,1,1.5},{2,4,1.2},{5,10,0.9},{11,999,0.5}]        
    };
get(gather_reward_vitality_cd) ->
    #{
        key => gather_reward_vitality_cd,
        value => 60        
    };
get(gather_max_store_vitality) ->
    #{
        key => gather_max_store_vitality,
        value => 720        
    };
get(career_battle_born_pos_red) ->
    #{
        key => career_battle_born_pos_red,
        value => {78,98}        
    };
get(career_battle_born_pos_blue) ->
    #{
        key => career_battle_born_pos_blue,
        value => {57,102}        
    };
get(team_max_member_num) ->
    #{
        key => team_max_member_num,
        value => 5        
    };
get(team_offline_timeout) ->
    #{
        key => team_offline_timeout,
        value => 300        
    };
get(team_member_join_rumor) ->
    #{
        key => team_member_join_rumor,
        value => 20501        
    };
get(team_member_leave_rumor) ->
    #{
        key => team_member_leave_rumor,
        value => 20502        
    };
get(team_kick_member_rumor) ->
    #{
        key => team_kick_member_rumor,
        value => 20503        
    };
get(team_leader_change_rumor) ->
    #{
        key => team_leader_change_rumor,
        value => 20504        
    };
get(team_target_change_rumor) ->
    #{
        key => team_target_change_rumor,
        value => 20505        
    };
get(team_start_match_rumor) ->
    #{
        key => team_start_match_rumor,
        value => 20506        
    };
get(team_stop_match_rumor) ->
    #{
        key => team_stop_match_rumor,
        value => 20507        
    };
get(team_recruit_rumor) ->
    #{
        key => team_recruit_rumor,
        value => 20508        
    };
get(team_approve_promote_rumor) ->
    #{
        key => team_approve_promote_rumor,
        value => 20509        
    };
get(team_reject_promote_rumor) ->
    #{
        key => team_reject_promote_rumor,
        value => 20510        
    };
get(team_mon_drop_dist) ->
    #{
        key => team_mon_drop_dist,
        value => 30        
    };
get(channel_change_potential_cost) ->
    #{
        key => channel_change_potential_cost,
        value => [{16290002,1}]        
    };
get(channel_active_hero_lv) ->
    #{
        key => channel_active_hero_lv,
        value => 30        
    };
get(channel_cult_weight) ->
    #{
        key => channel_cult_weight,
        value => [{100,5500},{200,2500},{300,1200},{400,600},{500,200}]        
    };
get(channel_draw_item) ->
    #{
        key => channel_draw_item,
        value => 16290003        
    };
get(channel_draw_rumor) ->
    #{
        key => channel_draw_rumor,
        value => 20002        
    };
get(dung_far_from_npc_rumor) ->
    #{
        key => dung_far_from_npc_rumor,
        value => 20511        
    };
get(dung_level_limit_rumor) ->
    #{
        key => dung_level_limit_rumor,
        value => 20512        
    };
get(dung_mem_offline_rumor) ->
    #{
        key => dung_mem_offline_rumor,
        value => 20513        
    };
get(dung_help_emprise) ->
    #{
        key => dung_help_emprise,
        value => 10        
    };
get(territory_flag) ->
    #{
        key => territory_flag,
        value => 1005        
    };
get(territory_prepare_scene) ->
    #{
        key => territory_prepare_scene,
        value => 40009        
    };
get(territory_battle_scene) ->
    #{
        key => territory_battle_scene,
        value => 40010        
    };
get(territory_born_pos_red) ->
    #{
        key => territory_born_pos_red,
        value => {322,256}        
    };
get(territory_born_pos_blue) ->
    #{
        key => territory_born_pos_blue,
        value => {124,256}        
    };
get(territory_prepare_rumor) ->
    #{
        key => territory_prepare_rumor,
        value => 20701        
    };
get(territory_room_win_rumor) ->
    #{
        key => territory_room_win_rumor,
        value => 20702        
    };
get(territory_room_lose_rumor) ->
    #{
        key => territory_room_lose_rumor,
        value => 20703        
    };
get(territory_group_win_rumor) ->
    #{
        key => territory_group_win_rumor,
        value => 20704        
    };
get(territory_group_lose_rumor) ->
    #{
        key => territory_group_lose_rumor,
        value => 20705        
    };
get(territory_win_mail) ->
    #{
        key => territory_win_mail,
        value => 1601        
    };
get(territory_lose_mail) ->
    #{
        key => territory_lose_mail,
        value => 1602        
    };
get(hero_boss_buff) ->
    #{
        key => hero_boss_buff,
        value => [{0,15000,20001},{15000,-1,20002}]        
    };
get(team_near_by_distance) ->
    #{
        key => team_near_by_distance,
        value => 25        
    };
get(catch_pet_cost_item) ->
    #{
        key => catch_pet_cost_item,
        value => 16330001        
    };
get(scene_pet_catch_show) ->
    #{
        key => scene_pet_catch_show,
        value => 40011        
    };
get(weapon_ui_show) ->
    #{
        key => weapon_ui_show,
        value => {{1001,1001,1001,1001,1001,1001,1001},{2001,2001,2001,2001,2001,2001,2001},{3001,3001,3001,3001,3001,3001,3001},{4001,4002,4003,4004,4005,4006,4007}}        
    };
get(task_circle_help_rumor) ->
    #{
        key => task_circle_help_rumor,
        value => 21101        
    };
get(task_circle_help_times) ->
    #{
        key => task_circle_help_times,
        value => 300        
    };
get(market_rare_item_sold_mail) ->
    #{
        key => market_rare_item_sold_mail,
        value => 1701        
    };
get(market_item_sold_mail) ->
    #{
        key => market_item_sold_mail,
        value => 1702        
    };
get(market_item_expire_mail) ->
    #{
        key => market_item_expire_mail,
        value => 1703        
    };
get(market_max_follow) ->
    #{
        key => market_max_follow,
        value => 20        
    };
get(market_min_fee) ->
    #{
        key => market_min_fee,
        value => 1000        
    };
get(market_expire_time) ->
    #{
        key => market_expire_time,
        value => 1        
    };
get(first_charge_reward) ->
    #{
        key => first_charge_reward,
        value => 240001        
    };
get(retrieve_item_id) ->
    #{
        key => retrieve_item_id,
        value => 16440002        
    };
get(coloration_npc_id) ->
    #{
        key => coloration_npc_id,
        value => 37        
    };
get(pioneer_level_rank) ->
    #{
        key => pioneer_level_rank,
        value => 100        
    };
get(pioneer_level_default) ->
    #{
        key => pioneer_level_default,
        value => 20        
    };
get(prize_task_max_times) ->
    #{
        key => prize_task_max_times,
        value => 5        
    };
get(prize_task_level_limit) ->
    #{
        key => prize_task_level_limit,
        value => 50        
    };
get(daily_task_max_times) ->
    #{
        key => daily_task_max_times,
        value => 10        
    };
get(auto_use_item) ->
    #{
        key => auto_use_item,
        value => [{11010001,30},{11020001,30},{11030001,30}]        
    };
get(max_bq_times) ->
    #{
        key => max_bq_times,
        value => 2        
    };
get(_) ->
    undefined.
