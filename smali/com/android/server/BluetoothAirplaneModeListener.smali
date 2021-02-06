.class Lcom/android/server/BluetoothAirplaneModeListener;
.super Ljava/lang/Object;
.source "BluetoothAirplaneModeListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;,
        Lcom/android/server/BluetoothAirplaneModeListener$BluetoothAirplaneModeHandler;
    }
.end annotation


# static fields
.field static final MAX_TOAST_COUNT:I = 0xa

.field private static final MSG_AIRPLANE_MODE_CHANGED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BluetoothAirplaneModeListener"

.field static final TOAST_COUNT:Ljava/lang/String; = "bluetooth_airplane_toast_count"


# instance fields
.field private mAirplaneHelper:Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;

.field private final mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private final mBluetoothManager:Lcom/android/server/BluetoothManagerService;

.field private final mHandler:Lcom/android/server/BluetoothAirplaneModeListener$BluetoothAirplaneModeHandler;

.field mToastCount:I


# direct methods
.method constructor <init>(Lcom/android/server/BluetoothManagerService;Landroid/os/Looper;Landroid/content/Context;)V
    .locals 4
    .param p1, "service"    # Lcom/android/server/BluetoothManagerService;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "context"    # Landroid/content/Context;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/BluetoothAirplaneModeListener;->mToastCount:I

    .line 69
    new-instance v0, Lcom/android/server/BluetoothAirplaneModeListener$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/BluetoothAirplaneModeListener$1;-><init>(Lcom/android/server/BluetoothAirplaneModeListener;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/BluetoothAirplaneModeListener;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 61
    iput-object p1, p0, Lcom/android/server/BluetoothAirplaneModeListener;->mBluetoothManager:Lcom/android/server/BluetoothManagerService;

    .line 63
    new-instance v0, Lcom/android/server/BluetoothAirplaneModeListener$BluetoothAirplaneModeHandler;

    invoke-direct {v0, p0, p2}, Lcom/android/server/BluetoothAirplaneModeListener$BluetoothAirplaneModeHandler;-><init>(Lcom/android/server/BluetoothAirplaneModeListener;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/BluetoothAirplaneModeListener;->mHandler:Lcom/android/server/BluetoothAirplaneModeListener$BluetoothAirplaneModeHandler;

    .line 64
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 65
    const-string v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BluetoothAirplaneModeListener;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 64
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/BluetoothAirplaneModeListener;)Lcom/android/server/BluetoothAirplaneModeListener$BluetoothAirplaneModeHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothAirplaneModeListener;

    .line 46
    iget-object v0, p0, Lcom/android/server/BluetoothAirplaneModeListener;->mHandler:Lcom/android/server/BluetoothAirplaneModeListener$BluetoothAirplaneModeHandler;

    return-object v0
.end method


# virtual methods
.method handleAirplaneModeChange()V
    .locals 3

    .line 118
    invoke-virtual {p0}, Lcom/android/server/BluetoothAirplaneModeListener;->shouldSkipAirplaneModeChange()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    const-string v0, "BluetoothAirplaneModeListener"

    const-string v1, "Ignore airplane mode change"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcom/android/server/BluetoothAirplaneModeListener;->mAirplaneHelper:Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;

    const/4 v1, 0x2

    const-string v2, "bluetooth_on"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;->setSettingsInt(Ljava/lang/String;I)V

    .line 125
    invoke-virtual {p0}, Lcom/android/server/BluetoothAirplaneModeListener;->shouldPopToast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/server/BluetoothAirplaneModeListener;->mAirplaneHelper:Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;

    invoke-virtual {v0}, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;->showToastMessage()V

    .line 128
    :cond_0
    return-void

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/android/server/BluetoothAirplaneModeListener;->mAirplaneHelper:Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;

    iget-object v1, p0, Lcom/android/server/BluetoothAirplaneModeListener;->mBluetoothManager:Lcom/android/server/BluetoothManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;->onAirplaneModeChanged(Lcom/android/server/BluetoothManagerService;)V

    .line 131
    return-void
.end method

.method shouldPopToast()Z
    .locals 4

    .line 108
    iget v0, p0, Lcom/android/server/BluetoothAirplaneModeListener;->mToastCount:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 109
    const/4 v0, 0x0

    return v0

    .line 111
    :cond_0
    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/BluetoothAirplaneModeListener;->mToastCount:I

    .line 112
    iget-object v2, p0, Lcom/android/server/BluetoothAirplaneModeListener;->mAirplaneHelper:Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;

    const-string v3, "bluetooth_airplane_toast_count"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;->setSettingsInt(Ljava/lang/String;I)V

    .line 113
    return v1
.end method

.method shouldSkipAirplaneModeChange()Z
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/android/server/BluetoothAirplaneModeListener;->mAirplaneHelper:Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 136
    return v1

    .line 138
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;->isBluetoothOn()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/BluetoothAirplaneModeListener;->mAirplaneHelper:Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;

    invoke-virtual {v0}, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;->isAirplaneModeOn()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/BluetoothAirplaneModeListener;->mAirplaneHelper:Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;

    .line 139
    invoke-virtual {v0}, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;->isA2dpOrHearingAidConnected()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 142
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 140
    :cond_2
    :goto_0
    return v1
.end method

.method start(Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;)V
    .locals 2
    .param p1, "helper"    # Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;

    .line 101
    const-string v0, "BluetoothAirplaneModeListener"

    const-string/jumbo v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iput-object p1, p0, Lcom/android/server/BluetoothAirplaneModeListener;->mAirplaneHelper:Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;

    .line 103
    const-string v0, "bluetooth_airplane_toast_count"

    invoke-virtual {p1, v0}, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;->getSettingsInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/BluetoothAirplaneModeListener;->mToastCount:I

    .line 104
    return-void
.end method
