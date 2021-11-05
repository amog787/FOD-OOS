.class public Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;
.super Ljava/lang/Object;
.source "EmergencyAffordanceServiceInjector.java"


# static fields
.field private static final NUM_POLLING_UNTIL_ABORT:I = 0x6

.field private static final POLLING_CELL_INFO_INTERVAL:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "EmergencyAffordanceServiceInjector"

.field private static sInstance:Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mInitializeState:I

.field private mPollingComplete:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;->mInitializeState:I

    .line 47
    const-string v0, "EmergencyAffordanceServiceInjector"

    const-string v1, "EmergencyAffordanceServiceInjector: constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iput-object p1, p0, Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;->mContext:Landroid/content/Context;

    .line 49
    invoke-static {}, Lcom/android/server/emergency/EmergencyAffordanceService;->getInstance()Lcom/android/server/emergency/EmergencyAffordanceService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/emergency/EmergencyAffordanceService;->getInitializeState()I

    move-result v0

    iput v0, p0, Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;->mInitializeState:I

    .line 50
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 51
    return-void
.end method

.method public static getInstance()Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;
    .locals 2

    .line 67
    sget-object v0, Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;->sInstance:Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;

    if-nez v0, :cond_0

    .line 68
    const-string v0, "EmergencyAffordanceServiceInjector"

    const-string v1, "getInstance: called before make"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_0
    sget-object v0, Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;->sInstance:Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;

    return-object v0
.end method

.method private isIsoChange(Ljava/lang/String;)Z
    .locals 4
    .param p1, "countryIso"    # Ljava/lang/String;

    .line 84
    const-string/jumbo v0, "sys.radio.country_iso"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "iso":Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 86
    .local v1, "changed":Z
    if-eqz v1, :cond_0

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isIsoChange oldIso =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " newIso = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EmergencyAffordanceServiceInjector"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    return v1
.end method

.method public static make(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 55
    sget-object v0, Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;->sInstance:Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;

    invoke-direct {v0, p0}, Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;->sInstance:Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;

    goto :goto_0

    .line 61
    :cond_0
    const-string v0, "EmergencyAffordanceServiceInjector"

    const-string/jumbo v1, "make: should be called once "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :goto_0
    return-void
.end method

.method private setCountryCode(Ljava/lang/String;)V
    .locals 6
    .param p1, "country"    # Ljava/lang/String;

    .line 108
    :try_start_0
    const-string v0, "android.net.wifi.WifiManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 109
    .local v0, "setCountryCodeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v1, "setCountryCode"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 110
    .local v1, "setCountryCode":Ljava/lang/reflect/Method;
    iget-object v3, p0, Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 111
    .local v3, "msetCountryCodeWifiManager":Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 112
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .end local v0    # "setCountryCodeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "setCountryCode":Ljava/lang/reflect/Method;
    .end local v3    # "msetCountryCodeWifiManager":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCountryCode failed Exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EmergencyAffordanceServiceInjector"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public addEmergencyCallCountryCodeForTest()V
    .locals 4

    .line 74
    const-string v0, "ecc.test.county_iso"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "countryIso":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "EmergencyAffordanceServiceInjector"

    if-nez v1, :cond_0

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addEmergencyCallMccNumbersForTestMcc: add a test country iso = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-static {}, Lcom/android/server/emergency/EmergencyAffordanceService;->getInstance()Lcom/android/server/emergency/EmergencyAffordanceService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/emergency/EmergencyAffordanceService;->addEmergencyCallCountryCode(Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :cond_0
    const-string v1, "addEmergencyCallMccNumbersForTestMcc: prop ecc.test.county_iso is empty"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :goto_0
    return-void
.end method

.method public onStartPollingCellInfo()V
    .locals 4

    .line 120
    iget v0, p0, Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;->mPollingComplete:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;->mPollingComplete:I

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStartPollingCellInfo: polling mPollingComplete = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;->mPollingComplete:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mInitializeState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;->mInitializeState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EmergencyAffordanceServiceInjector"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget v0, p0, Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;->mPollingComplete:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 123
    invoke-static {}, Lcom/android/server/emergency/EmergencyAffordanceService;->getInstance()Lcom/android/server/emergency/EmergencyAffordanceService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/emergency/EmergencyAffordanceService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;->mInitializeState:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 124
    invoke-static {}, Lcom/android/server/emergency/EmergencyAffordanceService;->getInstance()Lcom/android/server/emergency/EmergencyAffordanceService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/emergency/EmergencyAffordanceService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;->mInitializeState:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 125
    .local v0, "msg":Landroid/os/Message;
    invoke-static {}, Lcom/android/server/emergency/EmergencyAffordanceService;->getInstance()Lcom/android/server/emergency/EmergencyAffordanceService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/emergency/EmergencyAffordanceService;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 126
    .end local v0    # "msg":Landroid/os/Message;
    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;->onStopPollingCellInfo()V

    .line 129
    :goto_0
    return-void
.end method

.method public onStopPollingCellInfo()V
    .locals 2

    .line 132
    const-string v0, "EmergencyAffordanceServiceInjector"

    const-string/jumbo v1, "onStopPollingCellInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;->mPollingComplete:I

    .line 134
    invoke-static {}, Lcom/android/server/emergency/EmergencyAffordanceService;->getInstance()Lcom/android/server/emergency/EmergencyAffordanceService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/emergency/EmergencyAffordanceService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;->mInitializeState:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 135
    return-void
.end method

.method public setPollingComplete(I)V
    .locals 2
    .param p1, "pollingComplete"    # I

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPollingComplete: pollingComplete = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EmergencyAffordanceServiceInjector"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iput p1, p0, Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;->mPollingComplete:I

    .line 141
    return-void
.end method

.method public setWifiCountryIso(Ljava/lang/String;)V
    .locals 4
    .param p1, "countryIso"    # Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 94
    .local v0, "wM":Landroid/net/wifi/WifiManager;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWifiCountryCode: receive emergency country iso = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EmergencyAffordanceServiceInjector"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    if-eqz v0, :cond_1

    .line 96
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 97
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 98
    invoke-direct {p0, p1}, Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;->isIsoChange(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    :cond_0
    const-string/jumbo v1, "setWifiCountryCode: set country iso from radio"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;->setCountryCode(Ljava/lang/String;)V

    .line 103
    :cond_1
    const-string/jumbo v1, "sys.radio.country_iso"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method
