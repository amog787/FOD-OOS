.class Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;
.super Ljava/lang/Object;
.source "MultipathPolicyTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/MultipathPolicyTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MultipathTracker"
.end annotation


# instance fields
.field private mMultipathBudget:J

.field private mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field private final mNetworkTemplate:Landroid/net/NetworkTemplate;

.field private mQuota:J

.field private final mUsageCallback:Landroid/app/usage/NetworkStatsManager$UsageCallback;

.field final network:Landroid/net/Network;

.field final subscriberId:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/MultipathPolicyTracker;Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 19
    .param p1, "this$0"    # Lcom/android/server/connectivity/MultipathPolicyTracker;
    .param p2, "network"    # Landroid/net/Network;
    .param p3, "nc"    # Landroid/net/NetworkCapabilities;

    .line 197
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iput-object v1, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iput-object v2, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->network:Landroid/net/Network;

    .line 199
    new-instance v4, Landroid/net/NetworkCapabilities;

    invoke-direct {v4, v3}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    iput-object v4, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 200
    invoke-virtual/range {p3 .. p3}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v4

    .line 201
    .local v4, "specifier":Landroid/net/NetworkSpecifier;
    const/4 v5, -0x1

    .line 202
    .local v5, "subId":I
    instance-of v6, v4, Landroid/net/TelephonyNetworkSpecifier;

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_2

    .line 203
    move-object v6, v4

    check-cast v6, Landroid/net/TelephonyNetworkSpecifier;

    invoke-virtual {v6}, Landroid/net/TelephonyNetworkSpecifier;->getSubscriptionId()I

    move-result v5

    .line 210
    invoke-static/range {p1 .. p1}, Lcom/android/server/connectivity/MultipathPolicyTracker;->access$100(Lcom/android/server/connectivity/MultipathPolicyTracker;)Landroid/content/Context;

    move-result-object v6

    const-class v9, Landroid/telephony/TelephonyManager;

    invoke-virtual {v6, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 211
    .local v6, "tele":Landroid/telephony/TelephonyManager;
    if-eqz v6, :cond_1

    .line 214
    invoke-virtual {v6, v5}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v6

    .line 215
    if-eqz v6, :cond_0

    .line 220
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->subscriberId:Ljava/lang/String;

    .line 221
    new-instance v9, Landroid/net/NetworkTemplate;

    const/4 v11, 0x1

    iget-object v12, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->subscriberId:Ljava/lang/String;

    new-array v13, v7, [Ljava/lang/String;

    aput-object v12, v13, v8

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, 0x0

    const/16 v18, -0x1

    move-object v10, v9

    invoke-direct/range {v10 .. v18}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;IIII)V

    iput-object v9, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    .line 225
    new-instance v7, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker$1;

    invoke-direct {v7, v0, v1, v2}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker$1;-><init>(Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;Lcom/android/server/connectivity/MultipathPolicyTracker;Landroid/net/Network;)V

    iput-object v7, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mUsageCallback:Landroid/app/usage/NetworkStatsManager$UsageCallback;

    .line 234
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->updateMultipathBudget()V

    .line 235
    return-void

    .line 216
    :cond_0
    new-instance v9, Ljava/lang/IllegalStateException;

    new-array v7, v7, [Ljava/lang/Object;

    .line 217
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v8

    .line 216
    const-string v8, "Can\'t get TelephonyManager for subId %d"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v9, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 212
    :cond_1
    new-instance v7, Ljava/lang/IllegalStateException;

    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "Missing TelephonyManager"

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 205
    .end local v6    # "tele":Landroid/telephony/TelephonyManager;
    :cond_2
    new-instance v6, Ljava/lang/IllegalStateException;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v2, v9, v8

    aput-object v3, v9, v7

    const-string v7, "Can\'t get subId from mobile network %s (%s)"

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method static synthetic access$202(Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;
    .param p1, "x1"    # J

    .line 186
    iput-wide p1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mMultipathBudget:J

    return-wide p1
.end method

.method private getDailyNonDefaultDataUsage()J
    .locals 6

    .line 243
    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;

    .line 244
    invoke-static {v0}, Lcom/android/server/connectivity/MultipathPolicyTracker;->access$300(Lcom/android/server/connectivity/MultipathPolicyTracker;)Ljava/time/Clock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Clock;->instant()Ljava/time/Instant;

    move-result-object v0

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    .line 245
    .local v0, "end":Ljava/time/ZonedDateTime;
    sget-object v1, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v0, v1}, Ljava/time/ZonedDateTime;->truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/ZonedDateTime;

    move-result-object v1

    .line 247
    .local v1, "start":Ljava/time/ZonedDateTime;
    nop

    .line 248
    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    .line 249
    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v4

    .line 247
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->getNetworkTotalBytes(JJ)J

    move-result-wide v2

    .line 251
    .local v2, "bytes":J
    return-wide v2
.end method

.method private getNetworkTotalBytes(JJ)J
    .locals 7
    .param p1, "start"    # J
    .param p3, "end"    # J

    .line 256
    :try_start_0
    const-class v0, Lcom/android/server/net/NetworkStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/net/NetworkStatsManagerInternal;

    iget-object v2, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    .line 257
    move-wide v3, p1

    move-wide v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/net/NetworkStatsManagerInternal;->getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    return-wide v0

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/server/connectivity/MultipathPolicyTracker;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get data usage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const-wide/16 v1, -0x1

    return-wide v1
.end method

.method private getRemainingDailyBudget(JLandroid/util/Range;)J
    .locals 15
    .param p1, "limitBytes"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/util/Range<",
            "Ljava/time/ZonedDateTime;",
            ">;)J"
        }
    .end annotation

    .line 277
    .local p3, "cycle":Landroid/util/Range;, "Landroid/util/Range<Ljava/time/ZonedDateTime;>;"
    move-object v0, p0

    invoke-virtual/range {p3 .. p3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/time/ZonedDateTime;

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    .line 278
    .local v1, "start":J
    invoke-virtual/range {p3 .. p3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/time/ZonedDateTime;

    invoke-virtual {v3}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v3

    .line 279
    .local v3, "end":J
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->getNetworkTotalBytes(JJ)J

    move-result-wide v5

    .line 280
    .local v5, "totalBytes":J
    const-wide/16 v7, -0x1

    cmp-long v7, v5, v7

    const-wide/16 v8, 0x0

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    sub-long v10, p1, v5

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    :goto_0
    move-wide v7, v8

    .line 283
    .local v7, "remainingBytes":J
    iget-object v9, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;

    .line 284
    invoke-static {v9}, Lcom/android/server/connectivity/MultipathPolicyTracker;->access$300(Lcom/android/server/connectivity/MultipathPolicyTracker;)Ljava/time/Clock;

    move-result-object v9

    invoke-virtual {v9}, Ljava/time/Clock;->millis()J

    move-result-wide v9

    sub-long v9, v3, v9

    const-wide/16 v11, 0x1

    sub-long/2addr v9, v11

    sget-object v13, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v13, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v13

    div-long/2addr v9, v13

    add-long/2addr v9, v11

    .line 286
    .local v9, "remainingDays":J
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    div-long v11, v7, v11

    return-wide v11
.end method

.method private getTemplateMatchingNetworkIdentity(Landroid/net/NetworkCapabilities;)Landroid/net/NetworkIdentity;
    .locals 9
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .line 265
    new-instance v8, Landroid/net/NetworkIdentity;

    iget-object v3, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->subscriberId:Ljava/lang/String;

    .line 270
    const/16 v0, 0x12

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    xor-int/lit8 v5, v0, 0x1

    const/16 v0, 0xb

    .line 271
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    xor-int/lit8 v6, v0, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;ZZZ)V

    .line 265
    return-object v8
.end method

.method private getUserPolicyOpportunisticQuotaBytes()J
    .locals 17

    .line 291
    move-object/from16 v0, p0

    const-wide v1, 0x7fffffffffffffffL

    .line 292
    .local v1, "minQuota":J
    iget-object v3, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {v0, v3}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->getTemplateMatchingNetworkIdentity(Landroid/net/NetworkCapabilities;)Landroid/net/NetworkIdentity;

    move-result-object v3

    .line 295
    .local v3, "identity":Landroid/net/NetworkIdentity;
    iget-object v4, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;

    invoke-static {v4}, Lcom/android/server/connectivity/MultipathPolicyTracker;->access$500(Lcom/android/server/connectivity/MultipathPolicyTracker;)Landroid/net/NetworkPolicyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkPolicyManager;->getNetworkPolicies()[Landroid/net/NetworkPolicy;

    move-result-object v4

    .line 296
    .local v4, "policies":[Landroid/net/NetworkPolicy;
    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    const-wide/16 v7, -0x1

    if-ge v6, v5, :cond_2

    aget-object v9, v4, v6

    .line 297
    .local v9, "policy":Landroid/net/NetworkPolicy;
    invoke-virtual {v9}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, v9, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v10, v3}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 298
    invoke-virtual {v9}, Landroid/net/NetworkPolicy;->cycleIterator()Ljava/util/Iterator;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Range;

    invoke-virtual {v10}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v10

    check-cast v10, Ljava/time/ZonedDateTime;

    .line 299
    invoke-virtual {v10}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v10

    invoke-virtual {v10}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v10

    .line 301
    .local v10, "cycleStart":J
    invoke-static {v9, v10, v11}, Lcom/android/server/connectivity/MultipathPolicyTracker;->access$600(Landroid/net/NetworkPolicy;J)J

    move-result-wide v12

    .line 302
    .local v12, "activeWarning":J
    cmp-long v14, v12, v7

    if-nez v14, :cond_0

    .line 303
    invoke-static {v9, v10, v11}, Lcom/android/server/connectivity/MultipathPolicyTracker;->access$700(Landroid/net/NetworkPolicy;J)J

    move-result-wide v14

    goto :goto_1

    .line 304
    :cond_0
    move-wide v14, v12

    :goto_1
    nop

    .line 306
    .local v14, "policyBytes":J
    cmp-long v16, v14, v7

    if-eqz v16, :cond_1

    cmp-long v7, v14, v7

    if-eqz v7, :cond_1

    .line 307
    nop

    .line 308
    invoke-virtual {v9}, Landroid/net/NetworkPolicy;->cycleIterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Range;

    .line 307
    invoke-direct {v0, v14, v15, v7}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->getRemainingDailyBudget(JLandroid/util/Range;)J

    move-result-wide v7

    .line 309
    .local v7, "policyBudget":J
    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 296
    .end local v7    # "policyBudget":J
    .end local v9    # "policy":Landroid/net/NetworkPolicy;
    .end local v10    # "cycleStart":J
    .end local v12    # "activeWarning":J
    .end local v14    # "policyBytes":J
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 314
    :cond_2
    const-wide v5, 0x7fffffffffffffffL

    cmp-long v5, v1, v5

    if-nez v5, :cond_3

    .line 315
    return-wide v7

    .line 318
    :cond_3
    const-wide/16 v5, 0x14

    div-long v5, v1, v5

    return-wide v5
.end method

.method private haveMultipathBudget()Z
    .locals 4

    .line 388
    iget-wide v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mMultipathBudget:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private maybeUnregisterUsageCallback()V
    .locals 2

    .line 399
    invoke-direct {p0}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->haveMultipathBudget()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;

    invoke-static {v0}, Lcom/android/server/connectivity/MultipathPolicyTracker;->access$1000(Lcom/android/server/connectivity/MultipathPolicyTracker;)Landroid/app/usage/NetworkStatsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mUsageCallback:Landroid/app/usage/NetworkStatsManager$UsageCallback;

    invoke-virtual {v0, v1}, Landroid/app/usage/NetworkStatsManager;->unregisterUsageCallback(Landroid/app/usage/NetworkStatsManager$UsageCallback;)V

    .line 402
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mMultipathBudget:J

    .line 404
    :cond_0
    return-void
.end method

.method private registerUsageCallback(J)V
    .locals 8
    .param p1, "budget"    # J

    .line 392
    invoke-direct {p0}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->maybeUnregisterUsageCallback()V

    .line 393
    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;

    invoke-static {v0}, Lcom/android/server/connectivity/MultipathPolicyTracker;->access$1000(Lcom/android/server/connectivity/MultipathPolicyTracker;)Landroid/app/usage/NetworkStatsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    iget-object v6, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mUsageCallback:Landroid/app/usage/NetworkStatsManager$UsageCallback;

    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;

    .line 394
    invoke-static {v0}, Lcom/android/server/connectivity/MultipathPolicyTracker;->access$900(Lcom/android/server/connectivity/MultipathPolicyTracker;)Landroid/os/Handler;

    move-result-object v7

    .line 393
    const/4 v3, 0x0

    move-wide v4, p1

    invoke-virtual/range {v1 .. v7}, Landroid/app/usage/NetworkStatsManager;->registerUsageCallback(Landroid/net/NetworkTemplate;IJLandroid/app/usage/NetworkStatsManager$UsageCallback;Landroid/os/Handler;)V

    .line 395
    iput-wide p1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mMultipathBudget:J

    .line 396
    return-void
.end method


# virtual methods
.method public getMultipathBudget()J
    .locals 2

    .line 384
    iget-wide v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mMultipathBudget:J

    return-wide v0
.end method

.method public getMultipathPreference()I
    .locals 1

    .line 371
    invoke-direct {p0}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->haveMultipathBudget()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    const/4 v0, 0x3

    return v0

    .line 374
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getQuota()J
    .locals 2

    .line 379
    iget-wide v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mQuota:J

    return-wide v0
.end method

.method public setNetworkCapabilities(Landroid/net/NetworkCapabilities;)V
    .locals 1
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .line 238
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0, p1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    iput-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 239
    return-void
.end method

.method shutdown()V
    .locals 0

    .line 407
    invoke-direct {p0}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->maybeUnregisterUsageCallback()V

    .line 408
    return-void
.end method

.method updateMultipathBudget()V
    .locals 8

    .line 322
    const-class v0, Lcom/android/server/net/NetworkPolicyManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyManagerInternal;

    iget-object v1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->network:Landroid/net/Network;

    .line 323
    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerInternal;->getSubscriptionOpportunisticQuota(Landroid/net/Network;I)J

    move-result-wide v0

    .line 327
    .local v0, "quota":J
    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 328
    invoke-direct {p0}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->getUserPolicyOpportunisticQuotaBytes()J

    move-result-wide v0

    .line 332
    :cond_0
    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 333
    iget-object v4, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;

    invoke-static {v4}, Lcom/android/server/connectivity/MultipathPolicyTracker;->access$800(Lcom/android/server/connectivity/MultipathPolicyTracker;)J

    move-result-wide v0

    .line 338
    :cond_1
    invoke-direct {p0}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->haveMultipathBudget()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-wide v4, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mQuota:J

    cmp-long v4, v0, v4

    if-nez v4, :cond_2

    .line 343
    return-void

    .line 345
    :cond_2
    iput-wide v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mQuota:J

    .line 349
    invoke-direct {p0}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->getDailyNonDefaultDataUsage()J

    move-result-wide v4

    .line 350
    .local v4, "usage":J
    cmp-long v2, v4, v2

    const-wide/16 v6, 0x0

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    sub-long v2, v0, v4

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    :goto_0
    move-wide v2, v6

    .line 361
    .local v2, "budget":J
    sget-wide v6, Landroid/app/usage/NetworkStatsManager;->MIN_THRESHOLD_BYTES:J

    cmp-long v6, v2, v6

    if-lez v6, :cond_4

    .line 364
    invoke-direct {p0, v2, v3}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->registerUsageCallback(J)V

    goto :goto_1

    .line 366
    :cond_4
    invoke-direct {p0}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->maybeUnregisterUsageCallback()V

    .line 368
    :goto_1
    return-void
.end method
