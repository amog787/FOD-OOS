.class public Lcom/android/server/LocationManagerServiceInjector;
.super Ljava/lang/Object;
.source "LocationManagerServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;,
        Lcom/android/server/LocationManagerServiceInjector$EmergencyCallStateListener;
    }
.end annotation


# static fields
.field private static final AGGRESSIVE_DOZE_ENABLED:Z

.field private static final DEBUG_INJECTOR:Z

.field public static final OP_APPID_FOR_GNSS:Ljava/lang/String; = "F6X2WLDK2K"

.field public static final OP_MDM_GNSS_ENGINE:Ljava/lang/String; = "gnss_engine_abnormal"

.field public static final OP_MDM_GNSS_LOCATION_STATUS:Ljava/lang/String; = "gnss_location_status"

.field public static final OP_MDM_GNSS_PROVIDER:Ljava/lang/String; = "gnss_provider_abnormal"

.field public static final OP_MDM_GNSS_REQUEST_STATUS:Ljava/lang/String; = "gnss_request_status"

.field public static final OP_MDM_GNSS_SWITCH:Ljava/lang/String; = "gnss_switch_abnormal"

.field public static final OP_MDM_GNSS_TTFF:Ljava/lang/String; = "gnss_provider_ttff"

.field private static final TAG:Ljava/lang/String; = "LocationManagerServiceInjector"

.field private static debugOnplus:Z

.field private static gpsStatus:Z

.field private static lppeValue:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mCurrentUserId:I

.field private static mEmergencyStateListener:Lcom/android/server/LocationManagerServiceInjector$EmergencyCallStateListener;

.field private static mEmwifiStatus:Z

.field private static mLocationManager:Landroid/location/LocationManager;

.field private static mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private static mWifiManager:Landroid/net/wifi/WifiManager;

.field private static opAggressiveDoze:Lcom/android/server/IOpAggressiveDoze;

.field private static wifiStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 53
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/LocationManagerServiceInjector;->debugOnplus:Z

    .line 54
    const-string v0, "LocationManagerServiceInjector"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/LocationManagerServiceInjector;->DEBUG_INJECTOR:Z

    .line 60
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/LocationManagerServiceInjector;->mEmwifiStatus:Z

    .line 62
    sput-boolean v0, Lcom/android/server/LocationManagerServiceInjector;->gpsStatus:Z

    .line 70
    const/4 v1, -0x2

    sput v1, Lcom/android/server/LocationManagerServiceInjector;->mCurrentUserId:I

    .line 76
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/16 v2, 0x5f

    aput v2, v1, v0

    .line 77
    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/LocationManagerServiceInjector;->AGGRESSIVE_DOZE_ENABLED:Z

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    sput-object p1, Lcom/android/server/LocationManagerServiceInjector;->mContext:Landroid/content/Context;

    .line 82
    invoke-virtual {p0}, Lcom/android/server/LocationManagerServiceInjector;->init()V

    .line 83
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 51
    sget-boolean v0, Lcom/android/server/LocationManagerServiceInjector;->debugOnplus:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 51
    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->lppeValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .line 51
    sget v0, Lcom/android/server/LocationManagerServiceInjector;->wifiStatus:I

    return v0
.end method

