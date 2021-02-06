.class final Lcom/android/server/tv/TvRemoteProviderWatcher;
.super Ljava/lang/Object;
.source "TvRemoteProviderWatcher.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "TvRemoteProviderWatcher"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mProviderProxies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/tv/TvRemoteProviderProxy;",
            ">;"
        }
    .end annotation
.end field

.field private mRunning:Z

.field private final mScanPackagesReceiver:Landroid/content/BroadcastReceiver;

.field private final mScanPackagesRunnable:Ljava/lang/Runnable;

.field private final mUnbundledServicePackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    const-string v0, "TvRemoteProviderWatcher"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/tv/TvRemoteProviderWatcher;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lock"    # Ljava/lang/Object;

    .line 83
    new-instance v0, Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Z)V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/tv/TvRemoteProviderWatcher;-><init>(Landroid/content/Context;Ljava/lang/Object;Landroid/os/Handler;)V

    .line 84
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/Object;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lock"    # Ljava/lang/Object;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProviderProxies:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mUnbundledServicePackages:Ljava/util/Set;

    .line 217
    new-instance v0, Lcom/android/server/tv/TvRemoteProviderWatcher$1;

    invoke-direct {v0, p0}, Lcom/android/server/tv/TvRemoteProviderWatcher$1;-><init>(Lcom/android/server/tv/TvRemoteProviderWatcher;)V

    iput-object v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mScanPackagesReceiver:Landroid/content/BroadcastReceiver;

    .line 227
    new-instance v0, Lcom/android/server/tv/TvRemoteProviderWatcher$2;

    invoke-direct {v0, p0}, Lcom/android/server/tv/TvRemoteProviderWatcher$2;-><init>(Lcom/android/server/tv/TvRemoteProviderWatcher;)V

    iput-object v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mScanPackagesRunnable:Ljava/lang/Runnable;

    .line 63
    iput-object p1, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mContext:Landroid/content/Context;

    .line 64
    iput-object p3, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mHandler:Landroid/os/Handler;

    .line 65
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mUserId:I

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 67
    iput-object p2, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mLock:Ljava/lang/Object;

    .line 70
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 71
    .local v0, "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    const v1, 0x104025f

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 74
    new-instance v1, Lcom/android/server/tv/-$$Lambda$TvRemoteProviderWatcher$dDERmcw8SCyoq7X1l50jggUVY28;

    invoke-direct {v1, p0}, Lcom/android/server/tv/-$$Lambda$TvRemoteProviderWatcher$dDERmcw8SCyoq7X1l50jggUVY28;-><init>(Lcom/android/server/tv/TvRemoteProviderWatcher;)V

    invoke-virtual {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;->forEach(Ljava/util/function/Consumer;)V

    .line 80
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 47
    sget-boolean v0, Lcom/android/server/tv/TvRemoteProviderWatcher;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/tv/TvRemoteProviderWatcher;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvRemoteProviderWatcher;

    .line 47
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mScanPackagesRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/tv/TvRemoteProviderWatcher;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvRemoteProviderWatcher;

    .line 47
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/tv/TvRemoteProviderWatcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/tv/TvRemoteProviderWatcher;

    .line 47
    invoke-direct {p0}, Lcom/android/server/tv/TvRemoteProviderWatcher;->scanPackages()V

    return-void
.end method

.method private findProvider(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 207
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProviderProxies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 208
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 209
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProviderProxies:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tv/TvRemoteProviderProxy;

    .line 210
    .local v2, "provider":Lcom/android/server/tv/TvRemoteProviderProxy;
    invoke-virtual {v2, p1, p2}, Lcom/android/server/tv/TvRemoteProviderProxy;->hasComponentName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 211
    return v1

    .line 208
    .end local v2    # "provider":Lcom/android/server/tv/TvRemoteProviderProxy;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 214
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private hasNecessaryPermissions(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 199
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.permission.TV_VIRTUAL_REMOTE_CONTROLLER"

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 201
    const/4 v0, 0x1

    return v0

    .line 203
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private scanPackages()V
    .locals 14

    .line 122
    iget-boolean v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mRunning:Z

    if-nez v0, :cond_0

    .line 123
    return-void

    .line 126
    :cond_0
    sget-boolean v0, Lcom/android/server/tv/TvRemoteProviderWatcher;->DEBUG:Z

    const-string v1, "TvRemoteProviderWatcher"

    if-eqz v0, :cond_1

    const-string v0, "scanPackages()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_1
    const/4 v0, 0x0

    .line 130
    .local v0, "targetIndex":I
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.media.tv.remoteprovider.TvRemoteProvider"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 131
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mUserId:I

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 133
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 134
    .local v5, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-eqz v5, :cond_3

    invoke-virtual {p0, v5}, Lcom/android/server/tv/TvRemoteProviderWatcher;->verifyServiceTrusted(Landroid/content/pm/ServiceInfo;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 135
    iget-object v6, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v7, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v6, v7}, Lcom/android/server/tv/TvRemoteProviderWatcher;->findProvider(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 136
    .local v6, "sourceIndex":I
    if-gez v6, :cond_2

    .line 137
    new-instance v13, Lcom/android/server/tv/TvRemoteProviderProxy;

    iget-object v8, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mLock:Ljava/lang/Object;

    new-instance v10, Landroid/content/ComponentName;

    iget-object v7, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v11, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v10, v7, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget v11, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mUserId:I

    iget-object v7, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lcom/android/server/tv/TvRemoteProviderProxy;-><init>(Landroid/content/Context;Ljava/lang/Object;Landroid/content/ComponentName;II)V

    .line 141
    .local v7, "providerProxy":Lcom/android/server/tv/TvRemoteProviderProxy;
    invoke-virtual {v7}, Lcom/android/server/tv/TvRemoteProviderProxy;->start()V

    .line 142
    iget-object v8, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProviderProxies:Ljava/util/ArrayList;

    add-int/lit8 v9, v0, 0x1

    .end local v0    # "targetIndex":I
    .local v9, "targetIndex":I
    invoke-virtual {v8, v0, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 143
    .end local v7    # "providerProxy":Lcom/android/server/tv/TvRemoteProviderProxy;
    move v0, v9

    goto :goto_1

    .end local v9    # "targetIndex":I
    .restart local v0    # "targetIndex":I
    :cond_2
    if-lt v6, v0, :cond_3

    .line 144
    iget-object v7, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProviderProxies:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/tv/TvRemoteProviderProxy;

    .line 145
    .local v7, "provider":Lcom/android/server/tv/TvRemoteProviderProxy;
    invoke-virtual {v7}, Lcom/android/server/tv/TvRemoteProviderProxy;->start()V

    .line 146
    invoke-virtual {v7}, Lcom/android/server/tv/TvRemoteProviderProxy;->rebindIfDisconnected()V

    .line 147
    iget-object v8, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProviderProxies:Ljava/util/ArrayList;

    add-int/lit8 v9, v0, 0x1

    .end local v0    # "targetIndex":I
    .restart local v9    # "targetIndex":I
    invoke-static {v8, v6, v0}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    move v0, v9

    .line 150
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v5    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v6    # "sourceIndex":I
    .end local v7    # "provider":Lcom/android/server/tv/TvRemoteProviderProxy;
    .end local v9    # "targetIndex":I
    .restart local v0    # "targetIndex":I
    :cond_3
    :goto_1
    goto :goto_0

    .line 151
    :cond_4
    sget-boolean v3, Lcom/android/server/tv/TvRemoteProviderWatcher;->DEBUG:Z

    if-eqz v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scanPackages() targetIndex "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_5
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProviderProxies:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 154
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProviderProxies:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_2
    if-lt v1, v0, :cond_6

    .line 155
    iget-object v3, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProviderProxies:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/TvRemoteProviderProxy;

    .line 156
    .local v3, "providerProxy":Lcom/android/server/tv/TvRemoteProviderProxy;
    iget-object v4, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProviderProxies:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 157
    invoke-virtual {v3}, Lcom/android/server/tv/TvRemoteProviderProxy;->stop()V

    .line 154
    .end local v3    # "providerProxy":Lcom/android/server/tv/TvRemoteProviderProxy;
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 160
    .end local v1    # "i":I
    :cond_6
    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$TvRemoteProviderWatcher(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 76
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mUnbundledServicePackages:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_0
    return-void
.end method

.method public start()V
    .locals 7

    .line 87
    sget-boolean v0, Lcom/android/server/tv/TvRemoteProviderWatcher;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "TvRemoteProviderWatcher"

    const-string v1, "start()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mRunning:Z

    if-nez v0, :cond_1

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mRunning:Z

    .line 91
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 92
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mScanPackagesReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/os/UserHandle;

    iget v4, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mUserId:I

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mHandler:Landroid/os/Handler;

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 103
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mScanPackagesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 105
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    return-void
.end method

.method public stop()V
    .locals 2

    .line 108
    iget-boolean v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mRunning:Z

    if-eqz v0, :cond_0

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mRunning:Z

    .line 111
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mScanPackagesReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 112
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mScanPackagesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 115
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProviderProxies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 116
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProviderProxies:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-virtual {v1}, Lcom/android/server/tv/TvRemoteProviderProxy;->stop()V

    .line 115
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 119
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method verifyServiceTrusted(Landroid/content/pm/ServiceInfo;)Z
    .locals 5
    .param p1, "serviceInfo"    # Landroid/content/pm/ServiceInfo;

    .line 164
    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v1, "/"

    const/4 v2, 0x0

    const-string v3, "TvRemoteProviderWatcher"

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v4, "android.permission.BIND_TV_REMOTE_SERVICE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mUnbundledServicePackages:Ljava/util/Set;

    iget-object v4, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring atv remote provider service because the package has not been set and/or whitelisted: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    return v2

    .line 184
    :cond_1
    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/tv/TvRemoteProviderWatcher;->hasNecessaryPermissions(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring atv remote provider service because its package does not have TV_VIRTUAL_REMOTE_CONTROLLER permission: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    return v2

    .line 193
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 170
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring atv remote provider service because it did not require the BIND_TV_REMOTE_SERVICE permission in its manifest: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return v2
.end method
