.class Lcom/android/server/power/WakeLockLog$EntryByteTranslator;
.super Ljava/lang/Object;
.source "WakeLockLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/WakeLockLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EntryByteTranslator"
.end annotation


# static fields
.field static final ERROR_TIME_IS_NEGATIVE:I = -0x1

.field static final ERROR_TIME_TOO_LARGE:I = -0x2


# instance fields
.field private final mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;


# direct methods
.method constructor <init>(Lcom/android/server/power/WakeLockLog$TagDatabase;)V
    .locals 0
    .param p1, "tagDatabase"    # Lcom/android/server/power/WakeLockLog$TagDatabase;

    .line 496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 497
    iput-object p1, p0, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;

    .line 498
    return-void
.end method

.method private getRelativeTime(JJ)I
    .locals 4
    .param p1, "timeReference"    # J
    .param p3, "time"    # J

    .line 676
    cmp-long v0, p3, p1

    if-gez v0, :cond_0

    .line 680
    const/4 v0, -0x1

    return v0

    .line 682
    :cond_0
    sub-long v0, p3, p1

    .line 683
    .local v0, "relativeTime":J
    const-wide/16 v2, 0xff

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 687
    const/4 v2, -0x2

    return v2

    .line 689
    :cond_1
    long-to-int v2, v0

    return v2
.end method


