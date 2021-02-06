.class public Lcom/android/server/security/KeyChainSystemService;
.super Lcom/android/server/SystemService;
.source "KeyChainSystemService.java"


# static fields
.field private static final KEYCHAIN_IDLE_WHITELIST_DURATION_MS:I = 0x7530

.field private static final TAG:Ljava/lang/String; = "KeyChainSystemService"


# instance fields
.field private final mPackageReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 57
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 72
    new-instance v0, Lcom/android/server/security/KeyChainSystemService$1;

    invoke-direct {v0, p0}, Lcom/android/server/security/KeyChainSystemService$1;-><init>(Lcom/android/server/security/KeyChainSystemService;)V

    iput-object v0, p0, Lcom/android/server/security/KeyChainSystemService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/security/KeyChainSystemService;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/security/KeyChainSystemService;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # Landroid/os/UserHandle;

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/server/security/KeyChainSystemService;->startServiceInBackgroundAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private startServiceInBackgroundAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 97
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    .line 98
    return-void

    .line 101
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "packageName":Ljava/lang/String;
    const-class v1, Lcom/android/server/DeviceIdleInternal;

    .line 103
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/server/DeviceIdleInternal;

    .line 104
    .local v9, "idleController":Lcom/android/server/DeviceIdleInternal;
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const-wide/16 v4, 0x7530

    .line 105
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    const/4 v7, 0x0

    .line 104
    const-string v8, "keychain"

    move-object v1, v9

    move-object v3, v0

    invoke-interface/range {v1 .. v8}, Lcom/android/server/DeviceIdleInternal;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZLjava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/android/server/security/KeyChainSystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 108
    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 8

    .line 62
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 63
    .local v0, "packageFilter":Landroid/content/IntentFilter;
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 65
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/security/KeyChainSystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/security/KeyChainSystemService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    goto :goto_0

    .line 67
    :catch_0
    move-exception v1

    .line 68
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "KeyChainSystemService"

    const-string v3, "Unable to register for package removed broadcast"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method
