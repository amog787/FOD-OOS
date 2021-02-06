.class Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;
.super Ljava/lang/Object;
.source "BinderCallsStatsService.java"

# interfaces
.implements Lcom/android/internal/os/BinderInternal$WorkSourceProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BinderCallsStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AuthorizedWorkSourceProvider"
.end annotation


# instance fields
.field private mAppIdWhitelist:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;->mAppIdWhitelist:Landroid/util/ArraySet;

    .line 65
    return-void
.end method

.method private createAppidWhitelist(Landroid/content/Context;)Landroid/util/ArraySet;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 96
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 99
    .local v0, "whitelist":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 102
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string v2, "android.permission.UPDATE_DEVICE_STATS"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, "permissions":[Ljava/lang/String;
    const/high16 v3, 0xc0000

    .line 104
    .local v3, "queryFlags":I
    nop

    .line 105
    const/high16 v4, 0xc0000

    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;I)Ljava/util/List;

    move-result-object v5

    .line 106
    .local v5, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 107
    .local v6, "packagesSize":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_0

    .line 108
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageInfo;

    .line 110
    .local v8, "pkgInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v9, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v9, v4}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v9

    .line 111
    .local v9, "uid":I
    invoke-static {v9}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v10

    .line 112
    .local v10, "appId":I
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    nop

    .end local v9    # "uid":I
    .end local v10    # "appId":I
    goto :goto_1

    .line 113
    :catch_0
    move-exception v9

    .line 114
    .local v9, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot find uid for package name "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "BinderCallsStatsService"

    invoke-static {v11, v10, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    .end local v8    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v9    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 117
    .end local v7    # "i":I
    :cond_0
    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Lcom/android/internal/os/AppIdToPackageMap;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "packageMap"    # Lcom/android/internal/os/AppIdToPackageMap;

    .line 83
    const-string v0, "AppIds of apps that can set the work source:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;->mAppIdWhitelist:Landroid/util/ArraySet;

    .line 85
    .local v0, "whitelist":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 86
    .local v2, "appId":Ljava/lang/Integer;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/android/internal/os/AppIdToPackageMap;->mapAppId(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    .end local v2    # "appId":Ljava/lang/Integer;
    goto :goto_0

    .line 88
    :cond_0
    return-void
.end method

.method protected getCallingUid()I
    .locals 1

    .line 91
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method public resolveWorkSourceUid(I)I
    .locals 5
    .param p1, "untrustedWorkSourceUid"    # I

    .line 68
    invoke-virtual {p0}, Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;->getCallingUid()I

    move-result v0

    .line 69
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 70
    .local v1, "appId":I
    iget-object v2, p0, Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;->mAppIdWhitelist:Landroid/util/ArraySet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 71
    move v2, p1

    .line 72
    .local v2, "workSource":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 73
    .local v3, "isWorkSourceSet":Z
    :goto_0
    if-eqz v3, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    return v4

    .line 75
    .end local v2    # "workSource":I
    .end local v3    # "isWorkSourceSet":Z
    :cond_2
    return v0
.end method

.method public systemReady(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 79
    invoke-direct {p0, p1}, Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;->createAppidWhitelist(Landroid/content/Context;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;->mAppIdWhitelist:Landroid/util/ArraySet;

    .line 80
    return-void
.end method
