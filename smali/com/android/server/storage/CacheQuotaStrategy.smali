.class public Lcom/android/server/storage/CacheQuotaStrategy;
.super Ljava/lang/Object;
.source "CacheQuotaStrategy.java"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# static fields
.field private static final ATTR_PREVIOUS_BYTES:Ljava/lang/String; = "previousBytes"

.field private static final ATTR_QUOTA_IN_BYTES:Ljava/lang/String; = "bytes"

.field private static final ATTR_UID:Ljava/lang/String; = "uid"

.field private static final ATTR_UUID:Ljava/lang/String; = "uuid"

.field private static final CACHE_INFO_TAG:Ljava/lang/String; = "cache-info"

.field private static final TAG:Ljava/lang/String; = "CacheQuotaStrategy"

.field private static final TAG_QUOTA:Ljava/lang/String; = "quota"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInstaller:Lcom/android/server/pm/Installer;

.field private final mLock:Ljava/lang/Object;

.field private mPreviousValuesFile:Lcom/android/internal/os/AtomicFile;

.field private final mQuotaMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseLongArray;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoteService:Landroid/app/usage/ICacheQuotaService;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private final mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/usage/UsageStatsManagerInternal;Lcom/android/server/pm/Installer;Landroid/util/ArrayMap;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "usageStatsManager"    # Landroid/app/usage/UsageStatsManagerInternal;
    .param p3, "installer"    # Lcom/android/server/pm/Installer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/usage/UsageStatsManagerInternal;",
            "Lcom/android/server/pm/Installer;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseLongArray;",
            ">;)V"
        }
    .end annotation

    .line 97
    .local p4, "quotaMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseLongArray;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mLock:Ljava/lang/Object;

    .line 98
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mContext:Landroid/content/Context;

    .line 99
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    iput-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    .line 100
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/Installer;

    iput-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mInstaller:Lcom/android/server/pm/Installer;

    .line 101
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    iput-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mQuotaMap:Landroid/util/ArrayMap;

    .line 102
    new-instance v0, Lcom/android/internal/os/AtomicFile;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    .line 103
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "system"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v3, "cachequota.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mPreviousValuesFile:Lcom/android/internal/os/AtomicFile;

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/storage/CacheQuotaStrategy;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/storage/CacheQuotaStrategy;

    .line 74
    iget-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/storage/CacheQuotaStrategy;)Landroid/app/usage/ICacheQuotaService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/storage/CacheQuotaStrategy;

    .line 74
    iget-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mRemoteService:Landroid/app/usage/ICacheQuotaService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/storage/CacheQuotaStrategy;Landroid/app/usage/ICacheQuotaService;)Landroid/app/usage/ICacheQuotaService;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/storage/CacheQuotaStrategy;
    .param p1, "x1"    # Landroid/app/usage/ICacheQuotaService;

    .line 74
    iput-object p1, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mRemoteService:Landroid/app/usage/ICacheQuotaService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/storage/CacheQuotaStrategy;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/storage/CacheQuotaStrategy;

    .line 74
    invoke-direct {p0}, Lcom/android/server/storage/CacheQuotaStrategy;->getUnfulfilledRequests()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private createServiceConnection()V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 124
    return-void

    .line 127
    :cond_0
    new-instance v0, Lcom/android/server/storage/CacheQuotaStrategy$1;

    invoke-direct {v0, p0}, Lcom/android/server/storage/CacheQuotaStrategy$1;-><init>(Lcom/android/server/storage/CacheQuotaStrategy;)V

    iput-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 160
    return-void
.end method

.method private disconnectService()V
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 254
    iget-object v1, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 255
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 257
    :cond_0
    return-void
.end method

