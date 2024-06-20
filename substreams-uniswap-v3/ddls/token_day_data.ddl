create index if not exists token_day_data_id_block_range_excl on "sgdXXX"."token_day_data" using gist (id, block_range);
create index if not exists brin_token_day_data on "sgdXXX".token_day_data using brin (lower(block_range) int4_minmax_multi_ops, coalesce(upper(block_range), 2147483647) int4_minmax_multi_ops, vid int8_minmax_multi_ops);
create index if not exists token_day_data_block_range_closed on "sgdXXX"."token_day_data"(coalesce(upper(block_range), 2147483647)) where coalesce(upper(block_range), 2147483647) < 2147483647;
create index if not exists attr_16_0_token_day_data_id on "sgdXXX"."token_day_data" using btree("id");
create index if not exists attr_16_1_token_day_data_date on "sgdXXX"."token_day_data" using btree("date");
create index if not exists attr_16_2_token_day_data_token on "sgdXXX"."token_day_data" using gist("token", block_range);
create index if not exists attr_16_3_token_day_data_volume on "sgdXXX"."token_day_data" using btree("volume");
create index if not exists attr_16_4_token_day_data_volume_usd on "sgdXXX"."token_day_data" using btree("volume_usd");
create index if not exists attr_16_5_token_day_data_volume_usd_untracked on "sgdXXX"."token_day_data" using btree("volume_usd_untracked");
create index if not exists attr_16_6_token_day_data_total_value_locked on "sgdXXX"."token_day_data" using btree("total_value_locked");
create index if not exists attr_16_7_token_day_data_total_value_locked_usd on "sgdXXX"."token_day_data" using btree("total_value_locked_usd");
create index if not exists attr_16_8_token_day_data_price_usd on "sgdXXX"."token_day_data" using btree("price_usd");
create index if not exists attr_16_9_token_day_data_fees_usd on "sgdXXX"."token_day_data" using btree("fees_usd");
create index if not exists attr_16_10_token_day_data_open on "sgdXXX"."token_day_data" using btree("open");
create index if not exists attr_16_11_token_day_data_high on "sgdXXX"."token_day_data" using btree("high");
create index if not exists attr_16_12_token_day_data_low on "sgdXXX"."token_day_data" using btree("low");
create index if not exists attr_16_13_token_day_data_close on "sgdXXX"."token_day_data" using btree("close");
create index if not exists manual_token_day_data_token_date_id on "sgdXXX".token_day_data using btree (token, date, id);
