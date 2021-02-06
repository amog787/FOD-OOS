.class public Lcom/android/server/net/NetworkStatsCollection;
.super Ljava/lang/Object;
.source "NetworkStatsCollection.java"

# interfaces
.implements Lcom/android/internal/util/FileRotator$Reader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkStatsCollection$Key;
    }
.end annotation


# static fields
.field private static final FILE_MAGIC:I = 0x414e4554

.field private static final VERSION_NETWORK_INIT:I = 0x1

.field private static final VERSION_UID_INIT:I = 0x1

.field private static final VERSION_UID_WITH_IDENT:I = 0x2

.field private static final VERSION_UID_WITH_SET:I = 0x4

.field private static final VERSION_UID_WITH_TAG:I = 0x3

.field private static final VERSION_UNIFIED_INIT:I = 0x10


# instance fields
.field private final mBucketDuration:J

.field private mDirty:Z

.field private mEndMillis:J

.field private mStartMillis:J

.field private mStats:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/net/NetworkStatsCollection$Key;",
            "Landroid/net/NetworkStatsHistory;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalBytes:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "bucketDuration"    # J

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    .line 107
    iput-wide p1, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    .line 108
    invoke-virtual {p0}, Lcom/android/server/net/NetworkStatsCollection;->reset()V

    .line 109
    return-void
.end method

