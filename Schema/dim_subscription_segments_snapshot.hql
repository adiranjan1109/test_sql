
 /* ********************************************************************************
-- Produced By   : Hulu LLC
-- Author        : Jenny Mehandru
-- Date          : 2018-01-25
-- Purpose       : Table script to create subscription segment maps table
--Tejal Dasnurkar  2018-06-20 Changed table partition and some data types
      
*******************************************************************************/
--drop table bi_prod.dim_subscription_segments_snapshot;
CREATE TABLE bi_prod.dim_subscription_segments_snapshot (
userid bigint,
subscription_id bigint,
segment_id int,
segment_name string,
segment_probabilities MAP<string, float>,
record_modified_date_pdt timestamp,
release_version string
)
PARTITIONED BY (snapshot_date string,segment_type string)
STORED AS ORC;




