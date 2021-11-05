.class final Lcom/android/server/usage/UsageStatsProto;
.super Ljava/lang/Object;
.source "UsageStatsProto.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-string v0, "UsageStatsProto"

    sput-object v0, Lcom/android/server/usage/UsageStatsProto;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static loadChooserCounts(Landroid/util/proto/ProtoInputStream;Landroid/app/usage/UsageStats;)V
    .locals 6
    .param p0, "proto"    # Landroid/util/proto/ProtoInputStream;
    .param p1, "usageStats"    # Landroid/app/usage/UsageStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    iget-object v0, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 180
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    .line 182
    :cond_0
    const/4 v0, 0x0

    .line 184
    .local v0, "action":Ljava/lang/String;
    const-wide v1, 0x10900000001L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->nextField(J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 187
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    .line 188
    iget-object v3, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    .line 189
    .local v3, "counts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez v3, :cond_2

    .line 190
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    move-object v3, v4

    .line 191
    iget-object v4, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 195
    .end local v3    # "counts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_1
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 199
    .restart local v3    # "counts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3

    goto :goto_1

    .line 206
    :cond_3
    const-wide v1, 0x20b00000003L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 208
    .local v1, "token":J
    invoke-static {p0, v3}, Lcom/android/server/usage/UsageStatsProto;->loadCountsForAction(Landroid/util/proto/ProtoInputStream;Landroid/util/ArrayMap;)V

    .line 209
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto :goto_2

    .line 202
    .end local v1    # "token":J
    :cond_4
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    .line 203
    iget-object v4, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    nop

    .line 215
    :goto_1
    goto :goto_0

    .line 211
    :cond_5
    :goto_2
    if-nez v0, :cond_6

    .line 213
    iget-object v1, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    const-string v2, ""

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    :cond_6
    return-void
.end method

.method private static loadConfigStats(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats;)V
    .locals 11
    .param p0, "proto"    # Landroid/util/proto/ProtoInputStream;
    .param p1, "fieldId"    # J
    .param p3, "statsOut"    # Lcom/android/server/usage/IntervalStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 247
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v0

    .line 248
    .local v0, "token":J
    const/4 v2, 0x0

    .line 249
    .local v2, "configActive":Z
    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    .line 251
    .local v3, "config":Landroid/content/res/Configuration;
    const-wide v4, 0x10b00000001L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->nextField(J)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 254
    invoke-virtual {v3, p0, v4, v5}, Landroid/content/res/Configuration;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    .line 255
    invoke-virtual {p3, v3}, Lcom/android/server/usage/IntervalStats;->getOrCreateConfigurationStats(Landroid/content/res/Configuration;)Landroid/app/usage/ConfigurationStats;

    move-result-object v6

    .local v6, "configStats":Landroid/app/usage/ConfigurationStats;
    goto :goto_0

    .line 259
    .end local v6    # "configStats":Landroid/app/usage/ConfigurationStats;
    :cond_0
    new-instance v6, Landroid/app/usage/ConfigurationStats;

    invoke-direct {v6}, Landroid/app/usage/ConfigurationStats;-><init>()V

    .line 262
    .restart local v6    # "configStats":Landroid/app/usage/ConfigurationStats;
    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_6

    const/4 v8, 0x1

    if-eq v7, v8, :cond_5

    const/4 v8, 0x2

    if-eq v7, v8, :cond_4

    const/4 v8, 0x3

    if-eq v7, v8, :cond_3

    const/4 v8, 0x4

    if-eq v7, v8, :cond_2

    const/4 v8, 0x5

    if-eq v7, v8, :cond_1

    goto :goto_1

    .line 285
    :cond_1
    const-wide v7, 0x10800000005L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    move-result v2

    .line 286
    goto :goto_1

    .line 281
    :cond_2
    const-wide v7, 0x10500000004L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v7

    iput v7, v6, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    .line 283
    goto :goto_1

    .line 277
    :cond_3
    const-wide v7, 0x10300000003L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v7

    iput-wide v7, v6, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    .line 279
    goto :goto_1

    .line 273
    :cond_4
    iget-wide v7, p3, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-wide v9, 0x10300000002L

    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v9

    add-long/2addr v7, v9

    iput-wide v7, v6, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    .line 275
    goto :goto_1

    .line 265
    :cond_5
    invoke-virtual {v3, p0, v4, v5}, Landroid/content/res/Configuration;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    .line 266
    invoke-virtual {p3, v3}, Lcom/android/server/usage/IntervalStats;->getOrCreateConfigurationStats(Landroid/content/res/Configuration;)Landroid/app/usage/ConfigurationStats;

    move-result-object v7

    .line 267
    .local v7, "temp":Landroid/app/usage/ConfigurationStats;
    iget-wide v8, v6, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    iput-wide v8, v7, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    .line 268
    iget-wide v8, v6, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    iput-wide v8, v7, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    .line 269
    iget v8, v6, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    iput v8, v7, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    .line 270
    move-object v6, v7

    .line 271
    nop

    .line 292
    .end local v7    # "temp":Landroid/app/usage/ConfigurationStats;
    :goto_1
    goto :goto_0

    .line 288
    :cond_6
    if-eqz v2, :cond_7

    .line 289
    iget-object v4, v6, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    iput-object v4, p3, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    .line 291
    :cond_7
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 292
    return-void
.end method

.method private static loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V
    .locals 4
    .param p0, "proto"    # Landroid/util/proto/ProtoInputStream;
    .param p1, "fieldId"    # J
    .param p3, "tracker"    # Lcom/android/server/usage/IntervalStats$EventTracker;

    .line 158
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v0

    .line 160
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

    .line 165
    :cond_0
    const-wide v2, 0x10300000002L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v2

    iput-wide v2, p3, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    .line 166
    goto :goto_1

    .line 162
    :cond_1
    const-wide v2, 0x10500000001L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    iput v2, p3, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    .line 163
    nop

    .line 169
    :goto_1
    goto :goto_0

    .line 168
    :cond_2
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    return-void

    .line 172
    .end local v0    # "token":J
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/android/server/usage/UsageStatsProto;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to read event tracker "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 175
    .end local v0    # "e":Ljava/io/IOException;
    return-void
.end method

.method private static loadCountsForAction(Landroid/util/proto/ProtoInputStream;Landroid/util/ArrayMap;)V
    .locals 4
    .param p0, "proto"    # Landroid/util/proto/ProtoInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoInputStream;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    .local p1, "counts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 223
    .local v0, "category":Ljava/lang/String;
    const/4 v1, 0x0

    .line 225
    .local v1, "count":I
    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 231
    :cond_0
    const-wide v2, 0x10500000003L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    .line 233
    goto :goto_1

    .line 227
    :cond_1
    const-wide v2, 0x10900000001L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    .line 229
    nop

    .line 240
    :goto_1
    goto :goto_0

    .line 235
    :cond_2
    if-nez v0, :cond_3

    .line 236
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {p1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 238
    :cond_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    :goto_2
    return-void
.end method

.method private static loadEvent(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats;Ljava/util/List;)V
    .locals 5
    .param p0, "proto"    # Landroid/util/proto/ProtoInputStream;
    .param p1, "fieldId"    # J
    .param p3, "statsOut"    # Lcom/android/server/usage/IntervalStats;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoInputStream;",
            "J",
            "Lcom/android/server/usage/IntervalStats;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 299
    .local p4, "stringPool":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v0

    .line 300
    .local v0, "token":J
    invoke-virtual {p3, p0, p4}, Lcom/android/server/usage/IntervalStats;->buildEvent(Landroid/util/proto/ProtoInputStream;Ljava/util/List;)Landroid/app/usage/UsageEvents$Event;

    move-result-object v2

    .line 301
    .local v2, "event":Landroid/app/usage/UsageEvents$Event;
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 302
    iget-object v3, v2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 305
    iget-object v3, p3, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v3, v2}, Landroid/app/usage/EventList;->insert(Landroid/app/usage/UsageEvents$Event;)V

    .line 306
    return-void

    .line 303
    :cond_0
    new-instance v3, Ljava/net/ProtocolException;

    const-string v4, "no package field present"

    invoke-direct {v3, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static loadUsageStats(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats;Ljava/util/List;)V
    .locals 11
    .param p0, "proto"    # Landroid/util/proto/ProtoInputStream;
    .param p1, "fieldId"    # J
    .param p3, "statsOut"    # Lcom/android/server/usage/IntervalStats;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoInputStream;",
            "J",
            "Lcom/android/server/usage/IntervalStats;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    .local p4, "stringPool":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v0

    .line 69
    .local v0, "token":J
    const-wide v2, 0x10500000002L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->nextField(J)Z

    move-result v4

    const-wide v5, 0x10900000001L

    if-eqz v4, :cond_0

    .line 72
    nop

    .line 73
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {p4, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 72
    invoke-virtual {p3, v4}, Lcom/android/server/usage/IntervalStats;->getOrCreateUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;

    move-result-object v4

    .local v4, "stats":Landroid/app/usage/UsageStats;
    goto :goto_0

    .line 74
    .end local v4    # "stats":Landroid/app/usage/UsageStats;
    :cond_0
    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->nextField(J)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 76
    nop

    .line 77
    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v4

    .line 76
    invoke-virtual {p3, v4}, Lcom/android/server/usage/IntervalStats;->getOrCreateUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;

    move-result-object v4

    .restart local v4    # "stats":Landroid/app/usage/UsageStats;
    goto :goto_0

    .line 80
    .end local v4    # "stats":Landroid/app/usage/UsageStats;
    :cond_1
    new-instance v4, Landroid/app/usage/UsageStats;

    invoke-direct {v4}, Landroid/app/usage/UsageStats;-><init>()V

    .line 83
    .restart local v4    # "stats":Landroid/app/usage/UsageStats;
    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    .line 84
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_1

    .line 147
    :pswitch_0
    const-wide v7, 0x1030000000bL

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v7

    iput-wide v7, v4, Landroid/app/usage/UsageStats;->mTotalTimeVisible:J

    goto/16 :goto_1

    .line 143
    :pswitch_1
    iget-wide v7, p3, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-wide v9, 0x1030000000aL

    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v9

    add-long/2addr v7, v9

    iput-wide v7, v4, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    .line 145
    goto/16 :goto_1

    .line 138
    :pswitch_2
    const-wide v7, 0x10300000009L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v7

    iput-wide v7, v4, Landroid/app/usage/UsageStats;->mTotalTimeForegroundServiceUsed:J

    .line 140
    goto/16 :goto_1

    .line 134
    :pswitch_3
    iget-wide v7, p3, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-wide v9, 0x10300000008L

    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v9

    add-long/2addr v7, v9

    iput-wide v7, v4, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    .line 136
    goto/16 :goto_1

    .line 124
    :pswitch_4
    const-wide v7, 0x20b00000007L

    :try_start_0
    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v7

    .line 126
    .local v7, "chooserToken":J
    invoke-static {p0, v4}, Lcom/android/server/usage/UsageStatsProto;->loadChooserCounts(Landroid/util/proto/ProtoInputStream;Landroid/app/usage/UsageStats;)V

    .line 127
    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->end(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .end local v7    # "chooserToken":J
    goto/16 :goto_1

    .line 128
    :catch_0
    move-exception v7

    .line 129
    .local v7, "e":Ljava/io/IOException;
    sget-object v8, Lcom/android/server/usage/UsageStatsProto;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to read chooser counts for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v4, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    .end local v7    # "e":Ljava/io/IOException;
    goto/16 :goto_1

    .line 119
    :pswitch_5
    const-wide v7, 0x10500000006L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v7

    iput v7, v4, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    .line 121
    goto :goto_1

    .line 115
    :pswitch_6
    const-wide v7, 0x10500000005L

    .line 116
    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v7

    iput v7, v4, Landroid/app/usage/UsageStats;->mLastEvent:I

    .line 117
    goto :goto_1

    .line 111
    :pswitch_7
    const-wide v7, 0x10300000004L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v7

    iput-wide v7, v4, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    .line 113
    goto :goto_1

    .line 107
    :pswitch_8
    iget-wide v7, p3, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-wide v9, 0x10300000003L

    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v9

    add-long/2addr v7, v9

    iput-wide v7, v4, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    .line 109
    goto :goto_1

    .line 97
    :pswitch_9
    nop

    .line 98
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    .line 97
    invoke-interface {p4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p3, v7}, Lcom/android/server/usage/IntervalStats;->getOrCreateUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;

    move-result-object v7

    .line 99
    .local v7, "tempPackageIndex":Landroid/app/usage/UsageStats;
    iget-wide v8, v4, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    iput-wide v8, v7, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    .line 100
    iget-wide v8, v4, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    iput-wide v8, v7, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    .line 101
    iget v8, v4, Landroid/app/usage/UsageStats;->mLastEvent:I

    iput v8, v7, Landroid/app/usage/UsageStats;->mLastEvent:I

    .line 102
    iget v8, v4, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    iput v8, v7, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    .line 103
    move-object v4, v7

    .line 104
    goto :goto_1

    .line 87
    .end local v7    # "tempPackageIndex":Landroid/app/usage/UsageStats;
    :pswitch_a
    nop

    .line 88
    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v7

    .line 87
    invoke-virtual {p3, v7}, Lcom/android/server/usage/IntervalStats;->getOrCreateUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;

    move-result-object v7

    .line 89
    .local v7, "tempPackage":Landroid/app/usage/UsageStats;
    iget-wide v8, v4, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    iput-wide v8, v7, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    .line 90
    iget-wide v8, v4, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    iput-wide v8, v7, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    .line 91
    iget v8, v4, Landroid/app/usage/UsageStats;->mLastEvent:I

    iput v8, v7, Landroid/app/usage/UsageStats;->mLastEvent:I

    .line 92
    iget v8, v4, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    iput v8, v7, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    .line 93
    move-object v4, v7

    .line 94
    nop

    .line 149
    .end local v7    # "tempPackage":Landroid/app/usage/UsageStats;
    :goto_1
    goto/16 :goto_0

    .line 152
    :cond_2
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 153
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_0
    .end packed-switch
.end method

.method public static read(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;)V
    .locals 6
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "statsOut"    # Lcom/android/server/usage/IntervalStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 502
    new-instance v0, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v0, p0}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 503
    .local v0, "proto":Landroid/util/proto/ProtoInputStream;
    const/4 v1, 0x0

    .line 505
    .local v1, "stringPool":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 506
    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 507
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    .line 508
    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v2}, Landroid/app/usage/EventList;->clear()V

    .line 511
    :goto_0
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_1

    .line 564
    :pswitch_0
    const-wide v2, 0x20b00000016L

    :try_start_0
    invoke-static {v0, v2, v3, p1, v1}, Lcom/android/server/usage/UsageStatsProto;->loadEvent(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 567
    goto/16 :goto_1

    .line 565
    :catch_0
    move-exception v2

    .line 566
    .local v2, "e":Ljava/io/IOException;
    sget-object v3, Lcom/android/server/usage/UsageStatsProto;->TAG:Ljava/lang/String;

    const-string v4, "Unable to read some events from proto."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 568
    .end local v2    # "e":Ljava/io/IOException;
    goto/16 :goto_1

    .line 557
    :pswitch_1
    const-wide v2, 0x20b00000015L

    :try_start_1
    invoke-static {v0, v2, v3, p1}, Lcom/android/server/usage/UsageStatsProto;->loadConfigStats(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 560
    goto/16 :goto_1

    .line 558
    :catch_1
    move-exception v2

    .line 559
    .restart local v2    # "e":Ljava/io/IOException;
    sget-object v3, Lcom/android/server/usage/UsageStatsProto;->TAG:Ljava/lang/String;

    const-string v4, "Unable to read some configuration stats from proto."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 561
    .end local v2    # "e":Ljava/io/IOException;
    goto/16 :goto_1

    .line 550
    :pswitch_2
    const-wide v2, 0x20b00000014L

    :try_start_2
    invoke-static {v0, v2, v3, p1, v1}, Lcom/android/server/usage/UsageStatsProto;->loadUsageStats(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats;Ljava/util/List;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 553
    goto/16 :goto_1

    .line 551
    :catch_2
    move-exception v2

    .line 552
    .restart local v2    # "e":Ljava/io/IOException;
    sget-object v3, Lcom/android/server/usage/UsageStatsProto;->TAG:Ljava/lang/String;

    const-string v4, "Unable to read some usage stats from proto."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 554
    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 537
    :pswitch_3
    const-wide v2, 0x10b0000000dL

    iget-object v4, p1, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-static {v0, v2, v3, v4}, Lcom/android/server/usage/UsageStatsProto;->loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V

    .line 539
    goto :goto_1

    .line 533
    :pswitch_4
    const-wide v2, 0x10b0000000cL

    iget-object v4, p1, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-static {v0, v2, v3, v4}, Lcom/android/server/usage/UsageStatsProto;->loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V

    .line 535
    goto :goto_1

    .line 529
    :pswitch_5
    const-wide v2, 0x10b0000000bL

    iget-object v4, p1, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-static {v0, v2, v3, v4}, Lcom/android/server/usage/UsageStatsProto;->loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V

    .line 531
    goto :goto_1

    .line 525
    :pswitch_6
    const-wide v2, 0x10b0000000aL

    iget-object v4, p1, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-static {v0, v2, v3, v4}, Lcom/android/server/usage/UsageStatsProto;->loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V

    .line 527
    goto :goto_1

    .line 521
    :cond_0
    const-wide v2, 0x10500000004L

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    iput v2, p1, Lcom/android/server/usage/IntervalStats;->minorVersion:I

    .line 523
    goto :goto_1

    .line 517
    :cond_1
    const-wide v2, 0x10500000003L

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    iput v2, p1, Lcom/android/server/usage/IntervalStats;->majorVersion:I

    .line 519
    goto :goto_1

    .line 542
    :cond_2
    :try_start_3
    invoke-static {v0}, Lcom/android/server/usage/UsageStatsProto;->readStringPool(Landroid/util/proto/ProtoInputStream;)Ljava/util/List;

    move-result-object v2

    move-object v1, v2

    .line 543
    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 546
    goto :goto_1

    .line 544
    :catch_3
    move-exception v2

    .line 545
    .restart local v2    # "e":Ljava/io/IOException;
    sget-object v3, Lcom/android/server/usage/UsageStatsProto;->TAG:Ljava/lang/String;

    const-string v4, "Unable to read string pool from proto."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 547
    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 513
    :cond_3
    iget-wide v2, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-wide v4, 0x10300000001L

    invoke-virtual {v0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/server/usage/IntervalStats;->endTime:J

    .line 515
    nop

    .line 571
    :goto_1
    goto/16 :goto_0

    .line 570
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/usage/IntervalStats;->upgradeIfNeeded()V

    .line 571
    return-void

    nop

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

.method private static readStringPool(Landroid/util/proto/ProtoInputStream;)Ljava/util/List;
    .locals 5
    .param p0, "proto"    # Landroid/util/proto/ProtoInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoInputStream;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    const-wide v0, 0x10b00000002L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v0

    .line 47
    .local v0, "token":J
    const-wide v2, 0x10500000001L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->nextField(J)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 48
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v4

    .local v2, "stringPool":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 50
    .end local v2    # "stringPool":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .restart local v2    # "stringPool":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 53
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    goto :goto_1

    .line 55
    :cond_1
    const-wide v3, 0x20900000002L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    :goto_1
    goto :goto_0

    .line 59
    :cond_2
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 60
    return-object v2
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

    .line 584
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 585
    .local v0, "proto":Landroid/util/proto/ProtoOutputStream;
    iget-wide v1, p1, Lcom/android/server/usage/IntervalStats;->endTime:J

    iget-wide v3, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 586
    invoke-static {v1, v2, v3, v4}, Lcom/android/server/usage/UsageStatsProtoV2;->getOffsetTimestamp(JJ)J

    move-result-wide v1

    .line 585
    const-wide v3, 0x10300000001L

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 587
    iget v1, p1, Lcom/android/server/usage/IntervalStats;->majorVersion:I

    const-wide v2, 0x10500000003L

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 588
    iget v1, p1, Lcom/android/server/usage/IntervalStats;->minorVersion:I

    const-wide v2, 0x10500000004L

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 591
    :try_start_0
    invoke-static {v0, p1}, Lcom/android/server/usage/UsageStatsProto;->writeStringPool(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/usage/IntervalStats;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 594
    goto :goto_0

    .line 592
    :catch_0
    move-exception v1

    .line 593
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    sget-object v2, Lcom/android/server/usage/UsageStatsProto;->TAG:Ljava/lang/String;

    const-string v3, "Unable to write string pool to proto."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 597
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    const-wide v2, 0x10b0000000aL

    :try_start_1
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget v4, v1, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget-wide v5, v1, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lcom/android/server/usage/UsageStatsProto;->writeCountAndTime(Landroid/util/proto/ProtoOutputStream;JIJ)V

    .line 599
    const-wide v2, 0x10b0000000bL

    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget v4, v1, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget-wide v5, v1, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lcom/android/server/usage/UsageStatsProto;->writeCountAndTime(Landroid/util/proto/ProtoOutputStream;JIJ)V

    .line 601
    const-wide v2, 0x10b0000000cL

    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget v4, v1, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget-wide v5, v1, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lcom/android/server/usage/UsageStatsProto;->writeCountAndTime(Landroid/util/proto/ProtoOutputStream;JIJ)V

    .line 603
    const-wide v2, 0x10b0000000dL

    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget v4, v1, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget-wide v5, v1, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lcom/android/server/usage/UsageStatsProto;->writeCountAndTime(Landroid/util/proto/ProtoOutputStream;JIJ)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 607
    goto :goto_1

    .line 605
    :catch_1
    move-exception v1

    .line 606
    .restart local v1    # "e":Ljava/lang/IllegalArgumentException;
    sget-object v2, Lcom/android/server/usage/UsageStatsProto;->TAG:Ljava/lang/String;

    const-string v3, "Unable to write some interval stats trackers to proto."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 609
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v7

    .line 610
    .local v7, "statsCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v7, :cond_0

    .line 612
    const-wide v2, 0x20b00000014L

    :try_start_2
    iget-object v4, p1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    .line 613
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/usage/UsageStats;

    .line 612
    invoke-static {v0, v2, v3, p1, v4}, Lcom/android/server/usage/UsageStatsProto;->writeUsageStats(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/usage/IntervalStats;Landroid/app/usage/UsageStats;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 616
    goto :goto_3

    .line 614
    :catch_2
    move-exception v2

    .line 615
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    sget-object v3, Lcom/android/server/usage/UsageStatsProto;->TAG:Ljava/lang/String;

    const-string v4, "Unable to write some usage stats to proto."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 610
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 618
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 619
    .local v8, "configCount":I
    const/4 v1, 0x0

    move v9, v1

    .local v9, "i":I
    :goto_4
    if-ge v9, v8, :cond_1

    .line 620
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v2, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v10

    .line 622
    .local v10, "active":Z
    const-wide v2, 0x20b00000015L

    :try_start_3
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    .line 623
    invoke-virtual {v1, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/app/usage/ConfigurationStats;

    .line 622
    move-object v1, v0

    move-object v4, p1

    move v6, v10

    invoke-static/range {v1 .. v6}, Lcom/android/server/usage/UsageStatsProto;->writeConfigStats(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/usage/IntervalStats;Landroid/app/usage/ConfigurationStats;Z)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    .line 626
    goto :goto_5

    .line 624
    :catch_3
    move-exception v1

    .line 625
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    sget-object v2, Lcom/android/server/usage/UsageStatsProto;->TAG:Ljava/lang/String;

    const-string v3, "Unable to write some configuration stats to proto."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 619
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v10    # "active":Z
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 628
    .end local v9    # "i":I
    :cond_1
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v1}, Landroid/app/usage/EventList;->size()I

    move-result v1

    .line 629
    .local v1, "eventCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v1, :cond_2

    .line 631
    const-wide v3, 0x20b00000016L

    :try_start_4
    iget-object v5, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v5, v2}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    move-result-object v5

    invoke-static {v0, v3, v4, p1, v5}, Lcom/android/server/usage/UsageStatsProto;->writeEvent(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/usage/IntervalStats;Landroid/app/usage/UsageEvents$Event;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4

    .line 634
    goto :goto_7

    .line 632
    :catch_4
    move-exception v3

    .line 633
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    sget-object v4, Lcom/android/server/usage/UsageStatsProto;->TAG:Ljava/lang/String;

    const-string v5, "Unable to write some events to proto."

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 629
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 637
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 638
    return-void
.end method

.method private static writeChooserCounts(Landroid/util/proto/ProtoOutputStream;Landroid/app/usage/UsageStats;)V
    .locals 8
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "usageStats"    # Landroid/app/usage/UsageStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 368
    if-eqz p1, :cond_4

    iget-object v0, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    if-eqz v0, :cond_4

    iget-object v0, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    .line 369
    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 372
    :cond_0
    iget-object v0, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 373
    .local v0, "chooserCountSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 374
    iget-object v2, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 375
    .local v2, "action":Ljava/lang/String;
    iget-object v3, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    .line 376
    .local v3, "counts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 377
    goto :goto_1

    .line 379
    :cond_1
    const-wide v4, 0x20b00000007L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 380
    .local v4, "token":J
    const-wide v6, 0x10900000001L

    invoke-virtual {p0, v6, v7, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 381
    invoke-static {p0, v3}, Lcom/android/server/usage/UsageStatsProto;->writeCountsForAction(Landroid/util/proto/ProtoOutputStream;Landroid/util/ArrayMap;)V

    .line 382
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 373
    .end local v2    # "action":Ljava/lang/String;
    .end local v3    # "counts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v4    # "token":J
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 384
    .end local v1    # "i":I
    :cond_3
    return-void

    .line 370
    .end local v0    # "chooserCountSize":I
    :cond_4
    :goto_2
    return-void
.end method

.method private static writeConfigStats(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/usage/IntervalStats;Landroid/app/usage/ConfigurationStats;Z)V
    .locals 12
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "fieldId"    # J
    .param p3, "stats"    # Lcom/android/server/usage/IntervalStats;
    .param p4, "configStats"    # Landroid/app/usage/ConfigurationStats;
    .param p5, "isActive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 404
    move-object v7, p0

    move-object/from16 v8, p4

    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 405
    .local v9, "token":J
    iget-object v0, v8, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    const-wide v1, 0x10b00000001L

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Configuration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 406
    iget-wide v3, v8, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    move-object v11, p3

    iget-wide v5, v11, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-wide v1, 0x10300000002L

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/server/usage/UsageStatsProtoV2;->writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 409
    iget-wide v0, v8, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    const-wide v2, 0x10300000003L

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 411
    iget v0, v8, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    const-wide v1, 0x10500000004L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 412
    const-wide v0, 0x10800000005L

    move/from16 v2, p5

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 413
    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 414
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

    .line 359
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 360
    .local v0, "token":J
    const-wide v2, 0x10500000001L

    invoke-virtual {p0, v2, v3, p3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 361
    const-wide v2, 0x10300000002L

    invoke-virtual {p0, v2, v3, p4, p5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 362
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 363
    return-void
.end method

.method private static writeCountsForAction(Landroid/util/proto/ProtoOutputStream;Landroid/util/ArrayMap;)V
    .locals 8
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 388
    .local p1, "counts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 389
    .local v0, "countsSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 390
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 391
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 392
    .local v3, "count":I
    if-lez v3, :cond_0

    .line 393
    const-wide v4, 0x20b00000003L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 394
    .local v4, "token":J
    const-wide v6, 0x10900000001L

    invoke-virtual {p0, v6, v7, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 395
    const-wide v6, 0x10500000003L

    invoke-virtual {p0, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 396
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 389
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "count":I
    .end local v4    # "token":J
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 399
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private static writeEvent(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/usage/IntervalStats;Landroid/app/usage/UsageEvents$Event;)V
    .locals 13
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "fieldId"    # J
    .param p3, "stats"    # Lcom/android/server/usage/IntervalStats;
    .param p4, "event"    # Landroid/app/usage/UsageEvents$Event;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 418
    move-object v7, p0

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    .line 419
    .local v10, "token":J
    iget-object v0, v8, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    iget-object v1, v9, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v12

    .line 420
    .local v12, "packageIndex":I
    if-ltz v12, :cond_0

    .line 421
    const-wide v0, 0x10500000002L

    add-int/lit8 v2, v12, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_0

    .line 424
    :cond_0
    const-wide v0, 0x10900000001L

    iget-object v2, v9, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 426
    :goto_0
    iget-object v0, v9, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 427
    iget-object v0, v8, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    iget-object v1, v9, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 428
    .local v0, "classIndex":I
    if-ltz v0, :cond_1

    .line 429
    const-wide v1, 0x10500000004L

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_1

    .line 432
    :cond_1
    const-wide v1, 0x10900000003L

    iget-object v3, v9, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 435
    .end local v0    # "classIndex":I
    :cond_2
    :goto_1
    const-wide v1, 0x10300000005L

    iget-wide v3, v9, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iget-wide v5, v8, Lcom/android/server/usage/IntervalStats;->beginTime:J

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/server/usage/UsageStatsProtoV2;->writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 437
    const-wide v0, 0x10500000006L

    iget v2, v9, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 438
    const-wide v0, 0x10500000007L

    iget v2, v9, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 439
    const-wide v0, 0x1050000000eL

    iget v2, v9, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 440
    iget-object v0, v9, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 441
    iget-object v0, v8, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    iget-object v1, v9, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 442
    .local v0, "taskRootPackageIndex":I
    if-ltz v0, :cond_3

    .line 443
    const-wide v1, 0x1050000000fL

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 447
    .end local v0    # "taskRootPackageIndex":I
    :cond_3
    iget-object v0, v9, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 448
    iget-object v0, v8, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    iget-object v1, v9, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 449
    .local v0, "taskRootClassIndex":I
    if-ltz v0, :cond_4

    .line 450
    const-wide v1, 0x10500000010L

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 454
    .end local v0    # "taskRootClassIndex":I
    :cond_4
    iget v0, v9, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_a

    const/16 v1, 0x8

    if-eq v0, v1, :cond_9

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_8

    const/16 v1, 0xb

    if-eq v0, v1, :cond_7

    const/16 v1, 0xc

    if-eq v0, v1, :cond_5

    goto :goto_3

    .line 471
    :cond_5
    iget-object v0, v9, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 472
    iget-object v0, v8, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    iget-object v1, v9, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 474
    .local v0, "channelIndex":I
    if-ltz v0, :cond_6

    .line 475
    const-wide v1, 0x1050000000dL

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_2

    .line 479
    :cond_6
    const-wide v1, 0x1090000000cL

    iget-object v3, v9, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 482
    .end local v0    # "channelIndex":I
    :goto_2
    goto :goto_3

    .line 466
    :cond_7
    iget v0, v9, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    if-eqz v0, :cond_b

    .line 467
    const-wide v0, 0x1050000000bL

    iget v2, v9, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_3

    .line 485
    :cond_8
    iget-object v0, v9, Landroid/app/usage/UsageEvents$Event;->mLocusId:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 486
    iget-object v0, v8, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    iget-object v1, v9, Landroid/app/usage/UsageEvents$Event;->mLocusId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 487
    .local v0, "locusIdIndex":I
    if-ltz v0, :cond_b

    .line 488
    const-wide v1, 0x10500000011L

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_3

    .line 461
    .end local v0    # "locusIdIndex":I
    :cond_9
    iget-object v0, v9, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 462
    const-wide v0, 0x10900000009L

    iget-object v2, v9, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_3

    .line 456
    :cond_a
    iget-object v0, v9, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v0, :cond_b

    .line 457
    iget-object v0, v9, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    const-wide v1, 0x10b00000008L

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Configuration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 492
    :cond_b
    :goto_3
    invoke-virtual {p0, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 493
    return-void
.end method

.method private static writeStringPool(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/usage/IntervalStats;)V
    .locals 7
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "stats"    # Lcom/android/server/usage/IntervalStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 310
    const-wide v0, 0x10b00000002L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 311
    .local v0, "token":J
    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    .line 312
    .local v2, "size":I
    const-wide v3, 0x10500000001L

    invoke-virtual {p0, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 313
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 314
    const-wide v4, 0x20900000002L

    iget-object v6, p1, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    invoke-virtual {v6, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p0, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 313
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 316
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 317
    return-void
.end method

.method private static writeUsageStats(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/usage/IntervalStats;Landroid/app/usage/UsageStats;)V
    .locals 14
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "fieldId"    # J
    .param p3, "stats"    # Lcom/android/server/usage/IntervalStats;
    .param p4, "usageStats"    # Landroid/app/usage/UsageStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 322
    move-object v8, p0

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-virtual/range {p0 .. p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    .line 324
    .local v11, "token":J
    iget-object v0, v9, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    iget-object v1, v10, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v13

    .line 325
    .local v13, "packageIndex":I
    if-ltz v13, :cond_0

    .line 326
    const-wide v0, 0x10500000002L

    add-int/lit8 v2, v13, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_0

    .line 329
    :cond_0
    const-wide v0, 0x10900000001L

    iget-object v2, v10, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 331
    :goto_0
    const-wide v2, 0x10300000003L

    iget-wide v4, v10, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    iget-wide v6, v9, Lcom/android/server/usage/IntervalStats;->beginTime:J

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/android/server/usage/UsageStatsProtoV2;->writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 334
    const-wide v0, 0x10300000004L

    iget-wide v2, v10, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 336
    const-wide v0, 0x10500000005L

    iget v2, v10, Landroid/app/usage/UsageStats;->mLastEvent:I

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 338
    const-wide v2, 0x10300000008L

    iget-wide v4, v10, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    iget-wide v6, v9, Lcom/android/server/usage/IntervalStats;->beginTime:J

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/android/server/usage/UsageStatsProtoV2;->writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 341
    const-wide v0, 0x10300000009L

    iget-wide v2, v10, Landroid/app/usage/UsageStats;->mTotalTimeForegroundServiceUsed:J

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 343
    const-wide v2, 0x1030000000aL

    iget-wide v4, v10, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    iget-wide v6, v9, Lcom/android/server/usage/IntervalStats;->beginTime:J

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/android/server/usage/UsageStatsProtoV2;->writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 346
    const-wide v0, 0x1030000000bL

    iget-wide v2, v10, Landroid/app/usage/UsageStats;->mTotalTimeVisible:J

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 348
    const-wide v0, 0x10500000006L

    iget v2, v10, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 350
    :try_start_0
    invoke-static {p0, v10}, Lcom/android/server/usage/UsageStatsProto;->writeChooserCounts(Landroid/util/proto/ProtoOutputStream;Landroid/app/usage/UsageStats;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    goto :goto_1

    .line 351
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 352
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/android/server/usage/UsageStatsProto;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to write chooser counts for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v10, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 354
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    invoke-virtual {p0, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 355
    return-void
.end method
