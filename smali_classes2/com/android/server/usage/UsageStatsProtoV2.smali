.class final Lcom/android/server/usage/UsageStatsProtoV2;
.super Ljava/lang/Object;
.source "UsageStatsProtoV2.java"


# static fields
.field private static final ONE_HOUR_MS:J

.field private static final TAG:Ljava/lang/String; = "UsageStatsProtoV2"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 41
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/usage/UsageStatsProtoV2;->ONE_HOUR_MS:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getOffsetTimestamp(JJ)J
    .locals 4
    .param p0, "timestamp"    # J
    .param p2, "offset"    # J

    .line 297
    sub-long v0, p0, p2

    .line 299
    .local v0, "offsetTimestamp":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    return-wide v2
.end method

.method private static loadChooserCounts(Landroid/util/proto/ProtoInputStream;Landroid/app/usage/UsageStats;)V
    .locals 7
    .param p0, "proto"    # Landroid/util/proto/ProtoInputStream;
    .param p1, "usageStats"    # Landroid/app/usage/UsageStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    const-wide v0, 0x10500000001L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->nextField(J)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 129
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    sub-int/2addr v2, v3

    .line 130
    .local v2, "actionToken":I
    iget-object v4, p1, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseIntArray;

    .line 131
    .local v4, "counts":Landroid/util/SparseIntArray;
    if-nez v4, :cond_1

    .line 132
    new-instance v5, Landroid/util/SparseIntArray;

    invoke-direct {v5}, Landroid/util/SparseIntArray;-><init>()V

    move-object v4, v5

    .line 133
    iget-object v5, p1, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 136
    .end local v2    # "actionToken":I
    .end local v4    # "counts":Landroid/util/SparseIntArray;
    :cond_0
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    move-object v4, v2

    .line 140
    .restart local v4    # "counts":Landroid/util/SparseIntArray;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_4

    if-eq v2, v3, :cond_3

    const/4 v5, 0x2

    if-eq v2, v5, :cond_2

    goto :goto_1

    .line 148
    :cond_2
    const-wide v5, 0x20b00000002L

    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v5

    .line 149
    .local v5, "token":J
    invoke-static {p0, v4}, Lcom/android/server/usage/UsageStatsProtoV2;->loadCountsForAction(Landroid/util/proto/ProtoInputStream;Landroid/util/SparseIntArray;)V

    .line 150
    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 151
    goto :goto_1

    .line 143
    .end local v5    # "token":J
    :cond_3
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    sub-int/2addr v2, v3

    .line 145
    .restart local v2    # "actionToken":I
    iget-object v5, p1, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 146
    nop

    .line 153
    .end local v2    # "actionToken":I
    :goto_1
    goto :goto_0

    :cond_4
    return-void
.end method

.method private static loadConfigStats(Landroid/util/proto/ProtoInputStream;Lcom/android/server/usage/IntervalStats;)V
    .locals 9
    .param p0, "proto"    # Landroid/util/proto/ProtoInputStream;
    .param p1, "stats"    # Lcom/android/server/usage/IntervalStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    const/4 v0, 0x0

    .line 185
    .local v0, "configActive":Z
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    .line 186
    .local v1, "config":Landroid/content/res/Configuration;
    new-instance v2, Landroid/app/usage/ConfigurationStats;

    invoke-direct {v2}, Landroid/app/usage/ConfigurationStats;-><init>()V

    .line 187
    .local v2, "configStats":Landroid/app/usage/ConfigurationStats;
    const-wide v3, 0x10b00000001L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->nextField(J)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 189
    invoke-virtual {v1, p0, v3, v4}, Landroid/content/res/Configuration;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    .line 190
    invoke-virtual {p1, v1}, Lcom/android/server/usage/IntervalStats;->getOrCreateConfigurationStats(Landroid/content/res/Configuration;)Landroid/app/usage/ConfigurationStats;

    move-result-object v2

    .line 194
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_6

    const/4 v6, 0x1

    if-eq v5, v6, :cond_5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_4

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3

    const/4 v6, 0x4

    if-eq v5, v6, :cond_2

    const/4 v6, 0x5

    if-eq v5, v6, :cond_1

    goto :goto_1

    .line 217
    :cond_1
    const-wide v5, 0x10800000005L

    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    move-result v0

    .line 219
    goto :goto_1

    .line 213
    :cond_2
    const-wide v5, 0x10500000004L

    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v5

    iput v5, v2, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    .line 215
    goto :goto_1

    .line 209
    :cond_3
    const-wide v5, 0x10300000003L

    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v5

    iput-wide v5, v2, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    .line 211
    goto :goto_1

    .line 205
    :cond_4
    iget-wide v5, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-wide v7, 0x10300000002L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v7

    add-long/2addr v5, v7

    iput-wide v5, v2, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    .line 207
    goto :goto_1

    .line 197
    :cond_5
    invoke-virtual {v1, p0, v3, v4}, Landroid/content/res/Configuration;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    .line 198
    invoke-virtual {p1, v1}, Lcom/android/server/usage/IntervalStats;->getOrCreateConfigurationStats(Landroid/content/res/Configuration;)Landroid/app/usage/ConfigurationStats;

    move-result-object v5

    .line 199
    .local v5, "temp":Landroid/app/usage/ConfigurationStats;
    iget-wide v6, v2, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    iput-wide v6, v5, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    .line 200
    iget-wide v6, v2, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    iput-wide v6, v5, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    .line 201
    iget v6, v2, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    iput v6, v5, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    .line 202
    move-object v2, v5

    .line 203
    nop

    .line 224
    .end local v5    # "temp":Landroid/app/usage/ConfigurationStats;
    :goto_1
    goto :goto_0

    .line 221
    :cond_6
    if-eqz v0, :cond_7

    .line 222
    iget-object v3, v2, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    iput-object v3, p1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    .line 224
    :cond_7
    return-void
