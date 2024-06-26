create index if not exists flash_id_block_range_excl on "sgdXXX"."flash" using gist (id, block_range);
create index if not exists brin_flash on "sgdXXX"."flash" using brin(lower(block_range), coalesce(upper(block_range), 2147483647), vid);
create index if not exists flash_block_range_closed on "sgdXXX"."flash"(coalesce(upper(block_range), 2147483647)) where coalesce(upper(block_range), 2147483647) < 2147483647;
create index if not exists attr_12_0_flash_id on "sgdXXX"."flash" using btree("id");
create index if not exists attr_12_1_flash_transaction on "sgdXXX"."flash" using gist("transaction", block_range);
create index if not exists attr_12_2_flash_timestamp on "sgdXXX"."flash" using btree("timestamp");
create index if not exists attr_12_3_flash_pool on "sgdXXX"."flash" using gist("pool", block_range);
create index if not exists attr_12_4_flash_sender on "sgdXXX"."flash" using btree(substring("sender", 1, 64));
create index if not exists attr_12_5_flash_recipient on "sgdXXX"."flash" using btree(substring("recipient", 1, 64));
create index if not exists attr_12_6_flash_amount_0 on "sgdXXX"."flash" using btree("amount_0");
create index if not exists attr_12_7_flash_amount_1 on "sgdXXX"."flash" using btree("amount_1");
create index if not exists attr_12_8_flash_amount_usd on "sgdXXX"."flash" using btree("amount_usd");
create index if not exists attr_12_9_flash_amount_0_paid on "sgdXXX"."flash" using btree("amount_0_paid");
create index if not exists attr_12_10_flash_amount_1_paid on "sgdXXX"."flash" using btree("amount_1_paid");
create index if not exists attr_12_11_flash_log_index on "sgdXXX"."flash" using btree("log_index");