.method private dumpCheckin(Ljava/io/PrintWriter;JJLandroid/net/NetworkTemplate;Ljava/lang/String;)V
    .locals 15
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "start"    # J
    .param p4, "end"    # J
    .param p6, "groupTemplate"    # Landroid/net/NetworkTemplate;
    .param p7, "groupPrefix"    # Ljava/lang/String;

    .line 720
    move-object v0, p0

    move-object/from16 v1, p1

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 723
    .local v2, "grouped":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, v0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 724
    iget-object v4, v0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 725
    .local v4, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    iget-object v5, v0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkStatsHistory;

    .line 727
    .local v5, "value":Landroid/net/NetworkStatsHistory;
    iget-object v6, v4, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    move-object/from16 v12, p6

    invoke-static {v12, v6}, Lcom/android/server/net/NetworkStatsCollection;->templateMatches(Landroid/net/NetworkTemplate;Lcom/android/server/net/NetworkIdentitySet;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_2

    .line 728
    :cond_0
    iget v6, v4, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    const/16 v7, 0x3e8

    if-lt v6, v7, :cond_1

    goto :goto_2

    .line 730
    :cond_1
    new-instance v6, Lcom/android/server/net/NetworkStatsCollection$Key;

    const/4 v7, 0x0

    iget v8, v4, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    iget v9, v4, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    iget v10, v4, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/android/server/net/NetworkStatsCollection$Key;-><init>(Lcom/android/server/net/NetworkIdentitySet;III)V

    move-object v13, v6

    .line 731
    .local v13, "groupKey":Lcom/android/server/net/NetworkStatsCollection$Key;
    invoke-virtual {v2, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkStatsHistory;

    .line 732
    .local v6, "groupHistory":Landroid/net/NetworkStatsHistory;
    if-nez v6, :cond_2

    .line 733
    new-instance v7, Landroid/net/NetworkStatsHistory;

    invoke-virtual {v5}, Landroid/net/NetworkStatsHistory;->getBucketDuration()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Landroid/net/NetworkStatsHistory;-><init>(J)V

    move-object v6, v7

    .line 734
    invoke-virtual {v2, v13, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v14, v6

    goto :goto_1

    .line 732
    :cond_2
    move-object v14, v6

    .line 736
    .end local v6    # "groupHistory":Landroid/net/NetworkStatsHistory;
    .local v14, "groupHistory":Landroid/net/NetworkStatsHistory;
    :goto_1
    move-object v6, v14

    move-object v7, v5

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    invoke-virtual/range {v6 .. v11}, Landroid/net/NetworkStatsHistory;->recordHistory(Landroid/net/NetworkStatsHistory;JJ)V

    .line 723
    .end local v4    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    .end local v5    # "value":Landroid/net/NetworkStatsHistory;
    .end local v13    # "groupKey":Lcom/android/server/net/NetworkStatsCollection$Key;
    .end local v14    # "groupHistory":Landroid/net/NetworkStatsHistory;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v12, p6

    .line 739
    .end local v3    # "i":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 740
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 741
    .restart local v4    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkStatsHistory;

    .line 743
    .restart local v5    # "value":Landroid/net/NetworkStatsHistory;
    invoke-virtual {v5}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v6

    if-nez v6, :cond_4

    move-object/from16 v6, p7

    goto :goto_4

    .line 745
    :cond_4
    const-string v6, "c,"

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 746
    move-object/from16 v6, p7

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v7, 0x2c

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 747
    iget v8, v4, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 748
    iget v8, v4, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    invoke-static {v8}, Landroid/net/NetworkStats;->setToCheckinString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 749
    iget v7, v4, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 750
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 752
    invoke-virtual {v5, v1}, Landroid/net/NetworkStatsHistory;->dumpCheckin(Ljava/io/PrintWriter;)V

    .line 739
    .end local v4    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    .end local v5    # "value":Landroid/net/NetworkStatsHistory;
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    move-object/from16 v6, p7

    .line 754
    .end local v3    # "i":I
    return-void
.end method

.method private estimateBuckets()I
    .locals 4

    .line 659
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mEndMillis:J

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    sub-long/2addr v0, v2

    const-wide v2, 0xb43e9400L

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private findOrCreateHistory(Lcom/android/server/net/NetworkIdentitySet;III)Landroid/net/NetworkStatsHistory;
    .locals 7
    .param p1, "ident"    # Lcom/android/server/net/NetworkIdentitySet;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I

    .line 431
    new-instance v0, Lcom/android/server/net/NetworkStatsCollection$Key;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/net/NetworkStatsCollection$Key;-><init>(Lcom/android/server/net/NetworkIdentitySet;III)V

    .line 432
    .local v0, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkStatsHistory;

    .line 435
    .local v1, "existing":Landroid/net/NetworkStatsHistory;
    const/4 v2, 0x0

    .line 436
    .local v2, "updated":Landroid/net/NetworkStatsHistory;
    if-nez v1, :cond_0

    .line 437
    new-instance v3, Landroid/net/NetworkStatsHistory;

    iget-wide v4, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    const/16 v6, 0xa

    invoke-direct {v3, v4, v5, v6}, Landroid/net/NetworkStatsHistory;-><init>(JI)V

    move-object v2, v3

    goto :goto_0

    .line 438
    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkStatsHistory;->getBucketDuration()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    .line 439
    new-instance v3, Landroid/net/NetworkStatsHistory;

    iget-wide v4, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    invoke-direct {v3, v1, v4, v5}, Landroid/net/NetworkStatsHistory;-><init>(Landroid/net/NetworkStatsHistory;J)V

    move-object v2, v3

    .line 442
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 443
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    return-object v2

    .line 446
    :cond_2
    return-object v1
.end method

.method private getSortedKeys()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/net/NetworkStatsCollection$Key;",
            ">;"
        }
    .end annotation

    .line 664
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 665
    .local v0, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsCollection$Key;>;"
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 666
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 667
    return-object v0
.end method

.method private noteRecordedHistory(JJJ)V
    .locals 2
    .param p1, "startMillis"    # J
    .param p3, "endMillis"    # J
    .param p5, "totalBytes"    # J

    .line 652
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    iput-wide p1, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    .line 653
    :cond_0
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mEndMillis:J

    cmp-long v0, p3, v0

    if-lez v0, :cond_1

    iput-wide p3, p0, Lcom/android/server/net/NetworkStatsCollection;->mEndMillis:J

    .line 654
    :cond_1
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mTotalBytes:J

    add-long/2addr v0, p5

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mTotalBytes:J

    .line 655
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mDirty:Z

    .line 656
    return-void
.end method

.method private recordHistory(Lcom/android/server/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;)V
    .locals 8
    .param p1, "key"    # Lcom/android/server/net/NetworkStatsCollection$Key;
    .param p2, "history"    # Landroid/net/NetworkStatsHistory;

    .line 406
    invoke-virtual {p2}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 407
    :cond_0
    invoke-virtual {p2}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/net/NetworkStatsHistory;->getTotalBytes()J

    move-result-wide v6

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/net/NetworkStatsCollection;->noteRecordedHistory(JJJ)V

    .line 409
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkStatsHistory;

    .line 410
    .local v0, "target":Landroid/net/NetworkStatsHistory;
    if-nez v0, :cond_1

    .line 411
    new-instance v1, Landroid/net/NetworkStatsHistory;

    invoke-virtual {p2}, Landroid/net/NetworkStatsHistory;->getBucketDuration()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Landroid/net/NetworkStatsHistory;-><init>(J)V

    move-object v0, v1

    .line 412
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    :cond_1
    invoke-virtual {v0, p2}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    .line 415
    return-void
.end method

.method private static templateMatches(Landroid/net/NetworkTemplate;Lcom/android/server/net/NetworkIdentitySet;)Z
    .locals 3
    .param p0, "template"    # Landroid/net/NetworkTemplate;
    .param p1, "identSet"    # Lcom/android/server/net/NetworkIdentitySet;

    .line 761
    invoke-virtual {p1}, Lcom/android/server/net/NetworkIdentitySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkIdentity;

    .line 762
    .local v1, "ident":Landroid/net/NetworkIdentity;
    invoke-virtual {p0, v1}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 763
    const/4 v0, 0x1

    return v0

    .line 765
    .end local v1    # "ident":Landroid/net/NetworkIdentity;
    :cond_0
    goto :goto_0

    .line 766
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public clear()V
    .locals 0

    .line 112
    invoke-virtual {p0}, Lcom/android/server/net/NetworkStatsCollection;->reset()V

    .line 113
    return-void
.end method

.method public clearDirty()V
    .locals 1

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mDirty:Z

    .line 153
    return-void
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 4
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 671
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsCollection;->getSortedKeys()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 672
    .local v1, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    const-string v2, "ident="

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual {v2}, Lcom/android/server/net/NetworkIdentitySet;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 673
    const-string v2, " uid="

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 674
    const-string v2, " set="

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    invoke-static {v2}, Landroid/net/NetworkStats;->setToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 675
    const-string v2, " tag="

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    invoke-static {v2}, Landroid/net/NetworkStats;->tagToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 677
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkStatsHistory;

    .line 678
    .local v2, "history":Landroid/net/NetworkStatsHistory;
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 679
    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/net/NetworkStatsHistory;->dump(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    .line 680
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 681
    .end local v1    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    .end local v2    # "history":Landroid/net/NetworkStatsHistory;
    goto :goto_0

    .line 682
    :cond_0
    return-void
.end method

.method public dumpCheckin(Ljava/io/PrintWriter;JJ)V
    .locals 16
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .line 708
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateMobileWildcard()Landroid/net/NetworkTemplate;

    move-result-object v6

    const-string v7, "cell"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/net/NetworkStatsCollection;->dumpCheckin(Ljava/io/PrintWriter;JJLandroid/net/NetworkTemplate;Ljava/lang/String;)V

    .line 709
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v14

    const-string/jumbo v15, "wifi"

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    invoke-direct/range {v8 .. v15}, Lcom/android/server/net/NetworkStatsCollection;->dumpCheckin(Ljava/io/PrintWriter;JJLandroid/net/NetworkTemplate;Ljava/lang/String;)V

    .line 710
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v6

    const-string v7, "eth"

    invoke-direct/range {v0 .. v7}, Lcom/android/server/net/NetworkStatsCollection;->dumpCheckin(Ljava/io/PrintWriter;JJLandroid/net/NetworkTemplate;Ljava/lang/String;)V

    .line 711
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateBluetooth()Landroid/net/NetworkTemplate;

    move-result-object v14

    const-string v15, "bt"

    invoke-direct/range {v8 .. v15}, Lcom/android/server/net/NetworkStatsCollection;->dumpCheckin(Ljava/io/PrintWriter;JJLandroid/net/NetworkTemplate;Ljava/lang/String;)V

    .line 712
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 12
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "tag"    # J

    .line 685
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 687
    .local v0, "start":J
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsCollection;->getSortedKeys()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 688
    .local v3, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    const-wide v4, 0x20b00000001L

    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 691
    .local v4, "startStats":J
    const-wide v6, 0x10b00000001L

    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 692
    .local v8, "startKey":J
    iget-object v10, v3, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual {v10, p1, v6, v7}, Lcom/android/server/net/NetworkIdentitySet;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 693
    const-wide v6, 0x10500000002L

    iget v10, v3, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-virtual {p1, v6, v7, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 694
    const-wide v6, 0x10500000003L

    iget v10, v3, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    invoke-virtual {p1, v6, v7, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 695
    const-wide v6, 0x10500000004L

    iget v10, v3, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    invoke-virtual {p1, v6, v7, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 696
    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 699
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkStatsHistory;

    .line 700
    .local v6, "history":Landroid/net/NetworkStatsHistory;
    const-wide v10, 0x10b00000002L

    invoke-virtual {v6, p1, v10, v11}, Landroid/net/NetworkStatsHistory;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 701
    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 702
    .end local v3    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    .end local v4    # "startStats":J
    .end local v6    # "history":Landroid/net/NetworkStatsHistory;
    .end local v8    # "startKey":J
    goto :goto_0

    .line 704
    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 705
    return-void
.end method

.method public getEndMillis()J
    .locals 2

    .line 140
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mEndMillis:J

    return-wide v0
.end method

.method public getFirstAtomicBucketMillis()J
    .locals 5

    .line 132
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 133
    return-wide v2

    .line 135
    :cond_0
    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getHistory(Landroid/net/NetworkTemplate;Landroid/telephony/SubscriptionPlan;IIIIJJII)Landroid/net/NetworkStatsHistory;
    .locals 42
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "augmentPlan"    # Landroid/telephony/SubscriptionPlan;
    .param p3, "uid"    # I
    .param p4, "set"    # I
    .param p5, "tag"    # I
    .param p6, "fields"    # I
    .param p7, "start"    # J
    .param p9, "end"    # J
    .param p11, "accessLevel"    # I
    .param p12, "callerUid"    # I

    .line 216
    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v3, p6

    move/from16 v10, p12

    move/from16 v11, p11

    invoke-static {v2, v10, v11}, Lcom/android/server/net/NetworkStatsAccess;->isAccessibleToUser(III)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 223
    sub-long v4, p9, p7

    iget-wide v6, v1, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    div-long v12, v4, v6

    const-wide/16 v14, 0x0

    const-wide v4, 0x39ef8b000L

    div-long v16, v4, v6

    invoke-static/range {v12 .. v17}, Landroid/util/MathUtils;->constrain(JJJ)J

    move-result-wide v4

    long-to-int v12, v4

    .line 225
    .local v12, "bucketEstimate":I
    new-instance v0, Landroid/net/NetworkStatsHistory;

    iget-wide v4, v1, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    invoke-direct {v0, v4, v5, v12, v3}, Landroid/net/NetworkStatsHistory;-><init>(JII)V

    move-object v8, v0

    .line 229
    .local v8, "combined":Landroid/net/NetworkStatsHistory;
    cmp-long v0, p7, p9

    if-nez v0, :cond_0

    return-object v8

    .line 232
    :cond_0
    const-wide/16 v4, -0x1

    .line 233
    .local v4, "augmentStart":J
    const-wide/16 v6, -0x1

    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/telephony/SubscriptionPlan;->getDataUsageTime()J

    move-result-wide v13

    goto :goto_0

    .line 234
    :cond_1
    move-wide v13, v6

    :goto_0
    nop

    .line 236
    .local v13, "augmentEnd":J
    move-wide/from16 v15, p7

    .line 237
    .local v15, "collectStart":J
    move-wide/from16 v17, p9

    .line 239
    .local v17, "collectEnd":J
    cmp-long v0, v13, v6

    if-eqz v0, :cond_4

    .line 240
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/SubscriptionPlan;->cycleIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 241
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Range<Ljava/time/ZonedDateTime;>;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 242
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Range;

    .line 243
    .local v9, "cycle":Landroid/util/Range;, "Landroid/util/Range<Ljava/time/ZonedDateTime;>;"
    invoke-virtual {v9}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v19

    check-cast v19, Ljava/time/ZonedDateTime;

    invoke-virtual/range {v19 .. v19}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v19

    .line 244
    .local v19, "cycleStart":J
    invoke-virtual {v9}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v21

    check-cast v21, Ljava/time/ZonedDateTime;

    invoke-virtual/range {v21 .. v21}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v21

    .line 245
    .local v21, "cycleEnd":J
    cmp-long v23, v19, v13

    if-gtz v23, :cond_2

    cmp-long v23, v13, v21

    if-gez v23, :cond_2

    .line 246
    move-wide/from16 v4, v19

    .line 247
    move-wide v6, v15

    .end local v15    # "collectStart":J
    .local v6, "collectStart":J
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Long;->min(JJ)J

    move-result-wide v15

    .line 248
    .end local v6    # "collectStart":J
    .restart local v15    # "collectStart":J
    move-wide/from16 v6, v17

    .end local v17    # "collectEnd":J
    .local v6, "collectEnd":J
    invoke-static {v6, v7, v13, v14}, Ljava/lang/Long;->max(JJ)J

    move-result-wide v17

    .line 249
    .end local v6    # "collectEnd":J
    .restart local v17    # "collectEnd":J
    move-wide v6, v15

    move-wide/from16 v9, v17

    goto :goto_3

    .line 245
    :cond_2
    move-wide v6, v15

    move-wide/from16 v15, v17

    .line 251
    .end local v9    # "cycle":Landroid/util/Range;, "Landroid/util/Range<Ljava/time/ZonedDateTime;>;"
    .end local v17    # "collectEnd":J
    .end local v19    # "cycleStart":J
    .end local v21    # "cycleEnd":J
    .local v6, "collectStart":J
    .local v15, "collectEnd":J
    move-wide/from16 v17, v15

    move-wide v15, v6

    const-wide/16 v6, -0x1

    goto :goto_1

    .line 241
    .end local v6    # "collectStart":J
    .local v15, "collectStart":J
    .restart local v17    # "collectEnd":J
    :cond_3
    move-wide v6, v15

    move-wide/from16 v15, v17

    .end local v17    # "collectEnd":J
    .restart local v6    # "collectStart":J
    .local v15, "collectEnd":J
    goto :goto_2

    .line 239
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Range<Ljava/time/ZonedDateTime;>;>;"
    .end local v6    # "collectStart":J
    .local v15, "collectStart":J
    .restart local v17    # "collectEnd":J
    :cond_4
    move-wide v6, v15

    move-wide/from16 v15, v17

    .line 254
    .end local v17    # "collectEnd":J
    .restart local v6    # "collectStart":J
    .local v15, "collectEnd":J
    :goto_2
    move-wide v9, v15

    .end local v15    # "collectEnd":J
    .local v9, "collectEnd":J
    :goto_3
    const-wide/16 v15, -0x1

    cmp-long v0, v4, v15

    if-eqz v0, :cond_5

    .line 256
    invoke-virtual {v1, v4, v5}, Lcom/android/server/net/NetworkStatsCollection;->roundUp(J)J

    move-result-wide v4

    .line 257
    invoke-virtual {v1, v13, v14}, Lcom/android/server/net/NetworkStatsCollection;->roundDown(J)J

    move-result-wide v13

    .line 259
    invoke-virtual {v1, v6, v7}, Lcom/android/server/net/NetworkStatsCollection;->roundDown(J)J

    move-result-wide v6

    .line 260
    invoke-virtual {v1, v9, v10}, Lcom/android/server/net/NetworkStatsCollection;->roundUp(J)J

    move-result-wide v9

    move-wide/from16 v19, v4

    move-wide/from16 v21, v6

    move-wide/from16 v25, v9

    move-wide/from16 v27, v13

    goto :goto_4

    .line 254
    :cond_5
    move-wide/from16 v19, v4

    move-wide/from16 v21, v6

    move-wide/from16 v25, v9

    move-wide/from16 v27, v13

    .line 263
    .end local v4    # "augmentStart":J
    .end local v6    # "collectStart":J
    .end local v9    # "collectEnd":J
    .end local v13    # "augmentEnd":J
    .local v19, "augmentStart":J
    .local v21, "collectStart":J
    .local v25, "collectEnd":J
    .local v27, "augmentEnd":J
    :goto_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget-object v4, v1, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v0, v4, :cond_a

    .line 264
    iget-object v4, v1, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 265
    .local v4, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    iget v5, v4, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    if-ne v5, v2, :cond_8

    iget v5, v4, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    move/from16 v10, p4

    invoke-static {v10, v5}, Landroid/net/NetworkStats;->setMatches(II)Z

    move-result v5

    if-eqz v5, :cond_7

    iget v5, v4, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    move/from16 v9, p5

    if-ne v5, v9, :cond_6

    iget-object v5, v4, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    .line 266
    move-object/from16 v6, p1

    invoke-static {v6, v5}, Lcom/android/server/net/NetworkStatsCollection;->templateMatches(Landroid/net/NetworkTemplate;Lcom/android/server/net/NetworkIdentitySet;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 267
    iget-object v5, v1, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkStatsHistory;

    .line 268
    .local v5, "value":Landroid/net/NetworkStatsHistory;
    move-object v13, v8

    move-object v14, v5

    move-wide/from16 v15, v21

    move-wide/from16 v17, v25

    invoke-virtual/range {v13 .. v18}, Landroid/net/NetworkStatsHistory;->recordHistory(Landroid/net/NetworkStatsHistory;JJ)V

    goto :goto_7

    .line 265
    .end local v5    # "value":Landroid/net/NetworkStatsHistory;
    :cond_6
    move-object/from16 v6, p1

    goto :goto_7

    :cond_7
    move-object/from16 v6, p1

    goto :goto_6

    :cond_8
    move-object/from16 v6, p1

    move/from16 v10, p4

    :goto_6
    move/from16 v9, p5

    .line 263
    .end local v4    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    :cond_9
    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_a
    move-object/from16 v6, p1

    move/from16 v10, p4

    move/from16 v9, p5

    .line 272
    .end local v0    # "i":I
    const-wide/16 v4, -0x1

    cmp-long v0, v19, v4

    if-eqz v0, :cond_10

    .line 273
    const/16 v18, 0x0

    move-object v13, v8

    move-wide/from16 v14, v19

    move-wide/from16 v16, v27

    invoke-virtual/range {v13 .. v18}, Landroid/net/NetworkStatsHistory;->getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v7

    .line 278
    .local v7, "entry":Landroid/net/NetworkStatsHistory$Entry;
    iget-wide v4, v7, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    const-wide/16 v14, 0x0

    cmp-long v0, v4, v14

    const-string v4, "NetworkStats"

    if-eqz v0, :cond_c

    iget-wide v5, v7, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    cmp-long v0, v5, v14

    if-nez v0, :cond_b

    goto :goto_8

    :cond_b
    move-wide v5, v14

    goto :goto_b

    .line 287
    :cond_c
    :goto_8
    :try_start_0
    new-instance v18, Landroid/net/NetworkStats$Entry;

    const-wide/16 v30, 0x1

    const-wide/16 v32, 0x0

    const-wide/16 v34, 0x1

    const-wide/16 v36, 0x0

    const-wide/16 v38, 0x0

    move-object/from16 v29, v18

    invoke-direct/range {v29 .. v39}, Landroid/net/NetworkStats$Entry;-><init>(JJJJJ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v13, v8

    move-wide v5, v14

    move-wide/from16 v14, v19

    move-wide/from16 v16, v27

    :try_start_1
    invoke-virtual/range {v13 .. v18}, Landroid/net/NetworkStatsHistory;->recordData(JJLandroid/net/NetworkStats$Entry;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 291
    goto :goto_a

    .line 289
    :catch_0
    move-exception v0

    goto :goto_9

    :catch_1
    move-exception v0

    move-wide v5, v14

    .line 290
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :goto_9
    const-string v13, "Caught an IllegalArgumentException"

    invoke-static {v4, v13, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 293
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_a
    move-object v13, v8

    move-wide/from16 v14, v19

    move-wide/from16 v16, v27

    move-object/from16 v18, v7

    invoke-virtual/range {v13 .. v18}, Landroid/net/NetworkStatsHistory;->getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    .line 296
    :goto_b
    iget-wide v13, v7, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v5, v7, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v13, v5

    .line 297
    .local v13, "rawBytes":J
    iget-wide v5, v7, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    .line 298
    .local v5, "rawRxBytes":J
    iget-wide v10, v7, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    .line 299
    .local v10, "rawTxBytes":J
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/SubscriptionPlan;->getDataUsageBytes()J

    move-result-wide v17

    .line 300
    .local v17, "targetBytes":J
    move-wide/from16 v29, v17

    move-wide/from16 v31, v5

    move-wide/from16 v33, v13

    invoke-static/range {v29 .. v34}, Landroid/net/NetworkStatsHistory;->multiplySafe(JJJ)J

    move-result-wide v23

    .line 301
    .local v23, "targetRxBytes":J
    move-wide/from16 v31, v10

    invoke-static/range {v29 .. v34}, Landroid/net/NetworkStatsHistory;->multiplySafe(JJJ)J

    move-result-wide v35

    .line 304
    .local v35, "targetTxBytes":J
    invoke-virtual {v8}, Landroid/net/NetworkStatsHistory;->getTotalBytes()J

    move-result-wide v37

    .line 305
    .local v37, "beforeTotal":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    invoke-virtual {v8}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v15

    if-ge v0, v15, :cond_e

    .line 306
    invoke-virtual {v8, v0, v7}, Landroid/net/NetworkStatsHistory;->getValues(ILandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    .line 307
    move-wide/from16 v40, v13

    .end local v13    # "rawBytes":J
    .local v40, "rawBytes":J
    iget-wide v13, v7, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    cmp-long v13, v13, v19

    if-ltz v13, :cond_d

    iget-wide v13, v7, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    iget-wide v2, v7, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    add-long/2addr v13, v2

    cmp-long v2, v13, v27

    if-gtz v2, :cond_d

    .line 309
    iget-wide v2, v7, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    move-wide/from16 v29, v23

    move-wide/from16 v31, v2

    move-wide/from16 v33, v5

    invoke-static/range {v29 .. v34}, Landroid/net/NetworkStatsHistory;->multiplySafe(JJJ)J

    move-result-wide v2

    iput-wide v2, v7, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    .line 310
    iget-wide v2, v7, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    move-wide/from16 v29, v35

    move-wide/from16 v31, v2

    move-wide/from16 v33, v10

    invoke-static/range {v29 .. v34}, Landroid/net/NetworkStatsHistory;->multiplySafe(JJJ)J

    move-result-wide v2

    iput-wide v2, v7, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    .line 313
    const-wide/16 v2, 0x0

    iput-wide v2, v7, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    .line 314
    iput-wide v2, v7, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    .line 315
    invoke-virtual {v8, v0, v7}, Landroid/net/NetworkStatsHistory;->setValues(ILandroid/net/NetworkStatsHistory$Entry;)V

    .line 305
    :cond_d
    add-int/lit8 v0, v0, 0x1

    move/from16 v2, p3

    move/from16 v3, p6

    move-wide/from16 v13, v40

    goto :goto_c

    .end local v40    # "rawBytes":J
    .restart local v13    # "rawBytes":J
    :cond_e
    move-wide/from16 v40, v13

    .line 319
    .end local v0    # "i":I
    .end local v13    # "rawBytes":J
    .restart local v40    # "rawBytes":J
    invoke-virtual {v8}, Landroid/net/NetworkStatsHistory;->getTotalBytes()J

    move-result-wide v2

    sub-long v2, v2, v37

    .line 320
    .local v2, "deltaTotal":J
    const-wide/16 v13, 0x0

    cmp-long v0, v2, v13

    if-eqz v0, :cond_f

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Augmented network usage by "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, " bytes"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_f
    new-instance v0, Landroid/net/NetworkStatsHistory;

    iget-wide v13, v1, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    move/from16 v15, p6

    invoke-direct {v0, v13, v14, v12, v15}, Landroid/net/NetworkStatsHistory;-><init>(JII)V

    .line 327
    .local v0, "sliced":Landroid/net/NetworkStatsHistory;
    move-object v4, v0

    move-wide v13, v5

    .end local v5    # "rawRxBytes":J
    .local v13, "rawRxBytes":J
    move-object v5, v8

    move-object/from16 v16, v7

    .end local v7    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .local v16, "entry":Landroid/net/NetworkStatsHistory$Entry;
    move-wide/from16 v6, p7

    move-object/from16 v29, v8

    .end local v8    # "combined":Landroid/net/NetworkStatsHistory;
    .local v29, "combined":Landroid/net/NetworkStatsHistory;
    move-wide/from16 v8, p9

    invoke-virtual/range {v4 .. v9}, Landroid/net/NetworkStatsHistory;->recordHistory(Landroid/net/NetworkStatsHistory;JJ)V

    .line 328
    return-object v0

    .line 330
    .end local v0    # "sliced":Landroid/net/NetworkStatsHistory;
    .end local v2    # "deltaTotal":J
    .end local v10    # "rawTxBytes":J
    .end local v13    # "rawRxBytes":J
    .end local v16    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .end local v17    # "targetBytes":J
    .end local v23    # "targetRxBytes":J
    .end local v29    # "combined":Landroid/net/NetworkStatsHistory;
    .end local v35    # "targetTxBytes":J
    .end local v37    # "beforeTotal":J
    .end local v40    # "rawBytes":J
    .restart local v8    # "combined":Landroid/net/NetworkStatsHistory;
    :cond_10
    move-object/from16 v29, v8

    .end local v8    # "combined":Landroid/net/NetworkStatsHistory;
    .restart local v29    # "combined":Landroid/net/NetworkStatsHistory;
    return-object v29

    .line 217
    .end local v12    # "bucketEstimate":I
    .end local v19    # "augmentStart":J
    .end local v21    # "collectStart":J
    .end local v25    # "collectEnd":J
    .end local v27    # "augmentEnd":J
    .end local v29    # "combined":Landroid/net/NetworkStatsHistory;
    :cond_11
    move v15, v3

    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Network stats history of uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is forbidden for caller "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p12

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRelevantUids(I)[I
    .locals 1
    .param p1, "accessLevel"    # I

    .line 189
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/net/NetworkStatsCollection;->getRelevantUids(II)[I

    move-result-object v0

    return-object v0
.end method

.method public getRelevantUids(II)[I
    .locals 5
    .param p1, "accessLevel"    # I
    .param p2, "callerUid"    # I

    .line 194
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    .line 195
    .local v0, "uids":Landroid/util/IntArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 196
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 197
    .local v2, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    iget v3, v2, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-static {v3, p2, p1}, Lcom/android/server/net/NetworkStatsAccess;->isAccessibleToUser(III)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 198
    iget v3, v2, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-virtual {v0, v3}, Landroid/util/IntArray;->binarySearch(I)I

    move-result v3

    .line 200
    .local v3, "j":I
    if-gez v3, :cond_0

    .line 201
    not-int v3, v3

    .line 202
    iget v4, v2, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-virtual {v0, v3, v4}, Landroid/util/IntArray;->add(II)V

    .line 195
    .end local v2    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    .end local v3    # "j":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 206
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object v1

    return-object v1
.end method

.method public getStartMillis()J
    .locals 2

    .line 124
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    return-wide v0
.end method

.method public getSummary(Landroid/net/NetworkTemplate;JJII)Landroid/net/NetworkStats;
    .locals 17
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J
    .param p6, "accessLevel"    # I
    .param p7, "callerUid"    # I

    .line 340
    move-object/from16 v0, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 342
    .local v9, "now":J
    new-instance v1, Landroid/net/NetworkStats;

    sub-long v2, p4, p2

    const/16 v4, 0x18

    invoke-direct {v1, v2, v3, v4}, Landroid/net/NetworkStats;-><init>(JI)V

    move-object v11, v1

    .line 345
    .local v11, "stats":Landroid/net/NetworkStats;
    cmp-long v1, p2, p4

    if-nez v1, :cond_0

    return-object v11

    .line 347
    :cond_0
    new-instance v1, Landroid/net/NetworkStats$Entry;

    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    move-object v12, v1

    .line 348
    .local v12, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v1, 0x0

    .line 350
    .local v1, "historyEntry":Landroid/net/NetworkStatsHistory$Entry;
    const/4 v2, 0x0

    move-object v13, v1

    move v14, v2

    .end local v1    # "historyEntry":Landroid/net/NetworkStatsHistory$Entry;
    .local v13, "historyEntry":Landroid/net/NetworkStatsHistory$Entry;
    .local v14, "i":I
    :goto_0
    iget-object v1, v0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v14, v1, :cond_4

    .line 351
    iget-object v1, v0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 352
    .local v15, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    iget-object v1, v15, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    move-object/from16 v8, p1

    invoke-static {v8, v1}, Lcom/android/server/net/NetworkStatsCollection;->templateMatches(Landroid/net/NetworkTemplate;Lcom/android/server/net/NetworkIdentitySet;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, v15, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    .line 353
    move/from16 v6, p6

    move/from16 v7, p7

    invoke-static {v1, v7, v6}, Lcom/android/server/net/NetworkStatsAccess;->isAccessibleToUser(III)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, v15, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    const/16 v2, 0x3e8

    if-ge v1, v2, :cond_3

    .line 355
    iget-object v1, v0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Landroid/net/NetworkStatsHistory;

    .line 356
    .local v16, "value":Landroid/net/NetworkStatsHistory;
    move-object/from16 v1, v16

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide v6, v9

    move-object v8, v13

    invoke-virtual/range {v1 .. v8}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v1

    .line 358
    .end local v13    # "historyEntry":Landroid/net/NetworkStatsHistory$Entry;
    .restart local v1    # "historyEntry":Landroid/net/NetworkStatsHistory$Entry;
    sget-object v2, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iput-object v2, v12, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 359
    iget v2, v15, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    iput v2, v12, Landroid/net/NetworkStats$Entry;->uid:I

    .line 360
    iget v2, v15, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    iput v2, v12, Landroid/net/NetworkStats$Entry;->set:I

    .line 361
    iget v2, v15, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    iput v2, v12, Landroid/net/NetworkStats$Entry;->tag:I

    .line 362
    iget-object v2, v15, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual {v2}, Lcom/android/server/net/NetworkIdentitySet;->areAllMembersOnDefaultNetwork()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 363
    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iput v2, v12, Landroid/net/NetworkStats$Entry;->defaultNetwork:I

    .line 364
    iget-object v2, v15, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual {v2}, Lcom/android/server/net/NetworkIdentitySet;->isAnyMemberMetered()Z

    move-result v2

    iput v2, v12, Landroid/net/NetworkStats$Entry;->metered:I

    .line 365
    iget-object v2, v15, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual {v2}, Lcom/android/server/net/NetworkIdentitySet;->isAnyMemberRoaming()Z

    move-result v2

    iput v2, v12, Landroid/net/NetworkStats$Entry;->roaming:I

    .line 366
    iget-wide v2, v1, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iput-wide v2, v12, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 367
    iget-wide v2, v1, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    iput-wide v2, v12, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 368
    iget-wide v2, v1, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    iput-wide v2, v12, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 369
    iget-wide v2, v1, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    iput-wide v2, v12, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 370
    iget-wide v2, v1, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    iput-wide v2, v12, Landroid/net/NetworkStats$Entry;->operations:J

    .line 372
    invoke-virtual {v12}, Landroid/net/NetworkStats$Entry;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 373
    invoke-virtual {v11, v12}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 350
    .end local v15    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    .end local v16    # "value":Landroid/net/NetworkStatsHistory;
    :cond_2
    move-object v13, v1

    .end local v1    # "historyEntry":Landroid/net/NetworkStatsHistory$Entry;
    .restart local v13    # "historyEntry":Landroid/net/NetworkStatsHistory$Entry;
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 378
    .end local v14    # "i":I
    :cond_4
    return-object v11
.end method

.method public getTotalBytes()J
    .locals 2

    .line 144
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mTotalBytes:J

    return-wide v0
.end method

.method public isDirty()Z
    .locals 1

    .line 148
    iget-boolean v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mDirty:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 4

    .line 156
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mEndMillis:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public read(Ljava/io/DataInputStream;)V
    .locals 12
    .param p1, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 457
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 458
    .local v0, "magic":I
    const v1, 0x414e4554

    if-ne v0, v1, :cond_3

    .line 462
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 463
    .local v1, "version":I
    const/16 v2, 0x10

    if-ne v1, v2, :cond_2

    .line 466
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 467
    .local v2, "identSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 468
    new-instance v4, Lcom/android/server/net/NetworkIdentitySet;

    invoke-direct {v4, p1}, Lcom/android/server/net/NetworkIdentitySet;-><init>(Ljava/io/DataInputStream;)V

    .line 470
    .local v4, "ident":Lcom/android/server/net/NetworkIdentitySet;
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 471
    .local v5, "size":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    if-ge v6, v5, :cond_0

    .line 472
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 473
    .local v7, "uid":I
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 474
    .local v8, "set":I
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    .line 476
    .local v9, "tag":I
    new-instance v10, Lcom/android/server/net/NetworkStatsCollection$Key;

    invoke-direct {v10, v4, v7, v8, v9}, Lcom/android/server/net/NetworkStatsCollection$Key;-><init>(Lcom/android/server/net/NetworkIdentitySet;III)V

    .line 477
    .local v10, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    new-instance v11, Landroid/net/NetworkStatsHistory;

    invoke-direct {v11, p1}, Landroid/net/NetworkStatsHistory;-><init>(Ljava/io/DataInputStream;)V

    .line 478
    .local v11, "history":Landroid/net/NetworkStatsHistory;
    invoke-direct {p0, v10, v11}, Lcom/android/server/net/NetworkStatsCollection;->recordHistory(Lcom/android/server/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;)V

    .line 471
    .end local v7    # "uid":I
    .end local v8    # "set":I
    .end local v9    # "tag":I
    .end local v10    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    .end local v11    # "history":Landroid/net/NetworkStatsHistory;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 467
    .end local v4    # "ident":Lcom/android/server/net/NetworkIdentitySet;
    .end local v5    # "size":I
    .end local v6    # "j":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 481
    .end local v3    # "i":I
    :cond_1
    nop

    .line 487
    .end local v2    # "identSize":I
    return-void

    .line 484
    :cond_2
    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unexpected version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 459
    .end local v1    # "version":I
    :cond_3
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unexpected magic: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public read(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 452
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkStatsCollection;->read(Ljava/io/DataInputStream;)V

    .line 453
    return-void
.end method

.method public readLegacyNetwork(Ljava/io/File;)V
    .locals 11
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 524
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 526
    .local v0, "inputFile":Landroid/util/AtomicFile;
    const/4 v1, 0x0

    .line 528
    .local v1, "in":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v2

    .line 531
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 532
    .local v2, "magic":I
    const v3, 0x414e4554

    if-ne v2, v3, :cond_2

    .line 536
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 537
    .local v3, "version":I
    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 540
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 541
    .local v4, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_0

    .line 542
    new-instance v6, Lcom/android/server/net/NetworkIdentitySet;

    invoke-direct {v6, v1}, Lcom/android/server/net/NetworkIdentitySet;-><init>(Ljava/io/DataInputStream;)V

    .line 543
    .local v6, "ident":Lcom/android/server/net/NetworkIdentitySet;
    new-instance v7, Landroid/net/NetworkStatsHistory;

    invoke-direct {v7, v1}, Landroid/net/NetworkStatsHistory;-><init>(Ljava/io/DataInputStream;)V

    .line 545
    .local v7, "history":Landroid/net/NetworkStatsHistory;
    new-instance v8, Lcom/android/server/net/NetworkStatsCollection$Key;

    const/4 v9, 0x0

    const/4 v10, -0x1

    invoke-direct {v8, v6, v10, v10, v9}, Lcom/android/server/net/NetworkStatsCollection$Key;-><init>(Lcom/android/server/net/NetworkIdentitySet;III)V

    .line 546
    .local v8, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    invoke-direct {p0, v8, v7}, Lcom/android/server/net/NetworkStatsCollection;->recordHistory(Lcom/android/server/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;)V

    .line 541
    .end local v6    # "ident":Lcom/android/server/net/NetworkIdentitySet;
    .end local v7    # "history":Landroid/net/NetworkStatsHistory;
    .end local v8    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 548
    .end local v5    # "i":I
    :cond_0
    goto :goto_1

    .line 551
    .end local v4    # "size":I
    :cond_1
    new-instance v4, Ljava/net/ProtocolException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unexpected version: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .end local v0    # "inputFile":Landroid/util/AtomicFile;
    .end local v1    # "in":Ljava/io/DataInputStream;
    .end local p0    # "this":Lcom/android/server/net/NetworkStatsCollection;
    .end local p1    # "file":Ljava/io/File;
    throw v4

    .line 533
    .end local v3    # "version":I
    .restart local v0    # "inputFile":Landroid/util/AtomicFile;
    .restart local v1    # "in":Ljava/io/DataInputStream;
    .restart local p0    # "this":Lcom/android/server/net/NetworkStatsCollection;
    .restart local p1    # "file":Ljava/io/File;
    :cond_2
    new-instance v3, Ljava/net/ProtocolException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unexpected magic: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .end local v0    # "inputFile":Landroid/util/AtomicFile;
    .end local v1    # "in":Ljava/io/DataInputStream;
    .end local p0    # "this":Lcom/android/server/net/NetworkStatsCollection;
    .end local p1    # "file":Ljava/io/File;
    throw v3
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 557
    .end local v2    # "magic":I
    .restart local v0    # "inputFile":Landroid/util/AtomicFile;
    .restart local v1    # "in":Ljava/io/DataInputStream;
    .restart local p0    # "this":Lcom/android/server/net/NetworkStatsCollection;
    .restart local p1    # "file":Ljava/io/File;
    :catchall_0
    move-exception v2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 558
    throw v2

    .line 554
    :catch_0
    move-exception v2

    .line 557
    :goto_1
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 558
    nop

    .line 559
    return-void
.end method

.method public readLegacyUid(Ljava/io/File;Z)V
    .locals 16
    .param p1, "file"    # Ljava/io/File;
    .param p2, "onlyTags"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 563
    new-instance v0, Landroid/util/AtomicFile;

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    move-object v2, v0

    .line 565
    .local v2, "inputFile":Landroid/util/AtomicFile;
    const/4 v3, 0x0

    .line 567
    .local v3, "in":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v3, v0

    .line 570
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 571
    .local v0, "magic":I
    const v4, 0x414e4554

    if-ne v0, v4, :cond_9

    .line 575
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 576
    .local v4, "version":I
    const/4 v5, 0x1

    if-eq v4, v5, :cond_8

    const/4 v6, 0x2

    if-eq v4, v6, :cond_7

    const/4 v6, 0x3

    const/4 v7, 0x4

    if-eq v4, v6, :cond_1

    if-ne v4, v7, :cond_0

    goto :goto_0

    .line 616
    :cond_0
    new-instance v5, Ljava/net/ProtocolException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unexpected version: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .end local v2    # "inputFile":Landroid/util/AtomicFile;
    .end local v3    # "in":Ljava/io/DataInputStream;
    .end local p0    # "this":Lcom/android/server/net/NetworkStatsCollection;
    .end local p1    # "file":Ljava/io/File;
    .end local p2    # "onlyTags":Z
    throw v5

    .line 594
    .restart local v2    # "inputFile":Landroid/util/AtomicFile;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    .restart local p0    # "this":Lcom/android/server/net/NetworkStatsCollection;
    .restart local p1    # "file":Ljava/io/File;
    .restart local p2    # "onlyTags":Z
    :cond_1
    :goto_0
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 595
    .local v6, "identSize":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v6, :cond_6

    .line 596
    new-instance v9, Lcom/android/server/net/NetworkIdentitySet;

    invoke-direct {v9, v3}, Lcom/android/server/net/NetworkIdentitySet;-><init>(Ljava/io/DataInputStream;)V

    .line 598
    .local v9, "ident":Lcom/android/server/net/NetworkIdentitySet;
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    .line 599
    .local v10, "size":I
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_2
    if-ge v11, v10, :cond_5

    .line 600
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    .line 601
    .local v12, "uid":I
    const/4 v13, 0x0

    if-lt v4, v7, :cond_2

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v14

    goto :goto_3

    .line 602
    :cond_2
    move v14, v13

    :goto_3
    nop

    .line 603
    .local v14, "set":I
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v15

    .line 605
    .local v15, "tag":I
    new-instance v5, Lcom/android/server/net/NetworkStatsCollection$Key;

    invoke-direct {v5, v9, v12, v14, v15}, Lcom/android/server/net/NetworkStatsCollection$Key;-><init>(Lcom/android/server/net/NetworkIdentitySet;III)V

    .line 606
    .local v5, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    new-instance v7, Landroid/net/NetworkStatsHistory;

    invoke-direct {v7, v3}, Landroid/net/NetworkStatsHistory;-><init>(Ljava/io/DataInputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 608
    .local v7, "history":Landroid/net/NetworkStatsHistory;
    if-nez v15, :cond_3

    const/4 v13, 0x1

    :cond_3
    move/from16 v1, p2

    if-eq v13, v1, :cond_4

    .line 609
    move-object/from16 v13, p0

    :try_start_1
    invoke-direct {v13, v5, v7}, Lcom/android/server/net/NetworkStatsCollection;->recordHistory(Lcom/android/server/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;)V

    goto :goto_4

    .line 608
    :cond_4
    move-object/from16 v13, p0

    .line 599
    .end local v5    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    .end local v7    # "history":Landroid/net/NetworkStatsHistory;
    .end local v12    # "uid":I
    .end local v14    # "set":I
    .end local v15    # "tag":I
    :goto_4
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p1

    const/4 v5, 0x1

    const/4 v7, 0x4

    goto :goto_2

    :cond_5
    move-object/from16 v13, p0

    move/from16 v1, p2

    .line 595
    .end local v9    # "ident":Lcom/android/server/net/NetworkIdentitySet;
    .end local v10    # "size":I
    .end local v11    # "j":I
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, p1

    const/4 v5, 0x1

    const/4 v7, 0x4

    goto :goto_1

    :cond_6
    move-object/from16 v13, p0

    move/from16 v1, p2

    .line 613
    .end local v8    # "i":I
    goto :goto_6

    .line 589
    .end local v6    # "identSize":I
    :cond_7
    move-object/from16 v13, p0

    move/from16 v1, p2

    goto :goto_6

    .line 582
    :cond_8
    move-object/from16 v13, p0

    move/from16 v1, p2

    goto :goto_6

    .line 572
    .end local v4    # "version":I
    :cond_9
    move-object/from16 v13, p0

    move/from16 v1, p2

    new-instance v4, Ljava/net/ProtocolException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unexpected magic: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .end local v2    # "inputFile":Landroid/util/AtomicFile;
    .end local v3    # "in":Ljava/io/DataInputStream;
    .end local p0    # "this":Lcom/android/server/net/NetworkStatsCollection;
    .end local p1    # "file":Ljava/io/File;
    .end local p2    # "onlyTags":Z
    throw v4
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 622
    .end local v0    # "magic":I
    .restart local v2    # "inputFile":Landroid/util/AtomicFile;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    .restart local p0    # "this":Lcom/android/server/net/NetworkStatsCollection;
    .restart local p1    # "file":Ljava/io/File;
    .restart local p2    # "onlyTags":Z
    :catchall_0
    move-exception v0

    goto :goto_5

    .line 619
    :catch_0
    move-exception v0

    goto :goto_6

    .line 622
    :catchall_1
    move-exception v0

    move-object/from16 v13, p0

    move/from16 v1, p2

    :goto_5
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 623
    throw v0

    .line 619
    :catch_1
    move-exception v0

    move-object/from16 v13, p0

    move/from16 v1, p2

    .line 622
    :goto_6
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 623
    nop

    .line 624
    return-void
.end method

.method public recordCollection(Lcom/android/server/net/NetworkStatsCollection;)V
    .locals 3
    .param p1, "another"    # Lcom/android/server/net/NetworkStatsCollection;

    .line 422
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 423
    iget-object v1, p1, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 424
    .local v1, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    iget-object v2, p1, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkStatsHistory;

    .line 425
    .local v2, "value":Landroid/net/NetworkStatsHistory;
    invoke-direct {p0, v1, v2}, Lcom/android/server/net/NetworkStatsCollection;->recordHistory(Lcom/android/server/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;)V

    .line 422
    .end local v1    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    .end local v2    # "value":Landroid/net/NetworkStatsHistory;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 427
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public recordData(Lcom/android/server/net/NetworkIdentitySet;IIIJJLandroid/net/NetworkStats$Entry;)V
    .locals 16
    .param p1, "ident"    # Lcom/android/server/net/NetworkIdentitySet;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "start"    # J
    .param p7, "end"    # J
    .param p9, "entry"    # Landroid/net/NetworkStats$Entry;

    .line 386
    move-object/from16 v7, p9

    invoke-direct/range {p0 .. p4}, Lcom/android/server/net/NetworkStatsCollection;->findOrCreateHistory(Lcom/android/server/net/NetworkIdentitySet;III)Landroid/net/NetworkStatsHistory;

    move-result-object v8

    .line 394
    .local v8, "history":Landroid/net/NetworkStatsHistory;
    move-object v1, v8

    move-wide/from16 v2, p5

    move-wide/from16 v4, p7

    move-object/from16 v6, p9

    :try_start_0
    invoke-virtual/range {v1 .. v6}, Landroid/net/NetworkStatsHistory;->recordData(JJLandroid/net/NetworkStats$Entry;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    goto :goto_0

    .line 395
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 396
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "NetworkStats"

    const-string v2, "Caught an IllegalArgumentException"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 399
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    invoke-virtual {v8}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v10

    invoke-virtual {v8}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v12

    iget-wide v0, v7, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v2, v7, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long v14, v0, v2

    move-object/from16 v9, p0

    invoke-direct/range {v9 .. v15}, Lcom/android/server/net/NetworkStatsCollection;->noteRecordedHistory(JJJ)V

    .line 400
    return-void
.end method

.method public removeUids([I)V
    .locals 7
    .param p1, "uids"    # [I

    .line 632
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 633
    .local v0, "knownKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsCollection$Key;>;"
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 636
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 637
    .local v2, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    iget v3, v2, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-static {p1, v3}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 639
    iget v3, v2, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    if-nez v3, :cond_0

    .line 640
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkStatsHistory;

    .line 641
    .local v3, "uidHistory":Landroid/net/NetworkStatsHistory;
    iget-object v4, v2, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    const/4 v5, -0x4

    const/4 v6, 0x0

    invoke-direct {p0, v4, v5, v6, v6}, Lcom/android/server/net/NetworkStatsCollection;->findOrCreateHistory(Lcom/android/server/net/NetworkIdentitySet;III)Landroid/net/NetworkStatsHistory;

    move-result-object v4

    .line 643
    .local v4, "removedHistory":Landroid/net/NetworkStatsHistory;
    invoke-virtual {v4, v3}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    .line 645
    .end local v3    # "uidHistory":Landroid/net/NetworkStatsHistory;
    .end local v4    # "removedHistory":Landroid/net/NetworkStatsHistory;
    :cond_0
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/net/NetworkStatsCollection;->mDirty:Z

    .line 648
    .end local v2    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    :cond_1
    goto :goto_0

    .line 649
    :cond_2
    return-void
.end method

.method public reset()V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 117
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    .line 118
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mEndMillis:J

    .line 119
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mTotalBytes:J

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mDirty:Z

    .line 121
    return-void
.end method

.method public roundDown(J)J
    .locals 4
    .param p1, "time"    # J

    .line 176
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-eqz v0, :cond_2

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p1, v0

    if-eqz v0, :cond_2

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 180
    :cond_0
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    rem-long v0, p1, v0

    .line 181
    .local v0, "mod":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 182
    sub-long/2addr p1, v0

    .line 184
    :cond_1
    return-wide p1

    .line 178
    .end local v0    # "mod":J
    :cond_2
    :goto_0
    return-wide p1
.end method

.method public roundUp(J)J
    .locals 6
    .param p1, "time"    # J

    .line 161
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-eqz v0, :cond_2

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p1, v0

    if-eqz v0, :cond_2

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 165
    :cond_0
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    rem-long v2, p1, v0

    .line 166
    .local v2, "mod":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    .line 167
    sub-long/2addr p1, v2

    .line 168
    add-long/2addr p1, v0

    .line 170
    :cond_1
    return-wide p1

    .line 163
    .end local v2    # "mod":J
    :cond_2
    :goto_0
    return-wide p1
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .locals 8
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 491
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 492
    .local v0, "keysByIdent":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/net/NetworkIdentitySet;Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsCollection$Key;>;>;"
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 493
    .local v2, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    iget-object v3, v2, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 494
    .local v3, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsCollection$Key;>;"
    if-nez v3, :cond_0

    .line 495
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 496
    iget-object v4, v2, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    :cond_0
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    .end local v2    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    .end local v3    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsCollection$Key;>;"
    goto :goto_0

    .line 501
    :cond_1
    const v1, 0x414e4554

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 502
    const/16 v1, 0x10

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 504
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 505
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/net/NetworkIdentitySet;

    .line 506
    .local v2, "ident":Lcom/android/server/net/NetworkIdentitySet;
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 507
    .restart local v3    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsCollection$Key;>;"
    invoke-virtual {v2, p1}, Lcom/android/server/net/NetworkIdentitySet;->writeToStream(Ljava/io/DataOutputStream;)V

    .line 509
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 510
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 511
    .local v5, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkStatsHistory;

    .line 512
    .local v6, "history":Landroid/net/NetworkStatsHistory;
    iget v7, v5, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 513
    iget v7, v5, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 514
    iget v7, v5, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 515
    invoke-virtual {v6, p1}, Landroid/net/NetworkStatsHistory;->writeToStream(Ljava/io/DataOutputStream;)V

    .line 516
    .end local v5    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    .end local v6    # "history":Landroid/net/NetworkStatsHistory;
    goto :goto_2

    .line 517
    .end local v2    # "ident":Lcom/android/server/net/NetworkIdentitySet;
    .end local v3    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsCollection$Key;>;"
    :cond_2
    goto :goto_1

    .line 519
    :cond_3
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    .line 520
    return-void
.end method