.end method

.method private static loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V
    .locals 4
    .param p0, "proto"    # Landroid/util/proto/ProtoInputStream;
    .param p1, "fieldId"    # J
    .param p3, "tracker"    # Lcom/android/server/usage/IntervalStats$EventTracker;

    .line 102
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v0

    .line 104
    .local v0, "token":J
    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 110
    :cond_0
    const-wide v2, 0x10300000002L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v2

    iput-wide v2, p3, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    .line 112
    goto :goto_1

    .line 106
    :cond_1
    const-wide v2, 0x10500000001L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    iput v2, p3, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    .line 108
    nop

    .line 115
    :goto_1
    goto :goto_0

    .line 114
    :cond_2
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    return-void

    .line 118
    .end local v0    # "token":J
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to read event tracker "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UsageStatsProtoV2"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    .end local v0    # "e":Ljava/io/IOException;
    return-void
.end method

.method private static loadCountsForAction(Landroid/util/proto/ProtoInputStream;Landroid/util/SparseIntArray;)V
    .locals 6
    .param p0, "proto"    # Landroid/util/proto/ProtoInputStream;
    .param p1, "counts"    # Landroid/util/SparseIntArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    const/4 v0, -0x1

    .line 161
    .local v0, "categoryToken":I
    const/4 v1, 0x0

    .line 163
    .local v1, "count":I
    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 170
    :cond_0
    const-wide v2, 0x10500000002L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    .line 172
    goto :goto_1

    .line 165
    :cond_1
    const-wide v4, 0x10500000001L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    sub-int/2addr v2, v3

    .line 168
    .end local v0    # "categoryToken":I
    .local v2, "categoryToken":I
    move v0, v2

    .line 177
    .end local v2    # "categoryToken":I
    .restart local v0    # "categoryToken":I
    :goto_1
    goto :goto_0

    .line 174
    :cond_2
    if-eq v0, v3, :cond_3

    .line 175
    invoke-virtual {p1, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 177
    :cond_3
    return-void
.end method

.method private static loadPackagesMap(Landroid/util/proto/ProtoInputStream;Landroid/util/SparseArray;)V
    .locals 6
    .param p0, "proto"    # Landroid/util/proto/ProtoInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoInputStream;",
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 578
    .local p1, "tokensToPackagesMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const/4 v0, -0x1

    .line 579
    .local v0, "key":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 581
    .local v1, "strings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 586
    :cond_0
    const-wide v2, 0x20900000002L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 587
    goto :goto_1

    .line 583
    :cond_1
    const-wide v4, 0x10500000001L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    sub-int/2addr v2, v3

    .line 584
    .end local v0    # "key":I
    .local v2, "key":I
    move v0, v2

    .line 592
    .end local v2    # "key":I
    .restart local v0    # "key":I
    :goto_1
    goto :goto_0

    .line 589
    :cond_2
    if-eq v0, v3, :cond_3

    .line 590
    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 592
    :cond_3
    return-void
.end method

.method private static parseEvent(Landroid/util/proto/ProtoInputStream;J)Landroid/app/usage/UsageEvents$Event;
    .locals 4
    .param p0, "proto"    # Landroid/util/proto/ProtoInputStream;
    .param p1, "beginTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 231
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v0}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 233
    .local v0, "event":Landroid/app/usage/UsageEvents$Event;
    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    .line 276
    :pswitch_1
    const-wide v1, 0x1050000000dL

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mLocusIdToken:I

    .line 278
    goto/16 :goto_2

    .line 272
    :pswitch_2
    const-wide v1, 0x1050000000cL

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mTaskRootClassToken:I

    .line 274
    goto/16 :goto_2

    .line 268
    :pswitch_3
    const-wide v1, 0x1050000000bL

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackageToken:I

    .line 270
    goto/16 :goto_2

    .line 265
    :pswitch_4
    const-wide v1, 0x1050000000aL

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    .line 266
    goto/16 :goto_2

    .line 261
    :pswitch_5
    const-wide v1, 0x10500000009L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelIdToken:I

    .line 263
    goto/16 :goto_2

    .line 258
    :pswitch_6
    const-wide v1, 0x10500000008L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    .line 259
    goto/16 :goto_2

    .line 254
    :pswitch_7
    const-wide v1, 0x10500000007L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mShortcutIdToken:I

    .line 256
    goto :goto_2

    .line 250
    :pswitch_8
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    .line 251
    iget-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    const-wide v2, 0x10b00000006L

    invoke-virtual {v1, p0, v2, v3}, Landroid/content/res/Configuration;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    .line 252
    goto :goto_2

    .line 247
    :pswitch_9
    const-wide v1, 0x10500000005L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 248
    goto :goto_2

    .line 244
    :pswitch_a
    const-wide v1, 0x10500000004L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    .line 245
    goto :goto_2

    .line 241
    :pswitch_b
    const-wide v1, 0x10300000003L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    add-long/2addr v1, p1

    iput-wide v1, v0, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 242
    goto :goto_2

    .line 238
    :pswitch_c
    const-wide v1, 0x10500000002L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mClassToken:I

    .line 239
    goto :goto_2

    .line 235
    :pswitch_d
    const-wide v1, 0x10500000001L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mPackageToken:I

    .line 236
    goto :goto_2

    .line 280
    :pswitch_e
    iget v1, v0, Landroid/app/usage/UsageEvents$Event;->mPackageToken:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    move-object v1, v0

    :goto_1
    return-object v1

    :goto_2
    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static parsePendingEvent(Landroid/util/proto/ProtoInputStream;)Landroid/app/usage/UsageEvents$Event;
    .locals 4
    .param p0, "proto"    # Landroid/util/proto/ProtoInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 653
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v0}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 655
    .local v0, "event":Landroid/app/usage/UsageEvents$Event;
    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    .line 692
    :pswitch_1
    const-wide v1, 0x1090000000cL

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    .line 693
    goto/16 :goto_3

    .line 689
    :pswitch_2
    const-wide v1, 0x1090000000bL

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    .line 690
    goto/16 :goto_3

    .line 686
    :pswitch_3
    const-wide v1, 0x1050000000aL

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    .line 687
    goto/16 :goto_3

    .line 682
    :pswitch_4
    const-wide v1, 0x10900000009L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    .line 684
    goto/16 :goto_3

    .line 679
    :pswitch_5
    const-wide v1, 0x10500000008L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    .line 680
    goto/16 :goto_3

    .line 676
    :pswitch_6
    const-wide v1, 0x10900000007L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    .line 677
    goto/16 :goto_3

    .line 672
    :pswitch_7
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    .line 673
    iget-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    const-wide v2, 0x10b00000006L

    invoke-virtual {v1, p0, v2, v3}, Landroid/content/res/Configuration;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    .line 674
    goto/16 :goto_3

    .line 669
    :pswitch_8
    const-wide v1, 0x10500000005L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 670
    goto :goto_3

    .line 666
    :pswitch_9
    const-wide v1, 0x10500000004L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    .line 667
    goto :goto_3

    .line 663
    :pswitch_a
    const-wide v1, 0x10300000003L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 664
    goto :goto_3

    .line 660
    :pswitch_b
    const-wide v1, 0x10900000002L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    .line 661
    goto :goto_3

    .line 657
    :pswitch_c
    const-wide v1, 0x10900000001L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 658
    goto :goto_3

    .line 696
    :pswitch_d
    iget v1, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    const/16 v2, 0x8

    const-string v3, ""

    if-eq v1, v2, :cond_1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 708
    :cond_0
    iget-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 709
    iput-object v3, v0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    goto :goto_1

    .line 703
    :cond_1
    iget-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 704
    iput-object v3, v0, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    goto :goto_1

    .line 698
    :cond_2
    iget-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    if-nez v1, :cond_3

    .line 699
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    .line 713
    :cond_3
    :goto_1
    iget-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    move-object v1, v0

    :goto_2
    return-object v1

    :goto_3
    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static parseUsageStats(Landroid/util/proto/ProtoInputStream;J)Landroid/app/usage/UsageStats;
    .locals 5
    .param p0, "proto"    # Landroid/util/proto/ProtoInputStream;
    .param p1, "beginTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    new-instance v0, Landroid/app/usage/UsageStats;

    invoke-direct {v0}, Landroid/app/usage/UsageStats;-><init>()V

    .line 51
    .local v0, "stats":Landroid/app/usage/UsageStats;
    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 90
    :pswitch_0
    const-wide v1, 0x1030000000bL

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mTotalTimeVisible:J

    .line 92
    goto/16 :goto_1

    .line 86
    :pswitch_1
    const-wide v1, 0x1030000000aL

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    add-long/2addr v1, p1

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    .line 88
    goto/16 :goto_1

    .line 82
    :pswitch_2
    const-wide v1, 0x10300000009L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mTotalTimeForegroundServiceUsed:J

    .line 84
    goto :goto_1

    .line 78
    :pswitch_3
    const-wide v1, 0x10300000008L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    add-long/2addr v1, p1

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    .line 80
    goto :goto_1

    .line 70
    :pswitch_4
    const-wide v1, 0x20b00000007L

    :try_start_0
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 71
    .local v1, "token":J
    invoke-static {p0, v0}, Lcom/android/server/usage/UsageStatsProtoV2;->loadChooserCounts(Landroid/util/proto/ProtoInputStream;Landroid/app/usage/UsageStats;)V

    .line 72
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v1    # "token":J
    goto :goto_1

    .line 73
    :catch_0
    move-exception v1

    .line 74
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to read chooser counts for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/app/usage/UsageStats;->mPackageToken:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UsageStatsProtoV2"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 65
    :pswitch_5
    const-wide v1, 0x10500000006L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    .line 67
    goto :goto_1

    .line 61
    :cond_0
    const-wide v1, 0x10300000004L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    .line 63
    goto :goto_1

    .line 57
    :cond_1
    const-wide v1, 0x10300000003L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    add-long/2addr v1, p1

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    .line 59
    goto :goto_1

    .line 53
    :cond_2
    const-wide v3, 0x10500000001L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/app/usage/UsageStats;->mPackageToken:I

    .line 55
    nop

    .line 94
    :goto_1
    goto/16 :goto_0

    :cond_3
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static read(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;)V
    .locals 8
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "stats"    # Lcom/android/server/usage/IntervalStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 434
    new-instance v0, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v0, p0}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 436
    .local v0, "proto":Landroid/util/proto/ProtoInputStream;
    :goto_0
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    packed-switch v1, :pswitch_data_0

    const-string v3, "UsageStatsProtoV2"

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_1

    .line 488
    :pswitch_0
    const-wide v1, 0x20b00000016L

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 490
    .local v1, "eventsToken":J
    iget-wide v4, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-static {v0, v4, v5}, Lcom/android/server/usage/UsageStatsProtoV2;->parseEvent(Landroid/util/proto/ProtoInputStream;J)Landroid/app/usage/UsageEvents$Event;

    move-result-object v4

    .line 491
    .local v4, "event":Landroid/app/usage/UsageEvents$Event;
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 492
    if-eqz v4, :cond_0

    .line 493
    iget-object v5, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v5, v4}, Landroid/app/usage/EventList;->insert(Landroid/app/usage/UsageEvents$Event;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    .end local v1    # "eventsToken":J
    .end local v4    # "event":Landroid/app/usage/UsageEvents$Event;
    :cond_0
    goto/16 :goto_1

    .line 495
    :catch_0
    move-exception v1

    .line 496
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "Unable to read some events from proto."

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 498
    .end local v1    # "e":Ljava/io/IOException;
    goto/16 :goto_1

    .line 478
    :pswitch_1
    const-wide v1, 0x20b00000015L

    :try_start_1
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 480
    .local v1, "configsToken":J
    invoke-static {v0, p1}, Lcom/android/server/usage/UsageStatsProtoV2;->loadConfigStats(Landroid/util/proto/ProtoInputStream;Lcom/android/server/usage/IntervalStats;)V

    .line 481
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 484
    .end local v1    # "configsToken":J
    goto/16 :goto_1

    .line 482
    :catch_1
    move-exception v1

    .line 483
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "Unable to read some configuration stats from proto."

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 485
    .end local v1    # "e":Ljava/io/IOException;
    goto/16 :goto_1

    .line 465
    :pswitch_2
    const-wide v4, 0x20b00000014L

    :try_start_2
    invoke-virtual {v0, v4, v5}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v4

    .line 467
    .local v4, "packagesToken":J
    iget-wide v6, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-static {v0, v6, v7}, Lcom/android/server/usage/UsageStatsProtoV2;->parseUsageStats(Landroid/util/proto/ProtoInputStream;J)Landroid/app/usage/UsageStats;

    move-result-object v1

    .line 468
    .local v1, "usageStats":Landroid/app/usage/UsageStats;
    invoke-virtual {v0, v4, v5}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 469
    iget v6, v1, Landroid/app/usage/UsageStats;->mPackageToken:I

    if-eq v6, v2, :cond_1

    .line 470
    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->packageStatsObfuscated:Landroid/util/SparseArray;

    iget v6, v1, Landroid/app/usage/UsageStats;->mPackageToken:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 474
    .end local v1    # "usageStats":Landroid/app/usage/UsageStats;
    .end local v4    # "packagesToken":J
    :cond_1
    goto :goto_1

    .line 472
    :catch_2
    move-exception v1

    .line 473
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "Unable to read some usage stats from proto."

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 475
    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 460
    :pswitch_3
    const-wide v1, 0x10b0000000dL

    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/usage/UsageStatsProtoV2;->loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V

    .line 462
    goto :goto_1

    .line 456
    :pswitch_4
    const-wide v1, 0x10b0000000cL

    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/usage/UsageStatsProtoV2;->loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V

    .line 458
    goto :goto_1

    .line 452
    :pswitch_5
    const-wide v1, 0x10b0000000bL

    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/usage/UsageStatsProtoV2;->loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V

    .line 454
    goto :goto_1

    .line 448
    :pswitch_6
    const-wide v1, 0x10b0000000aL

    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/usage/UsageStatsProtoV2;->loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V

    .line 450
    goto :goto_1

    .line 445
    :cond_2
    const-wide v1, 0x10500000003L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, p1, Lcom/android/server/usage/IntervalStats;->minorVersion:I

    .line 446
    goto :goto_1

    .line 442
    :cond_3
    const-wide v1, 0x10500000002L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, p1, Lcom/android/server/usage/IntervalStats;->majorVersion:I

    .line 443
    goto :goto_1

    .line 438
    :cond_4
    iget-wide v1, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-wide v3, 0x10300000001L

    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p1, Lcom/android/server/usage/IntervalStats;->endTime:J

    .line 440
    nop

    .line 507
    :goto_1
    goto/16 :goto_0

    .line 501
    :cond_5
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->packageStatsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 502
    .local v1, "usageStatsSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_6

    .line 503
    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->packageStatsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/UsageStats;

    .line 504
    .local v3, "usageStats":Landroid/app/usage/UsageStats;
    iget-wide v4, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iput-wide v4, v3, Landroid/app/usage/UsageStats;->mBeginTimeStamp:J

    .line 505
    iget-wide v4, p1, Lcom/android/server/usage/IntervalStats;->endTime:J

    iput-wide v4, v3, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    .line 502
    .end local v3    # "usageStats":Landroid/app/usage/UsageStats;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 507
    .end local v2    # "i":I
    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static readObfuscatedData(Ljava/io/InputStream;Lcom/android/server/usage/PackagesTokenData;)V
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "packagesTokenData"    # Lcom/android/server/usage/PackagesTokenData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 605
    new-instance v0, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v0, p0}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 607
    .local v0, "proto":Landroid/util/proto/ProtoInputStream;
    :goto_0
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 612
    :cond_0
    const-wide v1, 0x20b00000002L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 613
    .local v1, "token":J
    iget-object v3, p1, Lcom/android/server/usage/PackagesTokenData;->tokensToPackagesMap:Landroid/util/SparseArray;

    invoke-static {v0, v3}, Lcom/android/server/usage/UsageStatsProtoV2;->loadPackagesMap(Landroid/util/proto/ProtoInputStream;Landroid/util/SparseArray;)V

    .line 614
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 615
    goto :goto_1

    .line 609
    .end local v1    # "token":J
    :cond_1
    const-wide v1, 0x10500000001L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, p1, Lcom/android/server/usage/PackagesTokenData;->counter:I

    .line 610
    nop

    .line 617
    :goto_1
    goto :goto_0

    :cond_2
    return-void
