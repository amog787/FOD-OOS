.class public Lcom/android/server/connectivity/DataConnectionStats;
.super Landroid/content/BroadcastReceiver;
.source "DataConnectionStats.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "DataConnectionStats"


# instance fields
.field private m5GStatusListener:Lcom/android/server/connectivity/FiveGStatusListener;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mCampOn5GService:Z

.field private final mContext:Landroid/content/Context;

.field private mDataState:I

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mServiceState:Landroid/telephony/ServiceState;

.field private mShow5GService:Z

.field private mSignalStrength:Landroid/telephony/SignalStrength;

.field private mSimState:Lcom/android/internal/telephony/IccCardConstants$State;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 55
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 43
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/connectivity/DataConnectionStats;->mDataState:I

    .line 50
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/connectivity/DataConnectionStats;->m5GStatusListener:Lcom/android/server/connectivity/FiveGStatusListener;

    .line 51
    iput-boolean v0, p0, Lcom/android/server/connectivity/DataConnectionStats;->mShow5GService:Z

    .line 52
    iput-boolean v0, p0, Lcom/android/server/connectivity/DataConnectionStats;->mCampOn5GService:Z

    .line 156
    new-instance v0, Lcom/android/server/connectivity/DataConnectionStats$2;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/DataConnectionStats$2;-><init>(Lcom/android/server/connectivity/DataConnectionStats;)V

    iput-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 56
    iput-object p1, p0, Lcom/android/server/connectivity/DataConnectionStats;->mContext:Landroid/content/Context;

    .line 57
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 58
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/connectivity/DataConnectionStats;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/DataConnectionStats;
    .param p1, "x1"    # Z

    .line 36
    iput-boolean p1, p0, Lcom/android/server/connectivity/DataConnectionStats;->mShow5GService:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/server/connectivity/DataConnectionStats;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/DataConnectionStats;
    .param p1, "x1"    # Z

    .line 36
    iput-boolean p1, p0, Lcom/android/server/connectivity/DataConnectionStats;->mCampOn5GService:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/connectivity/DataConnectionStats;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/DataConnectionStats;

    .line 36
    invoke-direct {p0}, Lcom/android/server/connectivity/DataConnectionStats;->notePhoneDataConnectionState()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/server/connectivity/DataConnectionStats;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/DataConnectionStats;
    .param p1, "x1"    # Landroid/telephony/SignalStrength;

    .line 36
    iput-object p1, p0, Lcom/android/server/connectivity/DataConnectionStats;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object p1
.end method

.method static synthetic access$402(Lcom/android/server/connectivity/DataConnectionStats;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/DataConnectionStats;
    .param p1, "x1"    # Landroid/telephony/ServiceState;

    .line 36
    iput-object p1, p0, Lcom/android/server/connectivity/DataConnectionStats;->mServiceState:Landroid/telephony/ServiceState;

    return-object p1
.end method

.method static synthetic access$502(Lcom/android/server/connectivity/DataConnectionStats;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/DataConnectionStats;
    .param p1, "x1"    # I

    .line 36
    iput p1, p0, Lcom/android/server/connectivity/DataConnectionStats;->mDataState:I

    return p1
.end method

.method private hasService()Z
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats;->mServiceState:Landroid/telephony/ServiceState;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats;->mServiceState:Landroid/telephony/ServiceState;

    .line 153
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 151
    :goto_0
    return v1
.end method

.method private isCdma()Z
    .locals 1

    .line 147
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
    .locals 6

    .line 101
    iget-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats;->mServiceState:Landroid/telephony/ServiceState;

    if-nez v0, :cond_0

    .line 102
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v3

    .line 106
    .local v0, "simReadyOrUnknown":Z
    :goto_1
    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/server/connectivity/DataConnectionStats;->isCdma()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 107
    :cond_3
    invoke-direct {p0}, Lcom/android/server/connectivity/DataConnectionStats;->hasService()Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/server/connectivity/DataConnectionStats;->mDataState:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_4

    move v2, v3

    goto :goto_2

    :cond_4
    nop

    :goto_2
    move v1, v2

    .line 109
    .local v1, "visible":Z
    iget-object v2, p0, Lcom/android/server/connectivity/DataConnectionStats;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v2

    .line 112
    .local v2, "networkType":I
    iget-boolean v3, p0, Lcom/android/server/connectivity/DataConnectionStats;->mShow5GService:Z

    if-eqz v3, :cond_5

    .line 113
    const/16 v2, 0x14

    .line 119
    :cond_5
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/DataConnectionStats;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3, v2, v1}, Lcom/android/internal/app/IBatteryStats;->notePhoneDataConnectionState(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    goto :goto_3

    .line 120
    :catch_0
    move-exception v3

    .line 121
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "DataConnectionStats"

    const-string v5, "Error noting data connection state"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_3
    return-void
.end method

.method private final updateSimState(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 126
    const-string/jumbo v0, "ss"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "stateExtra":Ljava/lang/String;
    const-string v1, "ABSENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v1, p0, Lcom/android/server/connectivity/DataConnectionStats;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_1

    .line 129
    :cond_0
    const-string v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v1, p0, Lcom/android/server/connectivity/DataConnectionStats;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_1

    .line 131
    :cond_1
    const-string v1, "LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 132
    nop

    .line 133
    const-string/jumbo v1, "reason"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, "lockedReason":Ljava/lang/String;
    const-string v2, "PIN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 135
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/server/connectivity/DataConnectionStats;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 136
    :cond_2
    const-string v2, "PUK"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 137
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/server/connectivity/DataConnectionStats;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 139
    :cond_3
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/server/connectivity/DataConnectionStats;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 141
    .end local v1    # "lockedReason":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 142
    :cond_4
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v1, p0, Lcom/android/server/connectivity/DataConnectionStats;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 144
    :goto_1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 90
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    invoke-direct {p0, p2}, Lcom/android/server/connectivity/DataConnectionStats;->updateSimState(Landroid/content/Intent;)V

    .line 93
    invoke-direct {p0}, Lcom/android/server/connectivity/DataConnectionStats;->notePhoneDataConnectionState()V

    goto :goto_0

    .line 94
    :cond_0
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 95
    const-string v1, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 96
    :cond_1
    invoke-direct {p0}, Lcom/android/server/connectivity/DataConnectionStats;->notePhoneDataConnectionState()V

    .line 98
    :cond_2
    :goto_0
    return-void
.end method

.method public startMonitoring()V
    .locals 4

    .line 61
    iget-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats;->mContext:Landroid/content/Context;

    .line 62
    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 63
    .local v0, "phone":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/android/server/connectivity/DataConnectionStats;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x1c1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 69
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 70
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 72
    const-string v2, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    iget-object v2, p0, Lcom/android/server/connectivity/DataConnectionStats;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 76
    new-instance v2, Lcom/android/server/connectivity/DataConnectionStats$1;

    iget-object v3, p0, Lcom/android/server/connectivity/DataConnectionStats;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/android/server/connectivity/DataConnectionStats$1;-><init>(Lcom/android/server/connectivity/DataConnectionStats;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/connectivity/DataConnectionStats;->m5GStatusListener:Lcom/android/server/connectivity/FiveGStatusListener;

    .line 84
    iget-object v2, p0, Lcom/android/server/connectivity/DataConnectionStats;->m5GStatusListener:Lcom/android/server/connectivity/FiveGStatusListener;

    invoke-virtual {v2}, Lcom/android/server/connectivity/FiveGStatusListener;->startListen()V

    .line 86
    return-void
.end method
