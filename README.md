# SSB_Scripts_Partitions_Buckets
Scripts used for the WorldCist'18 publication

Folder: Denormalized Table
  presto/hive_D_part_buckets: for the tables partitioned by one atribute and with bucketing by any attribute.
  presto/hive_D_mpart_buckets: for the tables partitioned by two attributtes and with bucketing by any attribute.
  
Folder: Star Schema:
  presto/hive_part_buckets: for the tables partitioned by "Od_Year" and with bucketing by any attribute.
  presto/hive_part2_buckets: for the tables partitioned by "S_Region" and with bucketing by any attribute.
  presto/hive_mpart2_buckets: for the tables partitioned by "Od_Year" and "S_Region" and with bucketing by any attribute.
