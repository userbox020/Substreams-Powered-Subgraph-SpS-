create index if not exists token_id_block_range_excl on "sgdXXX"."token" using gist (id, block_range);
create index if not exists brin_token on "sgdXXX".token using brin (lower(block_range) int4_minmax_multi_ops, coalesce(upper(block_range), 2147483647) int4_minmax_multi_ops, vid int8_minmax_multi_ops);
create index if not exists token_block_range_closed on "sgdXXX"."token"(coalesce(upper(block_range), 2147483647)) where coalesce(upper(block_range), 2147483647) < 2147483647;
create index if not exists attr_2_0_token_id on "sgdXXX"."token" using btree("id");
create index if not exists attr_2_1_token_symbol on "sgdXXX"."token" using btree(left("symbol", 256));
create index if not exists attr_2_2_token_name on "sgdXXX"."token" using btree(left("name", 256));
create index if not exists attr_2_3_token_decimals on "sgdXXX"."token" using btree("decimals");
create index if not exists attr_2_4_token_total_supply on "sgdXXX"."token" using btree("total_supply");
create index if not exists attr_2_5_token_volume on "sgdXXX"."token" using btree("volume");
create index if not exists attr_2_6_token_volume_usd on "sgdXXX"."token" using btree("volume_usd");
create index if not exists attr_2_7_token_untracked_volume_usd on "sgdXXX"."token" using btree("untracked_volume_usd");
create index if not exists attr_2_8_token_fees_usd on "sgdXXX"."token" using btree("fees_usd");
create index if not exists attr_2_9_token_tx_count on "sgdXXX"."token" using btree("tx_count");
create index if not exists attr_2_10_token_pool_count on "sgdXXX"."token" using btree("pool_count");
create index if not exists attr_2_11_token_total_value_locked on "sgdXXX"."token" using btree("total_value_locked");
create index if not exists attr_2_12_token_total_value_locked_usd on "sgdXXX"."token" using btree("total_value_locked_usd");
create index if not exists attr_2_13_token_total_value_locked_usd_untracked on "sgdXXX"."token" using btree("total_value_locked_usd_untracked");
create index if not exists attr_2_14_token_derived_eth on "sgdXXX"."token" using btree("derived_eth");
create index if not exists attr_2_15_token_whitelist_pools on "sgdXXX"."token" using gin("whitelist_pools");
create index if not exists attr_16_2_token_day_data_token on "sgdXXX"."token_day_data" using gist("token", block_range);
create index if not exists attr_17_2_token_hour_data_token on "sgdXXX"."token_hour_data" using gist("token", block_range);
create index if not exists manual_token_total_value_locked_usd_16735000 on "sgdXXX".token using btree (total_value_locked_usd) where (coalesce(upper(block_range), 2147483647) > 16735000);
