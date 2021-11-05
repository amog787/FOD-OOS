.class public Lcom/android/server/OpWirelessChargeDisconnectDetectorInjector;
.super Ljava/lang/Object;
.source "OpWirelessChargeDisconnectDetectorInjector.java"


# static fields
.field public static final FEATURE_SUPPORT:Z

.field private static mContext:Landroid/content/Context;

.field private static mDetector:Lcom/android/server/IOpWirelessChargeDisconnectDetector;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 26
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xed

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/OpWirelessChargeDisconnectDetectorInjector;->FEATURE_SUPPORT:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyPowerDisconnectedBroadcast(Landroid/content/Intent;)V
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .line 73
    sget-boolean v0, Lcom/android/server/OpWirelessChargeDisconnectDetectorInjector;->FEATURE_SUPPORT:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/OpWirelessChargeDisconnectDetectorInjector;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 74
    invoke-static {}, Lcom/android/server/OpWirelessChargeDisconnectDetectorInjector;->initInstance()V

    .line 75
    sget-object v0, Lcom/android/server/OpWirelessChargeDisconnectDetectorInjector;->mDetector:Lcom/android/server/IOpWirelessChargeDisconnectDetector;

    invoke-interface {v0, p0}, Lcom/android/server/IOpWirelessChargeDisconnectDetector;->copyPowerDisconnectedBroadcast(Landroid/content/Intent;)V

    .line 77
    :cond_0
    return-void
.end method

.method public static fakeBatteryChangedBroadcast(Landroid/content/Intent;)V
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .line 58
    sget-boolean v0, Lcom/android/server/OpWirelessChargeDisconnectDetectorInjector;->FEATURE_SUPPORT:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/OpWirelessChargeDisconnectDetectorInjector;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 59
    invoke-static {}, Lcom/android/server/OpWirelessChargeDisconnectDetectorInjector;->initInstance()V

    .line 60
    sget-object v0, Lcom/android/server/OpWirelessChargeDisconnectDetectorInjector;->mDetector:Lcom/android/server/IOpWirelessChargeDisconnectDetector;

    invoke-interface {v0, p0}, Lcom/android/server/IOpWirelessChargeDisconnectDetector;->fakeBatteryChangedBroadcast(Landroid/content/Intent;)V

    .line 62
    :cond_0
    return-void
.end method

.method public static initContext(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FEATURE_SUPPORT:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/OpWirelessChargeDisconnectDetectorInjector;->FEATURE_SUPPORT:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Randle"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    sget-boolean v0, Lcom/android/server/OpWirelessChargeDisconnectDetectorInjector;->FEATURE_SUPPORT:Z

    if-eqz v0, :cond_0

    .line 45
    sput-object p0, Lcom/android/server/OpWirelessChargeDisconnectDetectorInjector;->mContext:Landroid/content/Context;

    .line 47
    :cond_0
    return-void
.end method

.method private static initInstance()V
    .locals 2

    .line 32
    sget-object v0, Lcom/android/server/OpWirelessChargeDisconnectDetectorInjector;->mDetector:Lcom/android/server/IOpWirelessChargeDisconnectDetector;

    if-nez v0, :cond_0

    .line 33
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_wireless_charge_disconnect_detector:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    .line 34
    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/IOpWirelessChargeDisconnectDetector;

    sput-object v0, Lcom/android/server/OpWirelessChargeDisconnectDetectorInjector;->mDetector:Lcom/android/server/IOpWirelessChargeDisconnectDetector;

    .line 36
    if-eqz v0, :cond_0

    .line 37
    sget-object v1, Lcom/android/server/OpWirelessChargeDisconnectDetectorInjector;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/android/server/IOpWirelessChargeDisconnectDetector;->initInstance(Landroid/content/Context;)V

    .line 40
    :cond_0
    return-void
.end method

.method public static isFakingWirelessCharging()Z
    .locals 1

    .line 80
    sget-boolean v0, Lcom/android/server/OpWirelessChargeDisconnectDetectorInjector;->FEATURE_SUPPORT:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/OpWirelessChargeDisconnectDetectorInjector;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 81
    invoke-static {}, Lcom/android/server/OpWirelessChargeDisconnectDetectorInjector;->initInstance()V

    .line 82
    sget-object v0, Lcom/android/server/OpWirelessChargeDisconnectDetectorInjector;->mDetector:Lcom/android/server/IOpWirelessChargeDisconnectDetector;

    invoke-interface {v0}, Lcom/android/server/IOpWirelessChargeDisconnectDetector;->isFakingWirelessCharging()Z

    move-result v0

    return v0

    .line 84
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static shouldAbortPowerConnectedBroadcast(I)Z
    .locals 1
    .param p0, "chargeType"    # I

    .line 50
    sget-boolean v0, Lcom/android/server/OpWirelessChargeDisconnectDetectorInjector;->FEATURE_SUPPORT:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/OpWirelessChargeDisconnectDetectorInjector;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 51
    invoke-static {}, Lcom/android/server/OpWirelessChargeDisconnectDetectorInjector;->initInstance()V

    .line 52
    sget-object v0, Lcom/android/server/OpWirelessChargeDisconnectDetectorInjector;->mDetector:Lcom/android/server/IOpWirelessChargeDisconnectDetector;

    invoke-interface {v0, p0}, Lcom/android/server/IOpWirelessChargeDisconnectDetector;->shouldAbortPowerConnectedBroadcast(I)Z

    move-result v0

    return v0

    .line 54
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static shouldDeferWirelessDisconnection()Z
    .locals 1

    .line 65
    sget-boolean v0, Lcom/android/server/OpWirelessChargeDisconnectDetectorInjector;->FEATURE_SUPPORT:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/OpWirelessChargeDisconnectDetectorInjector;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 66
    invoke-static {}, Lcom/android/server/OpWirelessChargeDisconnectDetectorInjector;->initInstance()V

    .line 67
    sget-object v0, Lcom/android/server/OpWirelessChargeDisconnectDetectorInjector;->mDetector:Lcom/android/server/IOpWirelessChargeDisconnectDetector;

    invoke-interface {v0}, Lcom/android/server/IOpWirelessChargeDisconnectDetector;->shouldDeferWirelessDisconnection()Z

    move-result v0

    return v0

    .line 69
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
