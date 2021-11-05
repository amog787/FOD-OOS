.class public Lcom/android/server/CachedDeviceStateService;
.super Lcom/android/server/SystemService;
.source "CachedDeviceStateService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CachedDeviceStateService"


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mDeviceState:Lcom/android/internal/os/CachedDeviceState;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 61
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v0, Lcom/android/internal/os/CachedDeviceState;

    invoke-direct {v0}, Lcom/android/internal/os/CachedDeviceState;-><init>()V

    iput-object v0, p0, Lcom/android/server/CachedDeviceStateService;->mDeviceState:Lcom/android/internal/os/CachedDeviceState;

    .line 40
    new-instance v0, Lcom/android/server/CachedDeviceStateService$1;

    invoke-direct {v0, p0}, Lcom/android/server/CachedDeviceStateService$1;-><init>(Lcom/android/server/CachedDeviceStateService;)V

    iput-object v0, p0, Lcom/android/server/CachedDeviceStateService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/CachedDeviceStateService;)Lcom/android/internal/os/CachedDeviceState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/CachedDeviceStateService;

    .line 37
    iget-object v0, p0, Lcom/android/server/CachedDeviceStateService;->mDeviceState:Lcom/android/internal/os/CachedDeviceState;

    return-object v0
.end method

.method private queryIsCharging()Z
    .locals 4

    .line 84
    const-class v0, Landroid/os/BatteryManagerInternal;

    .line 85
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManagerInternal;

    .line 86
    .local v0, "batteryManager":Landroid/os/BatteryManagerInternal;
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 87
    const-string v2, "CachedDeviceStateService"

    const-string v3, "BatteryManager null while starting CachedDeviceStateService"

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return v1

    .line 91
    :cond_0
    invoke-virtual {v0}, Landroid/os/BatteryManagerInternal;->getPlugType()I

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private queryScreenInteractive(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 96
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 97
    .local v0, "powerManager":Landroid/os/PowerManager;
    if-nez v0, :cond_0

    .line 98
    const-string v1, "CachedDeviceStateService"

    const-string v2, "PowerManager null while starting CachedDeviceStateService"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/4 v1, 0x0

    return v1

    .line 101
    :cond_0
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    return v1
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 3
    .param p1, "phase"    # I

    .line 71
    const/16 v0, 0x1f4

    if-ne v0, p1, :cond_0

    .line 72
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 73
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 77
    invoke-virtual {p0}, Lcom/android/server/CachedDeviceStateService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/CachedDeviceStateService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 78
    iget-object v1, p0, Lcom/android/server/CachedDeviceStateService;->mDeviceState:Lcom/android/internal/os/CachedDeviceState;

    invoke-direct {p0}, Lcom/android/server/CachedDeviceStateService;->queryIsCharging()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/CachedDeviceState;->setCharging(Z)V

    .line 79
    iget-object v1, p0, Lcom/android/server/CachedDeviceStateService;->mDeviceState:Lcom/android/internal/os/CachedDeviceState;

    invoke-virtual {p0}, Lcom/android/server/CachedDeviceStateService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/CachedDeviceStateService;->queryScreenInteractive(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/CachedDeviceState;->setScreenInteractive(Z)V

    .line 81
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 66
    const-class v0, Lcom/android/internal/os/CachedDeviceState$Readonly;

    iget-object v1, p0, Lcom/android/server/CachedDeviceStateService;->mDeviceState:Lcom/android/internal/os/CachedDeviceState;

    invoke-virtual {v1}, Lcom/android/internal/os/CachedDeviceState;->getReadonlyClient()Lcom/android/internal/os/CachedDeviceState$Readonly;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/CachedDeviceStateService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 67
    return-void
.end method