.method static getRequestFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/usage/CacheQuotaHint;
    .locals 6
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 393
    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "uuid"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 394
    .local v1, "uuid":Ljava/lang/String;
    const-string/jumbo v2, "uid"

    invoke-interface {p0, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 395
    .local v2, "uid":I
    const-string v3, "bytes"

    invoke-interface {p0, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 396
    .local v3, "bytes":J
    new-instance v5, Landroid/app/usage/CacheQuotaHint$Builder;

    invoke-direct {v5}, Landroid/app/usage/CacheQuotaHint$Builder;-><init>()V

    .line 397
    invoke-virtual {v5, v1}, Landroid/app/usage/CacheQuotaHint$Builder;->setVolumeUuid(Ljava/lang/String;)Landroid/app/usage/CacheQuotaHint$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/usage/CacheQuotaHint$Builder;->setUid(I)Landroid/app/usage/CacheQuotaHint$Builder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Landroid/app/usage/CacheQuotaHint$Builder;->setQuota(J)Landroid/app/usage/CacheQuotaHint$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/usage/CacheQuotaHint$Builder;->build()Landroid/app/usage/CacheQuotaHint;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    return-object v0

    .line 398
    .end local v1    # "uuid":Ljava/lang/String;
    .end local v2    # "uid":I
    .end local v3    # "bytes":J
    :catch_0
    move-exception v1

    .line 399
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v2, "CacheQuotaStrategy"

    const-string v3, "Invalid cache quota request, skipping."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    return-object v0
.end method

.method private getServiceComponentName()Landroid/content/ComponentName;
    .locals 7

    .line 260
    iget-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mContext:Landroid/content/Context;

    .line 261
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getServicesSystemSharedLibraryPackageName()Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "packageName":Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "CacheQuotaStrategy"

    if-nez v0, :cond_0

    .line 263
    const-string v3, "could not access the cache quota service: no package!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    return-object v1

    .line 267
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.app.usage.CacheQuotaService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 268
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    iget-object v4, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x84

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 271
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v4, :cond_2

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v5, :cond_1

    goto :goto_0

    .line 275
    :cond_1
    iget-object v1, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 276
    .local v1, "serviceInfo":Landroid/content/pm/ServiceInfo;
    new-instance v2, Landroid/content/ComponentName;

    iget-object v5, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v6, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 272
    .end local v1    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_2
    :goto_0
    const-string v5, "No valid components found."

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    return-object v1
.end method

.method private getUnfulfilledRequests()Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/usage/CacheQuotaHint;",
            ">;"
        }
    .end annotation

    .line 167
    move-object/from16 v1, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 168
    .local v10, "timeNow":J
    const-wide v2, 0x7528ad000L

    sub-long v12, v10, v2

    .line 170
    .local v12, "oneYearAgo":J
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v0

    .line 171
    .local v14, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/CacheQuotaHint;>;"
    iget-object v0, v1, Lcom/android/server/storage/CacheQuotaStrategy;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/os/UserManager;

    .line 172
    .local v15, "um":Landroid/os/UserManager;
    invoke-virtual {v15}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v9

    .line 173
    .local v9, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v7

    .line 174
    .local v7, "userCount":I
    iget-object v0, v1, Lcom/android/server/storage/CacheQuotaStrategy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 175
    .local v8, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    move v5, v0

    .local v5, "i":I
    :goto_0
    if-ge v5, v7, :cond_2

    .line 176
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 177
    .local v6, "info":Landroid/content/pm/UserInfo;
    iget-object v2, v1, Lcom/android/server/storage/CacheQuotaStrategy;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    iget v3, v6, Landroid/content/pm/UserInfo;->id:I

    const/4 v4, 0x4

    const/4 v0, 0x0

    .line 178
    move/from16 v16, v5

    move-object/from16 v17, v6

    .end local v5    # "i":I
    .end local v6    # "info":Landroid/content/pm/UserInfo;
    .local v16, "i":I
    .local v17, "info":Landroid/content/pm/UserInfo;
    move-wide v5, v12

    move/from16 v18, v7

    move-object/from16 v19, v8

    .end local v7    # "userCount":I
    .end local v8    # "packageManager":Landroid/content/pm/PackageManager;
    .local v18, "userCount":I
    .local v19, "packageManager":Landroid/content/pm/PackageManager;
    move-wide v7, v10

    move-object/from16 v20, v9

    .end local v9    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v20, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    move v9, v0

    invoke-virtual/range {v2 .. v9}, Landroid/app/usage/UsageStatsManagerInternal;->queryUsageStatsForUser(IIJJZ)Ljava/util/List;

    move-result-object v2

    .line 180
    .local v2, "stats":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    if-nez v2, :cond_0

    .line 181
    move-object/from16 v8, v19

    goto :goto_3

    .line 184
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/app/usage/UsageStats;

    .line 185
    .local v4, "stat":Landroid/app/usage/UsageStats;
    invoke-virtual {v4}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 189
    .local v5, "packageName":Ljava/lang/String;
    const/4 v0, 0x0

    move-object/from16 v6, v17

    .end local v17    # "info":Landroid/content/pm/UserInfo;
    .restart local v6    # "info":Landroid/content/pm/UserInfo;
    :try_start_0
    iget v7, v6, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v8, v19

    .end local v19    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v8    # "packageManager":Landroid/content/pm/PackageManager;
    :try_start_1
    invoke-virtual {v8, v5, v0, v7}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 191
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    new-instance v7, Landroid/app/usage/CacheQuotaHint$Builder;

    invoke-direct {v7}, Landroid/app/usage/CacheQuotaHint$Builder;-><init>()V

    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    .line 193
    invoke-virtual {v7, v9}, Landroid/app/usage/CacheQuotaHint$Builder;->setVolumeUuid(Ljava/lang/String;)Landroid/app/usage/CacheQuotaHint$Builder;

    move-result-object v7

    iget v9, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 194
    invoke-virtual {v7, v9}, Landroid/app/usage/CacheQuotaHint$Builder;->setUid(I)Landroid/app/usage/CacheQuotaHint$Builder;

    move-result-object v7

    .line 195
    invoke-virtual {v7, v4}, Landroid/app/usage/CacheQuotaHint$Builder;->setUsageStats(Landroid/app/usage/UsageStats;)Landroid/app/usage/CacheQuotaHint$Builder;

    move-result-object v7

    move-object v9, v0

    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v9, "appInfo":Landroid/content/pm/ApplicationInfo;
    const-wide/16 v0, -0x1

    .line 196
    invoke-virtual {v7, v0, v1}, Landroid/app/usage/CacheQuotaHint$Builder;->setQuota(J)Landroid/app/usage/CacheQuotaHint$Builder;

    move-result-object v0

    .line 197
    invoke-virtual {v0}, Landroid/app/usage/CacheQuotaHint$Builder;->build()Landroid/app/usage/CacheQuotaHint;

    move-result-object v0

    .line 191
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 201
    nop

    .line 202
    .end local v4    # "stat":Landroid/app/usage/UsageStats;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v9    # "appInfo":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v1, p0

    move-object/from16 v17, v6

    move-object/from16 v19, v8

    goto :goto_1

    .line 198
    .restart local v4    # "stat":Landroid/app/usage/UsageStats;
    .restart local v5    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_2

    .end local v8    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v19    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v0

    move-object/from16 v8, v19

    .line 200
    .end local v19    # "packageManager":Landroid/content/pm/PackageManager;
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v8    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_2
    move-object/from16 v1, p0

    move-object/from16 v17, v6

    move-object/from16 v19, v8

    goto :goto_1

    .line 184
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v4    # "stat":Landroid/app/usage/UsageStats;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "info":Landroid/content/pm/UserInfo;
    .end local v8    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v17    # "info":Landroid/content/pm/UserInfo;
    .restart local v19    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_1
    move-object/from16 v6, v17

    move-object/from16 v8, v19

    .line 175
    .end local v2    # "stats":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    .end local v17    # "info":Landroid/content/pm/UserInfo;
    .end local v19    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v8    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_3
    add-int/lit8 v5, v16, 0x1

    move-object/from16 v1, p0

    move/from16 v7, v18

    move-object/from16 v9, v20

    .end local v16    # "i":I
    .local v5, "i":I
    goto/16 :goto_0

    .line 204
    .end local v5    # "i":I
    .end local v18    # "userCount":I
    .end local v20    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v7    # "userCount":I
    .local v9, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_2
    return-object v14
.end method

.method private insertIntoQuotaMap(Ljava/lang/String;IIJ)V
    .locals 2
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "appId"    # I
    .param p4, "quota"    # J

    .line 244
    iget-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mQuotaMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseLongArray;

    .line 245
    .local v0, "volumeMap":Landroid/util/SparseLongArray;
    if-nez v0, :cond_0

    .line 246
    new-instance v1, Landroid/util/SparseLongArray;

    invoke-direct {v1}, Landroid/util/SparseLongArray;-><init>()V

    move-object v0, v1

    .line 247
    iget-object v1, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mQuotaMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    :cond_0
    invoke-static {p2, p3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    invoke-virtual {v0, v1, p4, p5}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 250
    return-void
.end method

.method private pushProcessedQuotas(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/usage/CacheQuotaHint;",
            ">;)V"
        }
    .end annotation

    .line 217
    .local p1, "processedRequests":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/CacheQuotaHint;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 218
    .local v0, "requestSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 219
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/CacheQuotaHint;

    .line 220
    .local v2, "request":Landroid/app/usage/CacheQuotaHint;
    invoke-virtual {v2}, Landroid/app/usage/CacheQuotaHint;->getQuota()J

    move-result-wide v9

    .line 221
    .local v9, "proposedQuota":J
    const-wide/16 v3, -0x1

    cmp-long v3, v9, v3

    if-nez v3, :cond_0

    .line 222
    goto :goto_1

    .line 226
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Landroid/app/usage/CacheQuotaHint;->getUid()I

    move-result v3

    move v11, v3

    .line 227
    .local v11, "uid":I
    iget-object v3, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v2}, Landroid/app/usage/CacheQuotaHint;->getVolumeUuid()Ljava/lang/String;

    move-result-object v4

    .line 228
    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 229
    invoke-static {v11}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    .line 227
    move-wide v7, v9

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/Installer;->setAppQuota(Ljava/lang/String;IIJ)V

    .line 230
    invoke-virtual {v2}, Landroid/app/usage/CacheQuotaHint;->getVolumeUuid()Ljava/lang/String;

    move-result-object v4

    .line 231
    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 232
    invoke-static {v11}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    .line 230
    move-object v3, p0

    move-wide v7, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/server/storage/CacheQuotaStrategy;->insertIntoQuotaMap(Ljava/lang/String;IIJ)V
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    .end local v11    # "uid":I
    goto :goto_1

    .line 233
    :catch_0
    move-exception v3

    .line 234
    .local v3, "ex":Lcom/android/server/pm/Installer$InstallerException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to set cache quota for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {v2}, Landroid/app/usage/CacheQuotaHint;->getUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 234
    const-string v5, "CacheQuotaStrategy"

    invoke-static {v5, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 218
    .end local v2    # "request":Landroid/app/usage/CacheQuotaHint;
    .end local v3    # "ex":Lcom/android/server/pm/Installer$InstallerException;
    .end local v9    # "proposedQuota":J
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 240
    .end local v1    # "i":I
    :cond_1
    invoke-direct {p0}, Lcom/android/server/storage/CacheQuotaStrategy;->disconnectService()V

    .line 241
    return-void
.end method

.method protected static readFromXml(Ljava/io/InputStream;)Landroid/util/Pair;
    .locals 9
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Landroid/app/usage/CacheQuotaHint;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 344
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 345
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 347
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 348
    .local v1, "eventType":I
    :goto_0
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_0

    if-eq v1, v3, :cond_0

    .line 350
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 353
    :cond_0
    const/4 v4, 0x0

    if-ne v1, v3, :cond_1

    .line 354
    const-string v2, "CacheQuotaStrategy"

    const-string v3, "No quotas found in quota file."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    return-object v4

    .line 358
    :cond_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 359
    .local v5, "tagName":Ljava/lang/String;
    const-string v6, "cache-info"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 363
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 366
    .local v6, "quotas":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/CacheQuotaHint;>;"
    :try_start_0
    const-string/jumbo v7, "previousBytes"

    invoke-interface {v0, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    .local v7, "previousBytes":J
    nop

    .line 373
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 375
    :cond_2
    if-ne v1, v2, :cond_4

    .line 376
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 377
    const-string/jumbo v4, "quota"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 378
    invoke-static {v0}, Lcom/android/server/storage/CacheQuotaStrategy;->getRequestFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/usage/CacheQuotaHint;

    move-result-object v4

    .line 379
    .local v4, "request":Landroid/app/usage/CacheQuotaHint;
    if-nez v4, :cond_3

    .line 380
    goto :goto_1

    .line 382
    :cond_3
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    .end local v4    # "request":Landroid/app/usage/CacheQuotaHint;
    :cond_4
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 386
    :goto_1
    if-ne v1, v3, :cond_2

    .line 387
    new-instance v2, Landroid/util/Pair;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, v3, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 368
    .end local v7    # "previousBytes":J
    :catch_0
    move-exception v2

    .line 369
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Previous bytes formatted incorrectly; aborting quota read."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 360
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v6    # "quotas":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/CacheQuotaHint;>;"
    :cond_5
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Invalid starting tag."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static saveToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;J)V
    .locals 9
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "bytesWhenCalculated"    # J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/util/List<",
            "Landroid/app/usage/CacheQuotaHint;",
            ">;J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 322
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/CacheQuotaHint;>;"
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 323
    const-string v0, "cache-info"

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 324
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 325
    .local v2, "requestSize":I
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "previousBytes"

    invoke-interface {p0, v1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 327
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 328
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/usage/CacheQuotaHint;

    .line 329
    .local v4, "request":Landroid/app/usage/CacheQuotaHint;
    const-string/jumbo v5, "quota"

    invoke-interface {p0, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 330
    invoke-virtual {v4}, Landroid/app/usage/CacheQuotaHint;->getVolumeUuid()Ljava/lang/String;

    move-result-object v6

    .line 331
    .local v6, "uuid":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 332
    invoke-virtual {v4}, Landroid/app/usage/CacheQuotaHint;->getVolumeUuid()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "uuid"

    invoke-interface {p0, v1, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 334
    :cond_0
    invoke-virtual {v4}, Landroid/app/usage/CacheQuotaHint;->getUid()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "uid"

    invoke-interface {p0, v1, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 335
    invoke-virtual {v4}, Landroid/app/usage/CacheQuotaHint;->getQuota()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    const-string v8, "bytes"

    invoke-interface {p0, v1, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 336
    invoke-interface {p0, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 327
    .end local v4    # "request":Landroid/app/usage/CacheQuotaHint;
    .end local v6    # "uuid":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 338
    .end local v3    # "i":I
    :cond_1
    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 339
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 340
    return-void
.end method

.method private writeXmlToFile(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/usage/CacheQuotaHint;",
            ">;)V"
        }
    .end annotation

    .line 280
    .local p1, "processedRequests":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/CacheQuotaHint;>;"
    const/4 v0, 0x0

    .line 282
    .local v0, "fileStream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v1}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 283
    .local v1, "out":Lorg/xmlpull/v1/XmlSerializer;
    iget-object v2, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mPreviousValuesFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v2}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v0, v2

    .line 284
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 285
    const-wide/16 v2, 0x0

    invoke-static {v1, p1, v2, v3}, Lcom/android/server/storage/CacheQuotaStrategy;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;J)V

    .line 286
    iget-object v2, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mPreviousValuesFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v2, v0}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    .end local v1    # "out":Lorg/xmlpull/v1/XmlSerializer;
    goto :goto_0

    .line 287
    :catch_0
    move-exception v1

    .line 288
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "CacheQuotaStrategy"

    const-string v3, "An error occurred while writing the cache quota file."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 289
    iget-object v2, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mPreviousValuesFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v2, v0}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 291
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "data"    # Landroid/os/Bundle;

    .line 209
    nop

    .line 210
    const-string/jumbo v0, "requests"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 212
    .local v0, "processedRequests":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/CacheQuotaHint;>;"
    invoke-direct {p0, v0}, Lcom/android/server/storage/CacheQuotaStrategy;->pushProcessedQuotas(Ljava/util/List;)V

    .line 213
    invoke-direct {p0, v0}, Lcom/android/server/storage/CacheQuotaStrategy;->writeXmlToFile(Ljava/util/List;)V

    .line 214
    return-void
.end method

.method public recalculateQuotas()V
    .locals 6

    .line 110
    invoke-direct {p0}, Lcom/android/server/storage/CacheQuotaStrategy;->createServiceConnection()V

    .line 112
    invoke-direct {p0}, Lcom/android/server/storage/CacheQuotaStrategy;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 113
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 114
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 115
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 116
    iget-object v2, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 119
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public setupQuotasFromFile()J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 298
    const/4 v0, 0x0

    .line 299
    .local v0, "cachedValues":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/util/List<Landroid/app/usage/CacheQuotaHint;>;>;"
    const-wide/16 v1, -0x1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mPreviousValuesFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v3}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 301
    .local v3, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v3}, Lcom/android/server/storage/CacheQuotaStrategy;->readFromXml(Ljava/io/InputStream;)Landroid/util/Pair;

    move-result-object v4
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v4

    .line 304
    nop

    .line 305
    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 308
    .end local v3    # "stream":Ljava/io/FileInputStream;
    :cond_0
    nop

    .line 310
    if-nez v0, :cond_1

    .line 311
    const-string v3, "CacheQuotaStrategy"

    const-string v4, "An error occurred while parsing the cache quota file."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    return-wide v1

    .line 314
    :cond_1
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/android/server/storage/CacheQuotaStrategy;->pushProcessedQuotas(Ljava/util/List;)V

    .line 316
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    return-wide v1

    .line 299
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v4

    goto :goto_0

    .line 302
    :catch_0
    move-exception v4

    .line 303
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_3
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "cachedValues":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/util/List<Landroid/app/usage/CacheQuotaHint;>;>;"
    .end local v3    # "stream":Ljava/io/FileInputStream;
    .end local p0    # "this":Lcom/android/server/storage/CacheQuotaStrategy;
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 299
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_0
    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 305
    .restart local v0    # "cachedValues":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/util/List<Landroid/app/usage/CacheQuotaHint;>;>;"
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/server/storage/CacheQuotaStrategy;
    :catchall_1
    move-exception v5

    if-eqz v3, :cond_2

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v6

    :try_start_6
    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "cachedValues":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/util/List<Landroid/app/usage/CacheQuotaHint;>;>;"
    .end local p0    # "this":Lcom/android/server/storage/CacheQuotaStrategy;
    :cond_2
    :goto_1
    throw v5
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1

    .end local v3    # "stream":Ljava/io/FileInputStream;
    .restart local v0    # "cachedValues":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/util/List<Landroid/app/usage/CacheQuotaHint;>;>;"
    .restart local p0    # "this":Lcom/android/server/storage/CacheQuotaStrategy;
    :catch_1
    move-exception v3

    .line 307
    .local v3, "e":Ljava/io/FileNotFoundException;
    return-wide v1
.end method
