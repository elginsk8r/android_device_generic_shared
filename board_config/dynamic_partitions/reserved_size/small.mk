$(foreach p, $(call to-upper, system product system_ext vendor odm), \
    $(eval BOARD_$(p)IMAGE_PARTITION_RESERVED_SIZE := 52428800))