.end method

.method static readPendingEvents(Ljava/io/InputStream;Ljava/util/LinkedList;)V
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/LinkedList<",
            "Landroid/app/usage/UsageEvents$Event;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 726
    .local p1, "events":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/app/usage/UsageEvents$Event;>;"
    new-instance v0, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v0, p0}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 728
    .local v0, "proto":Landroid/util/proto/ProtoInputStream;
    :goto_0
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    const/16 v2, 0x17

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 731
    :cond_0
    const-wide v1, 0x20b00000017L

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 732
    .local v1, "token":J
    invoke-static {v0}, Lcom/android/server/usage/UsageStatsProtoV2;->parsePendingEvent(Landroid/util/proto/ProtoInputStream;)Landroid/app/usage/UsageEvents$Event;

    move-result-object v3

    .line 733
    .local v3, "event":Landroid/app/usage/UsageEvents$Event;
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 734
    if-eqz v3, :cond_1

    .line 735
    invoke-virtual {p1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 739
    .end local v1    # "token":J
    .end local v3    # "event":Landroid/app/usage/UsageEvents$Event;
    :cond_1
    goto :goto_1

    .line 737
    :catch_0
    move-exception v1

    .line 738
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "UsageStatsProtoV2"

    const-string v3, "Unable to parse some pending events from proto."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 740
    .end local v1    # "e":Ljava/io/IOException;
    nop

    .line 742
    :goto_1
    goto :goto_0

    :cond_2
    return-void
.end method

.method public static write(Ljava/io/OutputStream;Lcom/android/server/usage/IntervalStats;)V
    .locals 11
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "stats"    # Lcom/android/server/usage/IntervalStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 520
    const-string v0, "UsageStatsProtoV2"

    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v1, p0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 521
    .local v1, "proto":Landroid/util/proto/ProtoOutputStream;
    iget-wide v2, p1, Lcom/android/server/usage/IntervalStats;->endTime:J

    iget-wide v4, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 522
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/usage/UsageStatsProtoV2;->getOffsetTimestamp(JJ)J

    move-result-wide v2

    .line 521
    const-wide v4, 0x10300000001L

    invoke-virtual {v1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 523
    iget v2, p1, Lcom/android/server/usage/IntervalStats;->majorVersion:I

    const-wide v3, 0x10500000002L

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 524
    iget v2, p1, Lcom/android/server/usage/IntervalStats;->minorVersion:I

    const-wide v3, 0x10500000003L

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 527
    const-wide v3, 0x10b0000000aL

    :try_start_0
    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget v5, v2, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget-wide v6, v2, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    move-object v2, v1

    invoke-static/range {v2 .. v7}, Lcom/android/server/usage/UsageStatsProtoV2;->writeCountAndTime(Landroid/util/proto/ProtoOutputStream;JIJ)V

    .line 529
    const-wide v3, 0x10b0000000bL

    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget v5, v2, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget-wide v6, v2, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    move-object v2, v1

    invoke-static/range {v2 .. v7}, Lcom/android/server/usage/UsageStatsProtoV2;->writeCountAndTime(Landroid/util/proto/ProtoOutputStream;JIJ)V

    .line 531
    const-wide v3, 0x10b0000000cL

    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget v5, v2, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget-wide v6, v2, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    move-object v2, v1

    invoke-static/range {v2 .. v7}, Lcom/android/server/usage/UsageStatsProtoV2;->writeCountAndTime(Landroid/util/proto/ProtoOutputStream;JIJ)V

    .line 533
    const-wide v3, 0x10b0000000dL

    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget v5, v2, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget-wide v6, v2, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    move-object v2, v1

    invoke-static/range {v2 .. v7}, Lcom/android/server/usage/UsageStatsProtoV2;->writeCountAndTime(Landroid/util/proto/ProtoOutputStream;JIJ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 537
    goto :goto_0

    .line 535
    :catch_0
    move-exception v2

    .line 536
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "Unable to write some interval stats trackers to proto."

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 539
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->packageStatsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 540
    .local v2, "statsCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_0

    .line 542
    const-wide v4, 0x20b00000014L

    :try_start_1
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 543
    .local v4, "token":J
    iget-wide v6, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iget-object v8, p1, Lcom/android/server/usage/IntervalStats;->packageStatsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/usage/UsageStats;

    invoke-static {v1, v6, v7, v8}, Lcom/android/server/usage/UsageStatsProtoV2;->writeUsageStats(Landroid/util/proto/ProtoOutputStream;JLandroid/app/usage/UsageStats;)V

    .line 544
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 547
    .end local v4    # "token":J
    goto :goto_2

    .line 545
    :catch_1
    move-exception v4

    .line 546
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "Unable to write some usage stats to proto."

    invoke-static {v0, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 540
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 549
    .end local v3    # "i":I
    :cond_0
    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 550
    .local v3, "configCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    if-ge v4, v3, :cond_1

    .line 551
    iget-object v5, p1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    iget-object v6, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/res/Configuration;

    invoke-virtual {v5, v6}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v5

    .line 553
    .local v5, "active":Z
    const-wide v6, 0x20b00000015L

    :try_start_2
    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 554
    .local v6, "token":J
    iget-wide v8, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iget-object v10, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v10, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/usage/ConfigurationStats;

    invoke-static {v1, v8, v9, v10, v5}, Lcom/android/server/usage/UsageStatsProtoV2;->writeConfigStats(Landroid/util/proto/ProtoOutputStream;JLandroid/app/usage/ConfigurationStats;Z)V

    .line 555
    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 558
    .end local v6    # "token":J
    goto :goto_4

    .line 556
    :catch_2
    move-exception v6

    .line 557
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    const-string v7, "Unable to write some configuration stats to proto."

    invoke-static {v0, v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 550
    .end local v5    # "active":Z
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 560
    .end local v4    # "i":I
    :cond_1
    iget-object v4, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v4}, Landroid/app/usage/EventList;->size()I

    move-result v4

    .line 561
    .local v4, "eventCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_5
    if-ge v5, v4, :cond_2

    .line 563
    const-wide v6, 0x20b00000016L

    :try_start_3
    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 564
    .local v6, "token":J
    iget-wide v8, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iget-object v10, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v10, v5}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    move-result-object v10

    invoke-static {v1, v8, v9, v10}, Lcom/android/server/usage/UsageStatsProtoV2;->writeEvent(Landroid/util/proto/ProtoOutputStream;JLandroid/app/usage/UsageEvents$Event;)V

    .line 565
    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    .line 568
    .end local v6    # "token":J
    goto :goto_6

    .line 566
    :catch_3
    move-exception v6

    .line 567
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    const-string v7, "Unable to write some events to proto."

    invoke-static {v0, v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 561
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 571
    .end local v5    # "i":I
    :cond_2
    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 572
    return-void
.end method

.method private static writeChooserCounts(Landroid/util/proto/ProtoOutputStream;Landroid/app/usage/UsageStats;)V
    .locals 9
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "stats"    # Landroid/app/usage/UsageStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 333
    if-eqz p1, :cond_4

    iget-object v0, p1, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 336
    :cond_0
    iget-object v0, p1, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 337
    .local v0, "chooserCountSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 338
    iget-object v2, p1, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 339
    .local v2, "action":I
    iget-object v3, p1, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseIntArray;

    .line 340
    .local v3, "counts":Landroid/util/SparseIntArray;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 341
    goto :goto_1

    .line 343
    :cond_1
    const-wide v4, 0x20b00000007L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 344
    .local v4, "token":J
    const-wide v6, 0x10500000001L

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {p0, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 345
    invoke-static {p0, v3}, Lcom/android/server/usage/UsageStatsProtoV2;->writeCountsForAction(Landroid/util/proto/ProtoOutputStream;Landroid/util/SparseIntArray;)V

    .line 346
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 337
    .end local v2    # "action":I
    .end local v3    # "counts":Landroid/util/SparseIntArray;
    .end local v4    # "token":J
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 348
    .end local v1    # "i":I
    :cond_3
    return-void

    .line 334
    .end local v0    # "chooserCountSize":I
    :cond_4
    :goto_2
    return-void
.end method

.method private static writeConfigStats(Landroid/util/proto/ProtoOutputStream;JLandroid/app/usage/ConfigurationStats;Z)V
    .locals 10
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "statsBeginTime"    # J
    .param p3, "configStats"    # Landroid/app/usage/ConfigurationStats;
    .param p4, "isActive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 370
    iget-object v0, p3, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    const-wide v1, 0x10b00000001L

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Configuration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 372
    iget-wide v6, p3, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    const-wide v4, 0x10300000002L

    move-object v3, p0

    move-wide v8, p1

    invoke-static/range {v3 .. v9}, Lcom/android/server/usage/UsageStatsProtoV2;->writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 374
    iget-wide v0, p3, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    const-wide v2, 0x10300000003L

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 376
    iget v0, p3, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    const-wide v1, 0x10500000004L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 377
    const-wide v0, 0x10800000005L

    invoke-virtual {p0, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 378
    return-void
.end method

.method private static writeCountAndTime(Landroid/util/proto/ProtoOutputStream;JIJ)V
    .locals 4
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "fieldId"    # J
    .param p3, "count"    # I
    .param p4, "time"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 325
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 326
    .local v0, "token":J
    const-wide v2, 0x10500000001L

    invoke-virtual {p0, v2, v3, p3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 327
    const-wide v2, 0x10300000002L

    invoke-virtual {p0, v2, v3, p4, p5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 328
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 329
    return-void
.end method

.method private static writeCountsForAction(Landroid/util/proto/ProtoOutputStream;Landroid/util/SparseIntArray;)V
    .locals 9
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "counts"    # Landroid/util/SparseIntArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 352
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 353
    .local v0, "countsSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 354
    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 355
    .local v2, "category":I
    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    .line 356
    .local v3, "count":I
    if-gtz v3, :cond_0

    .line 357
    goto :goto_1

    .line 359
    :cond_0
    const-wide v4, 0x20b00000002L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 360
    .local v4, "token":J
    const-wide v6, 0x10500000001L

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {p0, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 362
    const-wide v6, 0x10500000002L

    invoke-virtual {p0, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 363
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 353
    .end local v2    # "category":I
    .end local v3    # "count":I
    .end local v4    # "token":J
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 365
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private static writeEvent(Landroid/util/proto/ProtoOutputStream;JLandroid/app/usage/UsageEvents$Event;)V
    .locals 11
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "statsBeginTime"    # J
    .param p3, "event"    # Landroid/app/usage/UsageEvents$Event;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 382
    iget v0, p3, Landroid/app/usage/UsageEvents$Event;->mPackageToken:I

    add-int/lit8 v0, v0, 0x1

    const-wide v1, 0x10500000001L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 383
    iget v0, p3, Landroid/app/usage/UsageEvents$Event;->mClassToken:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 384
    const-wide v2, 0x10500000002L

    iget v0, p3, Landroid/app/usage/UsageEvents$Event;->mClassToken:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 386
    :cond_0
    const-wide v5, 0x10300000003L

    iget-wide v7, p3, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    move-object v4, p0

    move-wide v9, p1

    invoke-static/range {v4 .. v10}, Lcom/android/server/usage/UsageStatsProtoV2;->writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 387
    const-wide v2, 0x10500000004L

    iget v0, p3, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    invoke-virtual {p0, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 388
    const-wide v2, 0x10500000005L

    iget v0, p3, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    invoke-virtual {p0, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 389
    const-wide v2, 0x1050000000aL

    iget v0, p3, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {p0, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 390
    iget v0, p3, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackageToken:I

    if-eq v0, v1, :cond_1

    .line 391
    const-wide v2, 0x1050000000bL

    iget v0, p3, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackageToken:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 394
    :cond_1
    iget v0, p3, Landroid/app/usage/UsageEvents$Event;->mTaskRootClassToken:I

    if-eq v0, v1, :cond_2

    .line 395
    const-wide v2, 0x1050000000cL

    iget v0, p3, Landroid/app/usage/UsageEvents$Event;->mTaskRootClassToken:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 397
    :cond_2
    iget v0, p3, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_7

    const/16 v2, 0x8

    if-eq v0, v2, :cond_6

    const/16 v2, 0x1e

    if-eq v0, v2, :cond_5

    const/16 v2, 0xb

    if-eq v0, v2, :cond_4

    const/16 v2, 0xc

    if-eq v0, v2, :cond_3

    goto :goto_0

    .line 419
    :cond_3
    iget v0, p3, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelIdToken:I

    if-eq v0, v1, :cond_8

    .line 420
    const-wide v0, 0x10500000009L

    iget v2, p3, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelIdToken:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_0

    .line 404
    :cond_4
    iget v0, p3, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    if-eqz v0, :cond_8

    .line 405
    const-wide v0, 0x10500000008L

    iget v2, p3, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_0

    .line 414
    :cond_5
    iget v0, p3, Landroid/app/usage/UsageEvents$Event;->mLocusIdToken:I

    if-eq v0, v1, :cond_8

    .line 415
    const-wide v0, 0x1050000000dL

    iget v2, p3, Landroid/app/usage/UsageEvents$Event;->mLocusIdToken:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_0

    .line 409
    :cond_6
    iget v0, p3, Landroid/app/usage/UsageEvents$Event;->mShortcutIdToken:I

    if-eq v0, v1, :cond_8

    .line 410
    const-wide v0, 0x10500000007L

    iget v2, p3, Landroid/app/usage/UsageEvents$Event;->mShortcutIdToken:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_0

    .line 399
    :cond_7
    iget-object v0, p3, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v0, :cond_8

    .line 400
    iget-object v0, p3, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    const-wide v1, 0x10b00000006L

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Configuration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 425
    :cond_8
    :goto_0
    return-void
.end method

.method static writeObfuscatedData(Ljava/io/OutputStream;Lcom/android/server/usage/PackagesTokenData;)V
    .locals 14
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "packagesTokenData"    # Lcom/android/server/usage/PackagesTokenData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 630
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 631
    .local v0, "proto":Landroid/util/proto/ProtoOutputStream;
    iget v1, p1, Lcom/android/server/usage/PackagesTokenData;->counter:I

    const-wide v2, 0x10500000001L

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 633
    iget-object v1, p1, Lcom/android/server/usage/PackagesTokenData;->tokensToPackagesMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 634
    .local v1, "mapSize":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_1

    .line 635
    const-wide v5, 0x20b00000002L

    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 636
    .local v5, "token":J
    iget-object v7, p1, Lcom/android/server/usage/PackagesTokenData;->tokensToPackagesMap:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 637
    .local v7, "packageToken":I
    add-int/lit8 v8, v7, 0x1

    invoke-virtual {v0, v2, v3, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 639
    iget-object v8, p1, Lcom/android/server/usage/PackagesTokenData;->tokensToPackagesMap:Landroid/util/SparseArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 640
    .local v8, "strings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 641
    .local v9, "listSize":I
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_1
    if-ge v10, v9, :cond_0

    .line 642
    const-wide v11, 0x20900000002L

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v0, v11, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 641
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 644
    .end local v10    # "j":I
    :cond_0
    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 634
    .end local v5    # "token":J
    .end local v7    # "packageToken":I
    .end local v8    # "strings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "listSize":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 647
    .end local v4    # "i":I
    :cond_1
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 648
    return-void
.end method

.method static writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V
    .locals 4
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "fieldId"    # J
    .param p3, "timestamp"    # J
    .param p5, "beginTime"    # J

    .line 289
    sget-wide v0, Lcom/android/server/usage/UsageStatsProtoV2;->ONE_HOUR_MS:J

    sub-long v0, p5, v0

    .line 290
    .local v0, "rolloverGracePeriod":J
    cmp-long v2, p3, v0

    if-lez v2, :cond_0

    .line 292
    invoke-static {p3, p4, p5, p6}, Lcom/android/server/usage/UsageStatsProtoV2;->getOffsetTimestamp(JJ)J

    move-result-wide v2

    invoke-virtual {p0, p1, p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 294
    :cond_0
    return-void
.end method

.method private static writePendingEvent(Landroid/util/proto/ProtoOutputStream;Landroid/app/usage/UsageEvents$Event;)V
    .locals 4
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "event"    # Landroid/app/usage/UsageEvents$Event;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 749
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    const-wide v1, 0x10900000001L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 750
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 751
    const-wide v0, 0x10900000002L

    iget-object v2, p1, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 753
    :cond_0
    const-wide v0, 0x10300000003L

    iget-wide v2, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 754
    const-wide v0, 0x10500000004L

    iget v2, p1, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 755
    const-wide v0, 0x10500000005L

    iget v2, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 756
    const-wide v0, 0x1050000000aL

    iget v2, p1, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 757
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 758
    const-wide v0, 0x1090000000bL

    iget-object v2, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 760
    :cond_1
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 761
    const-wide v0, 0x1090000000cL

    iget-object v2, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 763
    :cond_2
    iget v0, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_6

    const/16 v1, 0x8

    if-eq v0, v1, :cond_5

    const/16 v1, 0xb

    if-eq v0, v1, :cond_4

    const/16 v1, 0xc

    if-eq v0, v1, :cond_3

    goto :goto_0

    .line 780
    :cond_3
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 781
    const-wide v0, 0x10900000009L

    iget-object v2, p1, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_0

    .line 770
    :cond_4
    iget v0, p1, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    if-eqz v0, :cond_7

    .line 771
    const-wide v0, 0x10500000008L

    iget v2, p1, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_0

    .line 775
    :cond_5
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 776
    const-wide v0, 0x10900000007L

    iget-object v2, p1, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_0

    .line 765
    :cond_6
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v0, :cond_7

    .line 766
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    const-wide v1, 0x10b00000006L

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Configuration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 786
    :cond_7
    :goto_0
    return-void
.end method

.method static writePendingEvents(Ljava/io/OutputStream;Ljava/util/LinkedList;)V
    .locals 6
    .param p0, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/util/LinkedList<",
            "Landroid/app/usage/UsageEvents$Event;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 796
    .local p1, "events":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/app/usage/UsageEvents$Event;>;"
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 797
    .local v0, "proto":Landroid/util/proto/ProtoOutputStream;
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v1

    .line 798
    .local v1, "eventCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 800
    const-wide v3, 0x20b00000017L

    :try_start_0
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 801
    .local v3, "token":J
    invoke-virtual {p1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/usage/UsageEvents$Event;

    invoke-static {v0, v5}, Lcom/android/server/usage/UsageStatsProtoV2;->writePendingEvent(Landroid/util/proto/ProtoOutputStream;Landroid/app/usage/UsageEvents$Event;)V

    .line 802
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 805
    .end local v3    # "token":J
    goto :goto_1

    .line 803
    :catch_0
    move-exception v3

    .line 804
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "UsageStatsProtoV2"

    const-string v5, "Unable to write some pending events to proto."

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 798
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 807
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 808
    return-void
.end method

.method private static writeUsageStats(Landroid/util/proto/ProtoOutputStream;JLandroid/app/usage/UsageStats;)V
    .locals 11
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "beginTime"    # J
    .param p3, "stats"    # Landroid/app/usage/UsageStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 304
    iget v0, p3, Landroid/app/usage/UsageStats;->mPackageToken:I

    add-int/lit8 v0, v0, 0x1

    const-wide v1, 0x10500000001L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 305
    iget-wide v6, p3, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    const-wide v4, 0x10300000003L

    move-object v3, p0

    move-wide v8, p1

    invoke-static/range {v3 .. v9}, Lcom/android/server/usage/UsageStatsProtoV2;->writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 307
    iget-wide v0, p3, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    const-wide v2, 0x10300000004L

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 308
    iget-wide v7, p3, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    const-wide v5, 0x10300000008L

    move-object v4, p0

    move-wide v9, p1

    invoke-static/range {v4 .. v10}, Lcom/android/server/usage/UsageStatsProtoV2;->writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 310
    iget-wide v0, p3, Landroid/app/usage/UsageStats;->mTotalTimeForegroundServiceUsed:J

    const-wide v2, 0x10300000009L

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 312
    iget-wide v7, p3, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    const-wide v5, 0x1030000000aL

    invoke-static/range {v4 .. v10}, Lcom/android/server/usage/UsageStatsProtoV2;->writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 314
    iget-wide v0, p3, Landroid/app/usage/UsageStats;->mTotalTimeVisible:J

    const-wide v2, 0x1030000000bL

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 315
    iget v0, p3, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    const-wide v1, 0x10500000006L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 317
    :try_start_0
    invoke-static {p0, p3}, Lcom/android/server/usage/UsageStatsProtoV2;->writeChooserCounts(Landroid/util/proto/ProtoOutputStream;Landroid/app/usage/UsageStats;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    goto :goto_0

    .line 318
    :catch_0
    move-exception v0

    .line 319
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to write chooser counts for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p3, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UsageStatsProtoV2"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 321
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    return-void
.end method
