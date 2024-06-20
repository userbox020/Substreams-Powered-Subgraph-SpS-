create index if not exists attr_5_14_position_transaction on "sgdXXX"."position" using gist("transaction", block_range);
create index if not exists attr_6_13_position_snapshot_transaction on "sgdXXX"."position_snapshot" using gist("transaction", block_range);
create index if not exists brin_transaction on "sgdXXX"."transaction" using brin(block$, vid);
create index if not exists attr_7_1_transaction_block_number on "sgdXXX"."transaction" using btree("block_number");
create index if not exists attr_7_2_transaction_timestamp on "sgdXXX"."transaction" using btree("timestamp");
create index if not exists attr_7_3_transaction_gas_used on "sgdXXX"."transaction" using btree("gas_used");
create index if not exists attr_7_4_transaction_gas_price on "sgdXXX"."transaction" using btree("gas_price");
create index if not exists attr_8_1_mint_transaction on "sgdXXX"."mint" using btree("transaction", block$);
create index if not exists attr_9_1_burn_transaction on "sgdXXX"."burn" using btree("transaction", block$);
create index if not exists attr_10_1_swap_transaction on "sgdXXX"."swap" using btree("transaction", block$);
create index if not exists attr_11_1_collect_transaction on "sgdXXX"."collect" using gist("transaction", block_range);
create index if not exists attr_12_1_flash_transaction on "sgdXXX"."flash" using gist("transaction", block_range);