.method static synthetic access$202(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 51
    sput p0, Lcom/android/server/LocationManagerServiceInjector;->wifiStatus:I

    return p0
.end method

.method static synthetic access$300()Z
    .locals 1

    .line 51
    sget-boolean v0, Lcom/android/server/LocationManagerServiceInjector;->gpsStatus:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 51
    sput-boolean p0, Lcom/android/server/LocationManagerServiceInjector;->gpsStatus:Z

    return p0
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 51
    sget-boolean v0, Lcom/android/server/LocationManagerServiceInjector;->mEmwifiStatus:Z

    return v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 51
    sput-boolean p0, Lcom/android/server/LocationManagerServiceInjector;->mEmwifiStatus:Z

    return p0
.end method

.method static synthetic access$500()Landroid/content/Context;
    .locals 1

    .line 51
    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600()Landroid/location/LocationManager;
    .locals 1

    .line 51
    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$700()Landroid/net/wifi/WifiManager;
    .locals 1

    .line 51
    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$800()I
    .locals 1

    .line 51
    sget v0, Lcom/android/server/LocationManagerServiceInjector;->mCurrentUserId:I

    return v0
.end method

.method public static getLogLevelStatusUpdates()Z
    .locals 3

    .line 117
    const-string/jumbo v0, "persist.sys.assert.panic"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 118
    const-string/jumbo v0, "persist.vendor.oem.gps.debug"

    const-string v2, "0"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    const/4 v0, 0x1

    return v0

    .line 121
    :cond_0
    return v1

    .line 124
    :cond_1
    return v1
.end method

.method public static getReceiverLocked(Ljava/util/HashMap;Landroid/location/LocationRequest;IILjava/lang/String;)Lcom/android/server/LocationManagerService$Receiver;
    .locals 8
    .param p1, "request"    # Landroid/location/LocationRequest;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Lcom/android/server/LocationManagerService$Receiver;",
            ">;",
            "Landroid/location/LocationRequest;",
            "II",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/server/LocationManagerService$Receiver;"
        }
    .end annotation

    .line 132
    .local p0, "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Object;Lcom/android/server/LocationManagerService$Receiver;>;"
    const/4 v0, 0x0

    .line 133
    .local v0, "receiver":Lcom/android/server/LocationManagerService$Receiver;
    const/4 v1, 0x0

    .line 134
    .local v1, "isGetReceiverFromCache":Z
    const/4 v2, 0x0

    .line 135
    .local v2, "appRequestProvider":Ljava/lang/String;
    const/4 v3, 0x0

    .line 136
    .local v3, "recieversCount":I
    if-eqz p1, :cond_2

    .line 137
    invoke-virtual {p1}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v2

    .line 138
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 139
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Lcom/android/server/LocationManagerService$Receiver;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/LocationManagerService$Receiver;

    iget-object v6, v6, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v6, v6, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {p4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 140
    add-int/lit8 v3, v3, 0x1

    .line 142
    :cond_0
    const/4 v6, 0x0

    .line 143
    .local v6, "isSameRequest":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/LocationManagerService$Receiver;

    iget-object v7, v7, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    if-eqz v7, :cond_1

    .line 144
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/LocationManagerService$Receiver;

    iget-object v7, v7, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 145
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/LocationManagerService$Receiver;

    iget-object v7, v7, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/LocationManagerService$UpdateRecord;

    iget-object v6, v7, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    .line 146
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/LocationManagerService$Receiver;

    iget-object v7, v7, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v7, v7, Lcom/android/server/location/CallerIdentity;->mUid:I

    if-ne v7, p3, :cond_1

    .line 147
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/LocationManagerService$Receiver;

    iget-object v7, v7, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v7, v7, Lcom/android/server/location/CallerIdentity;->mPid:I

    if-ne v7, p2, :cond_1

    .line 148
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/LocationManagerService$Receiver;

    iget-object v7, v7, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v7, v7, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {p4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 149
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 150
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/android/server/LocationManagerService$Receiver;

    .line 151
    const/4 v1, 0x1

    .line 154
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Lcom/android/server/LocationManagerService$Receiver;>;"
    .end local v6    # "isSameRequest":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 157
    :cond_2
    const/16 v4, 0x14

    if-lt v3, v4, :cond_4

    if-eqz v1, :cond_4

    .line 158
    const/4 v1, 0x0

    .line 159
    const/4 v3, 0x0

    .line 160
    sget-boolean v4, Lcom/android/server/LocationManagerServiceInjector;->debugOnplus:Z

    if-eqz v4, :cond_3

    .line 161
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "packageName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", has already registered"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "return this receiver instead of create a new receiver"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "LocationManagerServiceInjector"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_3
    return-object v0

    .line 169
    :cond_4
    const/4 v4, 0x0

    return-object v4
.end method

.method public static prepare(Lcom/android/server/LocationManagerService$LocationManagerServiceInner;)V
    .locals 2
    .param p0, "inner"    # Lcom/android/server/LocationManagerService$LocationManagerServiceInner;

    .line 86
    sget-boolean v0, Lcom/android/server/LocationManagerServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    .line 87
    const-string v0, "LocationManagerServiceInjector"

    const-string/jumbo v1, "prepare"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_0
    sget-boolean v0, Lcom/android/server/LocationManagerServiceInjector;->AGGRESSIVE_DOZE_ENABLED:Z

    if-eqz v0, :cond_1

    .line 91
    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->opAggressiveDoze:Lcom/android/server/IOpAggressiveDoze;

    if-nez v0, :cond_1

    .line 92
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_aggressive_doze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/IOpAggressiveDoze;

    sput-object v0, Lcom/android/server/LocationManagerServiceInjector;->opAggressiveDoze:Lcom/android/server/IOpAggressiveDoze;

    .line 97
    :cond_1
    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->opAggressiveDoze:Lcom/android/server/IOpAggressiveDoze;

    if-eqz v0, :cond_2

    .line 98
    invoke-interface {v0, p0}, Lcom/android/server/IOpAggressiveDoze;->prepareLocationManagerService(Lcom/android/server/LocationManagerService$LocationManagerServiceInner;)V

    .line 100
    :cond_2
    return-void
.end method


# virtual methods
.method public init()V
    .locals 2

    .line 103
    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    sput-object v0, Lcom/android/server/LocationManagerServiceInjector;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 104
    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/android/server/LocationManagerServiceInjector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 105
    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    sput-object v0, Lcom/android/server/LocationManagerServiceInjector;->mLocationManager:Landroid/location/LocationManager;

    .line 106
    new-instance v0, Lcom/android/server/LocationManagerServiceInjector$EmergencyCallStateListener;

    invoke-direct {v0, p0}, Lcom/android/server/LocationManagerServiceInjector$EmergencyCallStateListener;-><init>(Lcom/android/server/LocationManagerServiceInjector;)V

    sput-object v0, Lcom/android/server/LocationManagerServiceInjector;->mEmergencyStateListener:Lcom/android/server/LocationManagerServiceInjector$EmergencyCallStateListener;

    .line 107
    const-string/jumbo v0, "persist.sys.gps.lppe.cp"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/LocationManagerServiceInjector;->lppeValue:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public listenStatusOfEmergency()V
    .locals 3

    .line 111
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x77

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    sget-object v1, Lcom/android/server/LocationManagerServiceInjector;->mEmergencyStateListener:Lcom/android/server/LocationManagerServiceInjector$EmergencyCallStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 114
    :cond_0
    return-void
.end method