# virtual methods
.method fromBytes([BJLcom/android/server/power/WakeLockLog$LogEntry;)Lcom/android/server/power/WakeLockLog$LogEntry;
    .locals 15
    .param p1, "bytes"    # [B
    .param p2, "timeReference"    # J
    .param p4, "entryToReuse"    # Lcom/android/server/power/WakeLockLog$LogEntry;

    .line 513
    move-object v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    array-length v3, v1

    if-nez v3, :cond_0

    goto/16 :goto_3

    .line 518
    :cond_0
    if-eqz p4, :cond_1

    move-object/from16 v3, p4

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/android/server/power/WakeLockLog$LogEntry;

    invoke-direct {v3}, Lcom/android/server/power/WakeLockLog$LogEntry;-><init>()V

    .line 520
    .local v3, "entry":Lcom/android/server/power/WakeLockLog$LogEntry;
    :goto_0
    const/4 v4, 0x0

    aget-byte v5, v1, v4

    const/4 v6, 0x6

    shr-int/2addr v5, v6

    const/4 v7, 0x3

    and-int/2addr v5, v7

    .line 521
    .local v5, "type":I
    and-int/lit8 v8, v5, 0x2

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    .line 523
    const/4 v5, 0x2

    move v10, v5

    goto :goto_1

    .line 521
    :cond_2
    move v10, v5

    .line 525
    .end local v5    # "type":I
    .local v10, "type":I
    :goto_1
    const/4 v5, 0x1

    if-eqz v10, :cond_7

    if-eq v10, v5, :cond_5

    if-eq v10, v9, :cond_3

    .line 567
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Type not recognized ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5}, Ljava/lang/Exception;-><init>()V

    const-string v6, "PowerManagerService.WLLog"

    invoke-static {v6, v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 539
    :cond_3
    array-length v6, v1

    if-ge v6, v9, :cond_4

    .line 540
    goto :goto_2

    .line 543
    :cond_4
    const/4 v2, 0x0

    .line 544
    .local v2, "flags":I
    aget-byte v4, v1, v4

    and-int/lit8 v11, v4, 0x7f

    .line 545
    .local v11, "tagIndex":I
    iget-object v4, v0, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;

    invoke-virtual {v4, v11}, Lcom/android/server/power/WakeLockLog$TagDatabase;->getTag(I)Lcom/android/server/power/WakeLockLog$TagData;

    move-result-object v12

    .line 546
    .local v12, "tag":Lcom/android/server/power/WakeLockLog$TagData;
    aget-byte v4, v1, v5

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    add-long v13, v4, p2

    .line 547
    .local v13, "time":J
    const/4 v7, 0x2

    move-object v4, v3

    move-wide v5, v13

    move-object v8, v12

    move v9, v2

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/power/WakeLockLog$LogEntry;->set(JILcom/android/server/power/WakeLockLog$TagData;I)V

    .line 548
    return-object v3

    .line 527
    .end local v2    # "flags":I
    .end local v11    # "tagIndex":I
    .end local v12    # "tag":Lcom/android/server/power/WakeLockLog$TagData;
    .end local v13    # "time":J
    :cond_5
    array-length v6, v1

    if-ge v6, v7, :cond_6

    .line 528
    goto :goto_2

    .line 531
    :cond_6
    aget-byte v2, v1, v4

    and-int/lit8 v2, v2, 0x3f

    .line 532
    .restart local v2    # "flags":I
    aget-byte v4, v1, v5

    and-int/lit8 v11, v4, 0x7f

    .line 533
    .restart local v11    # "tagIndex":I
    iget-object v4, v0, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;

    invoke-virtual {v4, v11}, Lcom/android/server/power/WakeLockLog$TagDatabase;->getTag(I)Lcom/android/server/power/WakeLockLog$TagData;

    move-result-object v12

    .line 534
    .restart local v12    # "tag":Lcom/android/server/power/WakeLockLog$TagData;
    aget-byte v4, v1, v9

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    add-long v13, v4, p2

    .line 535
    .restart local v13    # "time":J
    const/4 v7, 0x1

    move-object v4, v3

    move-wide v5, v13

    move-object v8, v12

    move v9, v2

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/power/WakeLockLog$LogEntry;->set(JILcom/android/server/power/WakeLockLog$TagData;I)V

    .line 536
    return-object v3

    .line 551
    .end local v2    # "flags":I
    .end local v11    # "tagIndex":I
    .end local v12    # "tag":Lcom/android/server/power/WakeLockLog$TagData;
    .end local v13    # "time":J
    :cond_7
    array-length v4, v1

    const/16 v8, 0x9

    if-ge v4, v8, :cond_8

    .line 552
    nop

    .line 570
    :goto_2
    return-object v2

    .line 555
    :cond_8
    aget-byte v2, v1, v5

    int-to-long v4, v2

    const-wide/16 v11, 0xff

    and-long/2addr v4, v11

    const/16 v2, 0x38

    shl-long/2addr v4, v2

    aget-byte v2, v1, v9

    int-to-long v8, v2

    and-long/2addr v8, v11

    const/16 v2, 0x30

    shl-long/2addr v8, v2

    or-long/2addr v4, v8

    aget-byte v2, v1, v7

    int-to-long v7, v2

    and-long/2addr v7, v11

    const/16 v2, 0x28

    shl-long/2addr v7, v2

    or-long/2addr v4, v7

    const/4 v2, 0x4

    aget-byte v2, v1, v2

    int-to-long v7, v2

    and-long/2addr v7, v11

    const/16 v2, 0x20

    shl-long/2addr v7, v2

    or-long/2addr v4, v7

    const/4 v2, 0x5

    aget-byte v2, v1, v2

    int-to-long v7, v2

    and-long/2addr v7, v11

    const/16 v2, 0x18

    shl-long/2addr v7, v2

    or-long/2addr v4, v7

    aget-byte v2, v1, v6

    int-to-long v6, v2

    and-long/2addr v6, v11

    const/16 v2, 0x10

    shl-long/2addr v6, v2

    or-long/2addr v4, v6

    const/4 v2, 0x7

    aget-byte v2, v1, v2

    int-to-long v6, v2

    and-long/2addr v6, v11

    const/16 v2, 0x8

    shl-long/2addr v6, v2

    or-long/2addr v4, v6

    aget-byte v2, v1, v2

    int-to-long v6, v2

    and-long/2addr v6, v11

    or-long v11, v4, v6

    .line 563
    .local v11, "time":J
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v3

    move-wide v5, v11

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/power/WakeLockLog$LogEntry;->set(JILcom/android/server/power/WakeLockLog$TagData;I)V

    .line 564
    return-object v3

    .line 514
    .end local v3    # "entry":Lcom/android/server/power/WakeLockLog$LogEntry;
    .end local v10    # "type":I
    .end local v11    # "time":J
    :cond_9
    :goto_3
    return-object v2
.end method

.method toBytes(Lcom/android/server/power/WakeLockLog$LogEntry;[BJ)I
    .locals 11
    .param p1, "entry"    # Lcom/android/server/power/WakeLockLog$LogEntry;
    .param p2, "bytes"    # [B
    .param p3, "timeReference"    # J

    .line 607
    const/4 v0, -0x1

    .line 608
    .local v0, "sizeNeeded":I
    iget v1, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->type:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v4, :cond_2

    if-ne v1, v2, :cond_1

    .line 628
    const/4 v0, 0x2

    .line 629
    if-eqz p2, :cond_5

    array-length v1, p2

    if-lt v1, v0, :cond_5

    .line 630
    iget-wide v1, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    invoke-direct {p0, p3, p4, v1, v2}, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->getRelativeTime(JJ)I

    move-result v1

    .line 631
    .local v1, "relativeTime":I
    if-gez v1, :cond_0

    .line 633
    return v1

    .line 635
    :cond_0
    iget-object v2, p0, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;

    iget-object v5, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    invoke-virtual {v2, v5}, Lcom/android/server/power/WakeLockLog$TagDatabase;->getTagIndex(Lcom/android/server/power/WakeLockLog$TagData;)I

    move-result v2

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, p2, v3

    .line 636
    and-int/lit16 v2, v1, 0xff

    int-to-byte v2, v2

    aput-byte v2, p2, v4

    .line 640
    .end local v1    # "relativeTime":I
    goto/16 :goto_0

    .line 660
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 610
    :cond_2
    const/4 v0, 0x3

    .line 611
    if-eqz p2, :cond_5

    array-length v1, p2

    if-lt v1, v0, :cond_5

    .line 612
    iget-wide v5, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    invoke-direct {p0, p3, p4, v5, v6}, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->getRelativeTime(JJ)I

    move-result v1

    .line 613
    .restart local v1    # "relativeTime":I
    if-gez v1, :cond_3

    .line 615
    return v1

    .line 617
    :cond_3
    iget v5, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->flags:I

    and-int/lit8 v5, v5, 0x3f

    or-int/lit8 v5, v5, 0x40

    int-to-byte v5, v5

    aput-byte v5, p2, v3

    .line 619
    iget-object v3, p0, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;

    iget-object v5, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    invoke-virtual {v3, v5}, Lcom/android/server/power/WakeLockLog$TagDatabase;->getTagIndex(Lcom/android/server/power/WakeLockLog$TagData;)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, p2, v4

    .line 620
    and-int/lit16 v3, v1, 0xff

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    .line 624
    .end local v1    # "relativeTime":I
    goto :goto_0

    .line 644
    :cond_4
    const/16 v0, 0x9

    .line 645
    iget-wide v5, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    .line 646
    .local v5, "time":J
    if-eqz p2, :cond_5

    array-length v1, p2

    if-lt v1, v0, :cond_5

    .line 647
    aput-byte v3, p2, v3

    .line 648
    const/16 v1, 0x38

    shr-long v7, v5, v1

    const-wide/16 v9, 0xff

    and-long/2addr v7, v9

    long-to-int v1, v7

    int-to-byte v1, v1

    aput-byte v1, p2, v4

    .line 649
    const/16 v1, 0x30

    shr-long v3, v5, v1

    and-long/2addr v3, v9

    long-to-int v1, v3

    int-to-byte v1, v1

    aput-byte v1, p2, v2

    .line 650
    const/4 v1, 0x3

    const/16 v2, 0x28

    shr-long v2, v5, v2

    and-long/2addr v2, v9

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 651
    const/4 v1, 0x4

    const/16 v2, 0x20

    shr-long v2, v5, v2

    and-long/2addr v2, v9

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 652
    const/4 v1, 0x5

    const/16 v2, 0x18

    shr-long v2, v5, v2

    and-long/2addr v2, v9

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 653
    const/4 v1, 0x6

    const/16 v2, 0x10

    shr-long v2, v5, v2

    and-long/2addr v2, v9

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 654
    const/4 v1, 0x7

    const/16 v2, 0x8

    shr-long v3, v5, v2

    and-long/2addr v3, v9

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p2, v1

    .line 655
    and-long v3, v5, v9

    long-to-int v1, v3

    int-to-byte v1, v1

    aput-byte v1, p2, v2

    .line 663
    .end local v5    # "time":J
    :cond_5
    :goto_0
    return v0
.end method
