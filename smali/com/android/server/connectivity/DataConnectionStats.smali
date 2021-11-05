.class public Lcom/android/server/connectivity/DataConnectionStats;
.super Landroid/content/BroadcastReceiver;
.source "DataConnectionStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/DataConnectionStats$PhoneStateListenerImpl;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "DataConnectionStats"


# instance fields
.field private m5GStatusListener:Lcom/android/server/connectivity/FiveGStatusListener;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mCampOn5GService:Z

.field private final mContext:Landroid/content/Context;

.field private mDataState:I

.field private final mListenerHandler:Landroid/os/Handler;

.field private mNrState:I

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mServiceState:Landroid/telephony/ServiceState;

.field private mShow5GService:Z

.field private mSignalStrength:Landroid/telephony/SignalStrength;

.field private mSimState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listenerHandler"    # Landroid/os/Handler;

    .line 63
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 50
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/connectivity/DataConnectionStats;->mSimState:I

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/connectivity/DataConnectionStats;->mDataState:I

    .line 54
    iput v0, p0, Lcom/android/server/connectivity/DataConnectionStats;->mNrState:I

    .line 58
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/connectivity/DataConnectionStats;->m5GStatusListener:Lcom/android/server/connectivity/FiveGStatusListener;

    .line 59
    iput-boolean v0, p0, Lcom/android/server/connectivity/DataConnectionStats;->mShow5GService:Z

    .line 60
    iput-boolean v0, p0, Lcom/android/server/connectivity/DataConnectionStats;->mCampOn5GService:Z

    .line 64
    iput-object p1, p0, Lcom/android/server/connectivity/DataConnectionStats;->mContext:Landroid/content/Context;

    .line 65
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 66
    iput-object p2, p0, Lcom/android/server/connectivity/DataConnectionStats;->mListenerHandler:Landroid/os/Handler;

    .line 67
    new-instance v0, Lcom/android/server/connectivity/DataConnectionStats$PhoneStateListenerImpl;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/connectivity/DataConnectionStats$PhoneStateListenerImpl;-><init>(Lcom/android/server/connectivity/DataConnectionStats;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 68
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/connectivity/DataConnectionStats;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/DataConnectionStats;
    .param p1, "x1"    # Z

    .line 41
    iput-boolean p1, p0, Lcom/android/server/connectivity/DataConnectionStats;->mShow5GService:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/server/connectivity/DataConnectionStats;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/DataConnectionStats;
    .param p1, "x1"    # Z

    .line 41
    iput-boolean p1, p0, Lcom/android/server/connectivity/DataConnectionStats;->mCampOn5GService:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/connectivity/DataConnectionStats;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/DataConnectionStats;

    .line 41
    invoke-direct {p0}, Lcom/android/server/connectivity/DataConnectionStats;->notePhoneDataConnectionState()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/server/connectivity/DataConnectionStats;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/DataConnectionStats;
    .param p1, "x1"    # Landroid/telephony/SignalStrength;

    .line 41
    iput-object p1, p0, Lcom/android/server/connectivity/DataConnectionStats;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object p1
.end method

.method static synthetic access$402(Lcom/android/server/connectivity/DataConnectionStats;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/DataConnectionStats;
    .param p1, "x1"    # Landroid/telephony/ServiceState;

    .line 41
    iput-object p1, p0, Lcom/android/server/connectivity/DataConnectionStats;->mServiceState:Landroid/telephony/ServiceState;

    return-object p1
.end method

.method static synthetic access$502(Lcom/android/server/connectivity/DataConnectionStats;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/DataConnectionStats;
    .param p1, "x1"    # I

    .line 41
    iput p1, p0, Lcom/android/server/connectivity/DataConnectionStats;->mNrState:I

    return p1
.end method

.method static synthetic access$602(Lcom/android/server/connectivity/DataConnectionStats;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/DataConnectionStats;
    .param p1, "x1"    # I

    .line 41
    iput p1, p0, Lcom/android/server/connectivity/DataConnectionStats;->mDataState:I

    return p1
.end method

.method private hasService()Z
    .locals 3

    .line 180
    iget-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats;->mServiceState:Landroid/telephony/ServiceState;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats;->mServiceState:Landroid/telephony/ServiceState;

    .line 182
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 180
    :goto_0
    return v1
.end method

.method private isCdma()Z
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private notePhoneDataConnectionState()V
    .locals 7

    .line 120
    iget-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats;->mServiceState:Landroid/telephony/ServiceState;

    if-nez v0, :cond_0

    .line 121
    return-void

    .line 123
    :cond_0
    iget v0, p0, Lcom/android/server/connectivity/DataConnectionStats;->mSimState:I

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v3

    .line 125
    .local v0, "simReadyOrUnknown":Z
    :goto_1
    const/4 v1, 0x2

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/server/connectivity/DataConnectionStats;->isCdma()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 126
    :cond_3
    invoke-direct {p0}, Lcom/android/server/connectivity/DataConnectionStats;->hasService()Z

    move-result v4

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/android/server/connectivity/DataConnectionStats;->mDataState:I

    if-ne v4, v1, :cond_4

    move v4, v3

    goto :goto_2

    :cond_4
    move v4, v2

    .line 128
    .local v4, "visible":Z
    :goto_2
    iget-object v5, p0, Lcom/android/server/connectivity/DataConnectionStats;->mServiceState:Landroid/telephony/ServiceState;

    .line 129
    invoke-virtual {v5, v1, v3}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v1

    .line 130
    .local v1, "regInfo":Landroid/telephony/NetworkRegistrationInfo;
    if-nez v1, :cond_5

    goto :goto_3

    .line 131
    :cond_5
    invoke-virtual {v1}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v2

    :goto_3
    nop

    .line 134
    .local v2, "networkType":I
    iget-boolean v3, p0, Lcom/android/server/connectivity/DataConnectionStats;->mCampOn5GService:Z

    const-string v5, "DataConnectionStats"

    if-eqz v3, :cond_6

    .line 135
    const/16 v2, 0x14

    .line 136
    const-string/jumbo v3, "notePhoneDataConnectionState: Recorded as NR type"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_6
    iget v3, p0, Lcom/android/server/connectivity/DataConnectionStats;->mNrState:I

    const/4 v6, 0x3

    if-ne v3, v6, :cond_7

    .line 142
    const/16 v2, 0x14

    .line 147
    :cond_7
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/DataConnectionStats;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v6, p0, Lcom/android/server/connectivity/DataConnectionStats;->mServiceState:Landroid/telephony/ServiceState;

    .line 148
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getState()I

    move-result v6

    .line 147
    invoke-interface {v3, v2, v4, v6}, Lcom/android/internal/app/IBatteryStats;->notePhoneDataConnectionState(IZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    goto :goto_4

    .line 149
    :catch_0
    move-exception v3

    .line 150
    .local v3, "e":Landroid/os/RemoteException;
    const-string v6, "Error noting data connection state"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_4
    return-void
.end method

.method private final updateSimState(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 155
    const-string/jumbo v0, "ss"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "stateExtra":Ljava/lang/String;
    const-string v1, "ABSENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/connectivity/DataConnectionStats;->mSimState:I

    goto :goto_1

    .line 158
    :cond_0
    const-string v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 159
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/server/connectivity/DataConnectionStats;->mSimState:I

    goto :goto_1

    .line 160
    :cond_1
    const-string v1, "LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 161
    nop

    .line 162
    const-string/jumbo v1, "reason"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "lockedReason":Ljava/lang/String;
    const-string v2, "PIN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 164
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/server/connectivity/DataConnectionStats;->mSimState:I

    goto :goto_0

    .line 165
    :cond_2
    const-string v2, "PUK"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 166
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/server/connectivity/DataConnectionStats;->mSimState:I

    goto :goto_0

    .line 168
    :cond_3
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/server/connectivity/DataConnectionStats;->mSimState:I

    .line 170
    .end local v1    # "lockedReason":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 171
    :cond_4
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/connectivity/DataConnectionStats;->mSimState:I

    .line 173
    :goto_1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 109
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    invoke-direct {p0, p2}, Lcom/android/server/connectivity/DataConnectionStats;->updateSimState(Landroid/content/Intent;)V

    .line 112
    invoke-direct {p0}, Lcom/android/server/connectivity/DataConnectionStats;->notePhoneDataConnectionState()V

    goto :goto_0

    .line 113
    :cond_0
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 114
    const-string v1, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 115
    :cond_1
    invoke-direct {p0}, Lcom/android/server/connectivity/DataConnectionStats;->notePhoneDataConnectionState()V

    .line 117
    :cond_2
    :goto_0
    return-void
.end method

.method public startMonitoring()V
    .locals 5

    .line 71
    iget-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats;->mContext:Landroid/content/Context;

    .line 72
    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 73
    .local v0, "phone":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/android/server/connectivity/DataConnectionStats;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const v2, 0x4001c1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 83
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 84
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 85
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    const-string v2, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    iget-object v2, p0, Lcom/android/server/connectivity/DataConnectionStats;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/connectivity/DataConnectionStats;->mListenerHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v2, p0, v1, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 90
    new-instance v2, Lcom/android/server/connectivity/DataConnectionStats$1;

    iget-object v3, p0, Lcom/android/server/connectivity/DataConnectionStats;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/android/server/connectivity/DataConnectionStats$1;-><init>(Lcom/android/server/connectivity/DataConnectionStats;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/connectivity/DataConnectionStats;->m5GStatusListener:Lcom/android/server/connectivity/FiveGStatusListener;

    .line 103
    invoke-virtual {v2}, Lcom/android/server/connectivity/FiveGStatusListener;->startListen()V

    .line 105
    return-void
.end method
