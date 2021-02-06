.class Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;
.super Ljava/lang/Object;
.source "NetworkStatsService.java"

# interfaces
.implements Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultNetworkStatsSettings"
.end annotation


# instance fields
.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 2134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2135
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/content/ContentResolver;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->mResolver:Landroid/content/ContentResolver;

    .line 2137
    return-void
.end method

.method private getGlobalBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # Z

    .line 2143
    move v0, p2

    .line 2144
    .local v0, "defInt":I
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v1, p1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private getGlobalLong(Ljava/lang/String;J)J
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # J

    .line 2140
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2, p3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public getAugmentEnabled()Z
    .locals 2

    .line 2165
    const-string/jumbo v0, "netstats_augment_enabled"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getGlobalBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getCombineSubtypeEnabled()Z
    .locals 2

    .line 2169
    const-string/jumbo v0, "netstats_combine_subtype_enabled"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getGlobalBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getDevConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;
    .locals 8

    .line 2173
    new-instance v7, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;

    const-string/jumbo v0, "netstats_dev_bucket_duration"

    const-wide/32 v1, 0x36ee80

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getGlobalLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 2174
    const-string/jumbo v0, "netstats_dev_rotate_age"

    const-wide/32 v3, 0x4d3f6400

    invoke-direct {p0, v0, v3, v4}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getGlobalLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 2175
    const-string/jumbo v0, "netstats_dev_delete_age"

    const-wide v5, 0x1cf7c5800L

    invoke-direct {p0, v0, v5, v6}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getGlobalLong(Ljava/lang/String;J)J

    move-result-wide v5

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;-><init>(JJJ)V

    .line 2173
    return-object v7
.end method

.method public getDevPersistBytes(J)J
    .locals 2
    .param p1, "def"    # J

    .line 2195
    const-string/jumbo v0, "netstats_dev_persist_bytes"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getGlobalLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getGlobalAlertBytes(J)J
    .locals 2
    .param p1, "def"    # J

    .line 2157
    const-string/jumbo v0, "netstats_global_alert_bytes"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getGlobalLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPollDelay()J
    .locals 2

    .line 2153
    const-wide/16 v0, 0x3e8

    return-wide v0
.end method

.method public getPollInterval()J
    .locals 3

    .line 2149
    const-string/jumbo v0, "netstats_poll_interval"

    const-wide/32 v1, 0x1b7740

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getGlobalLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSampleEnabled()Z
    .locals 2

    .line 2161
    const-string/jumbo v0, "netstats_sample_enabled"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getGlobalBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getUidConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;
    .locals 8

    .line 2183
    new-instance v7, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;

    const-string/jumbo v0, "netstats_uid_bucket_duration"

    const-wide/32 v1, 0x6ddd00

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getGlobalLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 2184
    const-string/jumbo v0, "netstats_uid_rotate_age"

    const-wide/32 v3, 0x4d3f6400

    invoke-direct {p0, v0, v3, v4}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getGlobalLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 2185
    const-string/jumbo v0, "netstats_uid_delete_age"

    const-wide v5, 0x1cf7c5800L

    invoke-direct {p0, v0, v5, v6}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getGlobalLong(Ljava/lang/String;J)J

    move-result-wide v5

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;-><init>(JJJ)V

    .line 2183
    return-object v7
.end method

.method public getUidPersistBytes(J)J
    .locals 2
    .param p1, "def"    # J

    .line 2203
    const-string/jumbo v0, "netstats_uid_persist_bytes"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getGlobalLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUidTagConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;
    .locals 8

    .line 2189
    new-instance v7, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;

    const-string/jumbo v0, "netstats_uid_tag_bucket_duration"

    const-wide/32 v1, 0x6ddd00

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getGlobalLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 2190
    const-string/jumbo v0, "netstats_uid_tag_rotate_age"

    const-wide/32 v3, 0x19bfcc00

    invoke-direct {p0, v0, v3, v4}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getGlobalLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 2191
    const-string/jumbo v0, "netstats_uid_tag_delete_age"

    const-wide/32 v5, 0x4d3f6400

    invoke-direct {p0, v0, v5, v6}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getGlobalLong(Ljava/lang/String;J)J

    move-result-wide v5

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;-><init>(JJJ)V

    .line 2189
    return-object v7
.end method

.method public getUidTagPersistBytes(J)J
    .locals 2
    .param p1, "def"    # J

    .line 2207
    const-string/jumbo v0, "netstats_uid_tag_persist_bytes"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getGlobalLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getXtConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;
    .locals 1

    .line 2179
    invoke-virtual {p0}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getDevConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;

    move-result-object v0

    return-object v0
.end method

.method public getXtPersistBytes(J)J
    .locals 2
    .param p1, "def"    # J

    .line 2199
    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getDevPersistBytes(J)J

    move-result-wide v0

    return-wide v0
.end method
