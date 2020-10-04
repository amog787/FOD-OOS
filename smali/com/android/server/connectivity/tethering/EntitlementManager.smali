.class public Lcom/android/server/connectivity/tethering/EntitlementManager;
.super Ljava/lang/Object;
.source "EntitlementManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;,
        Lcom/android/server/connectivity/tethering/EntitlementManager$TetheringConfigurationFetcher;,
        Lcom/android/server/connectivity/tethering/EntitlementManager$OnUiEntitlementFailedListener;
    }
.end annotation


# static fields
.field private static final ACTION_PROVISIONING_ALARM:Ljava/lang/String; = "com.android.server.connectivity.tethering.PROVISIONING_RECHECK_ALARM"

.field private static final DBG:Z = false

.field protected static final DISABLE_PROVISIONING_SYSPROP_KEY:Ljava/lang/String; = "net.tethering.noprovisioning"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final EVENT_GET_ENTITLEMENT_VALUE:I = 0x4

.field private static final EVENT_MAYBE_RUN_PROVISIONING:I = 0x3

.field private static final EVENT_START_PROVISIONING:I = 0x0

.field private static final EVENT_STOP_PROVISIONING:I = 0x1

.field private static final EVENT_UPSTREAM_CHANGED:I = 0x2

.field private static final EXTRA_SUBID:Ljava/lang/String; = "subId"

.field private static final MS_PER_HOUR:I = 0x36ee80

.field private static final TAG:Ljava/lang/String;

.field private static final TETHER_SERVICE:Landroid/content/ComponentName;


# instance fields
.field private final mCellularPermitted:Landroid/util/SparseIntArray;

.field private mCellularUpstreamPermitted:Z

.field private final mContext:Landroid/content/Context;

.field private final mCurrentTethers:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mEntitlementCacheValue:Landroid/util/SparseIntArray;

.field private mFetcher:Lcom/android/server/connectivity/tethering/EntitlementManager$TetheringConfigurationFetcher;

.field private final mHandler:Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;

.field private mListener:Lcom/android/server/connectivity/tethering/EntitlementManager$OnUiEntitlementFailedListener;

.field private final mLog:Landroid/net/util/SharedLog;

.field private mNeedReRunProvisioningUi:Z

.field private final mPermissionChangeMessageCode:I

.field private mProvisioningRecheckAlarm:Landroid/app/PendingIntent;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

.field private final mTetherMasterSM:Lcom/android/internal/util/StateMachine;

.field private mUsingCellularAsUpstream:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 71
    const-class v0, Lcom/android/server/connectivity/tethering/EntitlementManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/tethering/EntitlementManager;->TAG:Ljava/lang/String;

    .line 82
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10401b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/tethering/EntitlementManager;->TETHER_SERVICE:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Landroid/net/util/SharedLog;ILcom/android/server/connectivity/MockableSystemProperties;)V
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "tetherMasterSM"    # Lcom/android/internal/util/StateMachine;
    .param p3, "log"    # Landroid/net/util/SharedLog;
    .param p4, "permissionChangeMessageCode"    # I
    .param p5, "systemProperties"    # Lcom/android/server/connectivity/MockableSystemProperties;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCellularUpstreamPermitted:Z

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mUsingCellularAsUpstream:Z

    .line 109
    iput-boolean v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mNeedReRunProvisioningUi:Z

    .line 492
    new-instance v0, Lcom/android/server/connectivity/tethering/EntitlementManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/tethering/EntitlementManager$1;-><init>(Lcom/android/server/connectivity/tethering/EntitlementManager;)V

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 116
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mContext:Landroid/content/Context;

    .line 117
    sget-object v0, Lcom/android/server/connectivity/tethering/EntitlementManager;->TAG:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/net/util/SharedLog;->forSubComponent(Ljava/lang/String;)Landroid/net/util/SharedLog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mLog:Landroid/net/util/SharedLog;

    .line 118
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCurrentTethers:Landroid/util/ArraySet;

    .line 119
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCellularPermitted:Landroid/util/SparseIntArray;

    .line 120
    iput-object p5, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

    .line 121
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mEntitlementCacheValue:Landroid/util/SparseIntArray;

    .line 122
    iput-object p2, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    .line 123
    iput p4, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mPermissionChangeMessageCode:I

    .line 124
    invoke-virtual {p2}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 127
    .local v0, "masterHandler":Landroid/os/Handler;
    new-instance v1, Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;-><init>(Lcom/android/server/connectivity/tethering/EntitlementManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mHandler:Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;

    .line 128
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.android.server.connectivity.tethering.PROVISIONING_RECHECK_ALARM"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mHandler:Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 130
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/connectivity/tethering/EntitlementManager;)Landroid/net/util/SharedLog;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/tethering/EntitlementManager;

    .line 70
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mLog:Landroid/net/util/SharedLog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/connectivity/tethering/EntitlementManager;)Lcom/android/server/connectivity/tethering/EntitlementManager$TetheringConfigurationFetcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/tethering/EntitlementManager;

    .line 70
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mFetcher:Lcom/android/server/connectivity/tethering/EntitlementManager$TetheringConfigurationFetcher;

    return-object v0
.end method

.method static synthetic access$200(I)Z
    .locals 1
    .param p0, "x0"    # I

    .line 70
    invoke-static {p0}, Lcom/android/server/connectivity/tethering/EntitlementManager;->toBool(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/connectivity/tethering/EntitlementManager;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/tethering/EntitlementManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/tethering/EntitlementManager;->handleStartProvisioningIfNeeded(IZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/connectivity/tethering/EntitlementManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/tethering/EntitlementManager;
    .param p1, "x1"    # I

    .line 70
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->handleStopProvisioningIfNeeded(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/connectivity/tethering/EntitlementManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/tethering/EntitlementManager;
    .param p1, "x1"    # Z

    .line 70
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->handleNotifyUpstream(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/connectivity/tethering/EntitlementManager;Lcom/android/server/connectivity/tethering/TetheringConfiguration;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/tethering/EntitlementManager;
    .param p1, "x1"    # Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    .line 70
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->handleMaybeRunProvisioning(Lcom/android/server/connectivity/tethering/TetheringConfiguration;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/connectivity/tethering/EntitlementManager;ILandroid/os/ResultReceiver;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/tethering/EntitlementManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/ResultReceiver;
    .param p3, "x3"    # Z

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/connectivity/tethering/EntitlementManager;->handleGetLatestTetheringEntitlementValue(ILandroid/os/ResultReceiver;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/connectivity/tethering/EntitlementManager;II)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/tethering/EntitlementManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/tethering/EntitlementManager;->updateEntitlementCacheValue(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/connectivity/tethering/EntitlementManager;)Lcom/android/server/connectivity/tethering/EntitlementManager$OnUiEntitlementFailedListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/tethering/EntitlementManager;

    .line 70
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mListener:Lcom/android/server/connectivity/tethering/EntitlementManager$OnUiEntitlementFailedListener;

    return-object v0
.end method

.method private buildProxyReceiver(IZLandroid/os/ResultReceiver;)Landroid/os/ResultReceiver;
    .locals 7
    .param p1, "type"    # I
    .param p2, "notifyFail"    # Z
    .param p3, "receiver"    # Landroid/os/ResultReceiver;

    .line 596
    new-instance v6, Lcom/android/server/connectivity/tethering/EntitlementManager$2;

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mHandler:Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;

    move-object v0, v6

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/connectivity/tethering/EntitlementManager$2;-><init>(Lcom/android/server/connectivity/tethering/EntitlementManager;Landroid/os/Handler;IZLandroid/os/ResultReceiver;)V

    .line 608
    .local v0, "rr":Landroid/os/ResultReceiver;
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/tethering/EntitlementManager;->writeToParcel(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object v1

    return-object v1
.end method

.method private cancelTetherProvisioningRechecks()V
    .locals 2

    .line 433
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mProvisioningRecheckAlarm:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 436
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mProvisioningRecheckAlarm:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 437
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mProvisioningRecheckAlarm:Landroid/app/PendingIntent;

    .line 439
    .end local v0    # "alarmManager":Landroid/app/AlarmManager;
    :cond_0
    return-void
.end method

.method private carrierConfigAffirmsEntitlementCheckNotRequired(Lcom/android/server/connectivity/tethering/TetheringConfiguration;)Z
    .locals 3
    .param p1, "config"    # Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    .line 353
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->getCarrierConfig(Lcom/android/server/connectivity/tethering/TetheringConfiguration;)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 354
    .local v0, "carrierConfig":Landroid/os/PersistableBundle;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 357
    :cond_0
    const-string/jumbo v1, "require_entitlement_checks_bool"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 359
    .local v1, "isEntitlementCheckRequired":Z
    xor-int/lit8 v2, v1, 0x1

    return v2
.end method

.method private static encodeBool(Z)I
    .locals 0
    .param p0, "b"    # Z

    .line 540
    return p0
.end method

.method private static errorString(I)Ljava/lang/String;
    .locals 3
    .param p0, "value"    # I

    .line 585
    if-eqz p0, :cond_2

    const/16 v0, 0xb

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    .line 590
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "UNKNOWN ERROR (%d)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 586
    :cond_0
    const-string v0, "TETHER_ERROR_ENTITLEMENT_UNKONWN"

    return-object v0

    .line 588
    :cond_1
    const-string v0, "TETHER_ERROR_PROVISION_FAILED"

    return-object v0

    .line 587
    :cond_2
    const-string v0, "TETHER_ERROR_NO_ERROR"

    return-object v0
.end method

.method private evaluateCellularPermission(Lcom/android/server/connectivity/tethering/TetheringConfiguration;)V
    .locals 4
    .param p1, "config"    # Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    .line 442
    iget-boolean v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCellularUpstreamPermitted:Z

    .line 443
    .local v0, "oldPermitted":Z
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->isTetherProvisioningRequired(Lcom/android/server/connectivity/tethering/TetheringConfiguration;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCellularPermitted:Landroid/util/SparseIntArray;

    .line 444
    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v1

    const/4 v3, -0x1

    if-le v1, v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    iput-boolean v2, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCellularUpstreamPermitted:Z

    .line 451
    iget-boolean v1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCellularUpstreamPermitted:Z

    if-eq v1, v0, :cond_2

    .line 452
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mLog:Landroid/net/util/SharedLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cellular permission change: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCellularUpstreamPermitted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 453
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    iget v2, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mPermissionChangeMessageCode:I

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 457
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCellularUpstreamPermitted:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCellularPermitted:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 458
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->scheduleProvisioningRechecks(Lcom/android/server/connectivity/tethering/TetheringConfiguration;)V

    goto :goto_0

    .line 460
    :cond_3
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/EntitlementManager;->cancelTetherProvisioningRechecks()V

    .line 462
    :goto_0
    return-void
.end method

.method private handleGetLatestTetheringEntitlementValue(ILandroid/os/ResultReceiver;Z)V
    .locals 5
    .param p1, "downstream"    # I
    .param p2, "receiver"    # Landroid/os/ResultReceiver;
    .param p3, "showEntitlementUi"    # Z

    .line 660
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mFetcher:Lcom/android/server/connectivity/tethering/EntitlementManager$TetheringConfigurationFetcher;

    invoke-interface {v0}, Lcom/android/server/connectivity/tethering/EntitlementManager$TetheringConfigurationFetcher;->fetchTetheringConfiguration()Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    move-result-object v0

    .line 661
    .local v0, "config":Lcom/android/server/connectivity/tethering/TetheringConfiguration;
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/tethering/EntitlementManager;->isTetherProvisioningRequired(Lcom/android/server/connectivity/tethering/TetheringConfiguration;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 662
    invoke-virtual {p2, v3, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 663
    return-void

    .line 666
    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mEntitlementCacheValue:Landroid/util/SparseIntArray;

    const/16 v4, 0xd

    invoke-virtual {v1, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 668
    .local v1, "cacheValue":I
    if-eqz v1, :cond_2

    if-nez p3, :cond_1

    goto :goto_0

    .line 671
    :cond_1
    invoke-direct {p0, p1, v3, p2}, Lcom/android/server/connectivity/tethering/EntitlementManager;->buildProxyReceiver(IZLandroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object v2

    .line 672
    .local v2, "proxy":Landroid/os/ResultReceiver;
    iget v3, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->subId:I

    invoke-virtual {p0, p1, v3, v2}, Lcom/android/server/connectivity/tethering/EntitlementManager;->runUiTetherProvisioning(IILandroid/os/ResultReceiver;)V

    goto :goto_1

    .line 669
    .end local v2    # "proxy":Landroid/os/ResultReceiver;
    :cond_2
    :goto_0
    invoke-virtual {p2, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 674
    :goto_1
    return-void
.end method

.method private handleMaybeRunProvisioning(Lcom/android/server/connectivity/tethering/TetheringConfiguration;)V
    .locals 4
    .param p1, "config"    # Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    .line 258
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCurrentTethers:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->isTetherProvisioningRequired(Lcom/android/server/connectivity/tethering/TetheringConfiguration;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCurrentTethers:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 267
    .local v1, "downstream":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCellularPermitted:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_2

    .line 268
    iget-boolean v2, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mNeedReRunProvisioningUi:Z

    if-eqz v2, :cond_1

    .line 269
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mNeedReRunProvisioningUi:Z

    .line 270
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p1, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->subId:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/connectivity/tethering/EntitlementManager;->runUiTetherProvisioning(II)V

    goto :goto_1

    .line 272
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p1, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->subId:I

    invoke-virtual {p0, v2, v3}, Lcom/android/server/connectivity/tethering/EntitlementManager;->runSilentTetherProvisioning(II)V

    .line 275
    .end local v1    # "downstream":Ljava/lang/Integer;
    :cond_2
    :goto_1
    goto :goto_0

    .line 276
    :cond_3
    return-void

    .line 259
    :cond_4
    :goto_2
    return-void
.end method

.method private handleNotifyUpstream(Z)V
    .locals 1
    .param p1, "isCellular"    # Z

    .line 244
    iput-boolean p1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mUsingCellularAsUpstream:Z

    .line 246
    iget-boolean v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mUsingCellularAsUpstream:Z

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mFetcher:Lcom/android/server/connectivity/tethering/EntitlementManager$TetheringConfigurationFetcher;

    invoke-interface {v0}, Lcom/android/server/connectivity/tethering/EntitlementManager$TetheringConfigurationFetcher;->fetchTetheringConfiguration()Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    move-result-object v0

    .line 248
    .local v0, "config":Lcom/android/server/connectivity/tethering/TetheringConfiguration;
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/tethering/EntitlementManager;->handleMaybeRunProvisioning(Lcom/android/server/connectivity/tethering/TetheringConfiguration;)V

    .line 250
    .end local v0    # "config":Lcom/android/server/connectivity/tethering/TetheringConfiguration;
    :cond_0
    return-void
.end method

.method private handleStartProvisioningIfNeeded(IZ)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "showProvisioningUi"    # Z

    .line 181
    invoke-static {p1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->isValidDownstreamType(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCurrentTethers:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCurrentTethers:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mFetcher:Lcom/android/server/connectivity/tethering/EntitlementManager$TetheringConfigurationFetcher;

    invoke-interface {v0}, Lcom/android/server/connectivity/tethering/EntitlementManager$TetheringConfigurationFetcher;->fetchTetheringConfiguration()Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    move-result-object v0

    .line 186
    .local v0, "config":Lcom/android/server/connectivity/tethering/TetheringConfiguration;
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/tethering/EntitlementManager;->isTetherProvisioningRequired(Lcom/android/server/connectivity/tethering/TetheringConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 189
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCellularPermitted:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 190
    iput-boolean v2, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCellularUpstreamPermitted:Z

    .line 194
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mUsingCellularAsUpstream:Z

    if-eqz v1, :cond_4

    .line 195
    if-eqz p2, :cond_3

    .line 196
    iget v1, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->subId:I

    invoke-direct {p0, p1, v1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->runUiTetherProvisioning(II)V

    goto :goto_0

    .line 198
    :cond_3
    iget v1, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->subId:I

    invoke-virtual {p0, p1, v1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->runSilentTetherProvisioning(II)V

    .line 200
    :goto_0
    iput-boolean v2, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mNeedReRunProvisioningUi:Z

    goto :goto_1

    .line 202
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mNeedReRunProvisioningUi:Z

    or-int/2addr v1, p2

    iput-boolean v1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mNeedReRunProvisioningUi:Z

    goto :goto_1

    .line 205
    :cond_5
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCellularUpstreamPermitted:Z

    .line 207
    :goto_1
    return-void
.end method

.method private handleStopProvisioningIfNeeded(I)V
    .locals 2
    .param p1, "type"    # I

    .line 219
    invoke-static {p1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->isValidDownstreamType(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCurrentTethers:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 225
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->removeDownstreamMapping(I)V

    .line 226
    return-void
.end method

.method private static isValidDownstreamType(I)Z
    .locals 2
    .param p0, "type"    # I

    .line 544
    const/4 v0, 0x1

    if-eqz p0, :cond_0

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    .line 550
    const/4 v0, 0x0

    return v0

    .line 548
    :cond_0
    return v0
.end method

.method private runUiTetherProvisioning(II)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "subId"    # I

    .line 388
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->buildProxyReceiver(IZLandroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object v0

    .line 389
    .local v0, "receiver":Landroid/os/ResultReceiver;
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/connectivity/tethering/EntitlementManager;->runUiTetherProvisioning(IILandroid/os/ResultReceiver;)V

    .line 390
    return-void
.end method

.method private scheduleProvisioningRechecks(Lcom/android/server/connectivity/tethering/TetheringConfiguration;)V
    .locals 14
    .param p1, "config"    # Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    .line 417
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mProvisioningRecheckAlarm:Landroid/app/PendingIntent;

    if-nez v0, :cond_1

    .line 418
    iget v0, p1, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->provisioningCheckPeriod:I

    .line 419
    .local v0, "period":I
    if-gtz v0, :cond_0

    return-void

    .line 421
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.server.connectivity.tethering.PROVISIONING_RECHECK_ALARM"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 422
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mProvisioningRecheckAlarm:Landroid/app/PendingIntent;

    .line 423
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 425
    .local v2, "alarmManager":Landroid/app/AlarmManager;
    const v3, 0x36ee80

    mul-int/2addr v3, v0

    int-to-long v10, v3

    .line 426
    .local v10, "periodMs":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    add-long v12, v3, v10

    .line 427
    .local v12, "firstAlarmTime":J
    const/4 v4, 0x3

    iget-object v9, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mProvisioningRecheckAlarm:Landroid/app/PendingIntent;

    move-object v3, v2

    move-wide v5, v12

    move-wide v7, v10

    invoke-virtual/range {v3 .. v9}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 430
    .end local v0    # "period":I
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "alarmManager":Landroid/app/AlarmManager;
    .end local v10    # "periodMs":J
    .end local v12    # "firstAlarmTime":J
    :cond_1
    return-void
.end method

.method private static toBool(I)Z
    .locals 1
    .param p0, "encodedBoolean"    # I

    .line 536
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static typeString(I)Ljava/lang/String;
    .locals 3
    .param p0, "type"    # I

    .line 574
    const/4 v0, -0x1

    if-eq p0, v0, :cond_3

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    .line 580
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "TETHERING UNKNOWN TYPE (%d)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 575
    :cond_0
    const-string v0, "TETHERING_BLUETOOTH"

    return-object v0

    .line 577
    :cond_1
    const-string v0, "TETHERING_USB"

    return-object v0

    .line 578
    :cond_2
    const-string v0, "TETHERING_WIFI"

    return-object v0

    .line 576
    :cond_3
    const-string v0, "TETHERING_INVALID"

    return-object v0
.end method

.method private updateEntitlementCacheValue(II)I
    .locals 2
    .param p1, "type"    # I
    .param p2, "resultCode"    # I

    .line 640
    if-nez p2, :cond_0

    .line 641
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mEntitlementCacheValue:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 642
    return p2

    .line 644
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mEntitlementCacheValue:Landroid/util/SparseIntArray;

    const/16 v1, 0xb

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 645
    return v1
.end method

.method private writeToParcel(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;
    .locals 2
    .param p1, "receiver"    # Landroid/os/ResultReceiver;

    .line 621
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 622
    .local v0, "parcel":Landroid/os/Parcel;
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    .line 623
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 624
    sget-object v1, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    .line 625
    .local v1, "receiverForSending":Landroid/os/ResultReceiver;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 626
    return-object v1
.end method


# virtual methods
.method protected addDownstreamMapping(II)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "resultCode"    # I

    .line 472
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addDownstreamMapping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,TetherTypeRequested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCurrentTethers:Landroid/util/ArraySet;

    .line 473
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 472
    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->i(Ljava/lang/String;)V

    .line 474
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCurrentTethers:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCellularPermitted:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 477
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mFetcher:Lcom/android/server/connectivity/tethering/EntitlementManager$TetheringConfigurationFetcher;

    invoke-interface {v0}, Lcom/android/server/connectivity/tethering/EntitlementManager$TetheringConfigurationFetcher;->fetchTetheringConfiguration()Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    move-result-object v0

    .line 478
    .local v0, "config":Lcom/android/server/connectivity/tethering/TetheringConfiguration;
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/tethering/EntitlementManager;->evaluateCellularPermission(Lcom/android/server/connectivity/tethering/TetheringConfiguration;)V

    .line 479
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 559
    const-string/jumbo v0, "mCellularUpstreamPermitted: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 560
    iget-boolean v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCellularUpstreamPermitted:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 561
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCurrentTethers:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 562
    .local v1, "type":Ljava/lang/Integer;
    const-string v2, "Type: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 563
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/android/server/connectivity/tethering/EntitlementManager;->typeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 564
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCellularPermitted:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_0

    .line 565
    const-string v2, ", Value: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 566
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCellularPermitted:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/server/connectivity/tethering/EntitlementManager;->errorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 568
    :cond_0
    const-string v2, ", Value: empty"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 570
    .end local v1    # "type":Ljava/lang/Integer;
    :goto_1
    goto :goto_0

    .line 571
    :cond_1
    return-void
.end method

.method public getCarrierConfig(Lcom/android/server/connectivity/tethering/TetheringConfiguration;)Landroid/os/PersistableBundle;
    .locals 4
    .param p1, "config"    # Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    .line 332
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mContext:Landroid/content/Context;

    .line 333
    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 334
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 336
    :cond_0
    iget v2, p1, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->subId:I

    invoke-virtual {v0, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 338
    .local v2, "carrierConfig":Landroid/os/PersistableBundle;
    invoke-static {v2}, Landroid/telephony/CarrierConfigManager;->isConfigForIdentifiedCarrier(Landroid/os/PersistableBundle;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 339
    return-object v2

    .line 342
    :cond_1
    return-object v1
.end method

.method public getLatestTetheringEntitlementResult(ILandroid/os/ResultReceiver;Z)V
    .locals 3
    .param p1, "downstream"    # I
    .param p2, "receiver"    # Landroid/os/ResultReceiver;
    .param p3, "showEntitlementUi"    # Z

    .line 652
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mHandler:Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;

    .line 653
    invoke-static {p3}, Lcom/android/server/connectivity/tethering/EntitlementManager;->encodeBool(Z)I

    move-result v1

    .line 652
    const/4 v2, 0x4

    invoke-virtual {v0, v2, p1, v1, p2}, Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;->sendMessage(Landroid/os/Message;)Z

    .line 655
    return-void
.end method

.method public isCellularUpstreamPermitted()Z
    .locals 1

    .line 164
    iget-boolean v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCellularUpstreamPermitted:Z

    return v0
.end method

.method protected isTetherProvisioningRequired(Lcom/android/server/connectivity/tethering/TetheringConfiguration;)Z
    .locals 3
    .param p1, "config"    # Lcom/android/server/connectivity/tethering/TetheringConfiguration;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 286
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

    const/4 v1, 0x0

    const-string/jumbo v2, "net.tethering.noprovisioning"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/connectivity/MockableSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->provisioningApp:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 290
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->carrierConfigAffirmsEntitlementCheckNotRequired(Lcom/android/server/connectivity/tethering/TetheringConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 291
    return v1

    .line 293
    :cond_1
    iget-object v0, p1, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->provisioningApp:[Ljava/lang/String;

    array-length v0, v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    .line 288
    :cond_3
    :goto_0
    return v1
.end method

.method public maybeRunProvisioning()V
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mHandler:Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;->sendMessage(Landroid/os/Message;)Z

    .line 255
    return-void
.end method

.method public notifyUpstream(Z)V
    .locals 4
    .param p1, "isCellular"    # Z

    .line 234
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mHandler:Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;

    .line 235
    invoke-static {p1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->encodeBool(Z)I

    move-result v1

    .line 234
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;->sendMessage(Landroid/os/Message;)Z

    .line 236
    return-void
.end method

.method public reevaluateSimCardProvisioning(Lcom/android/server/connectivity/tethering/TetheringConfiguration;)V
    .locals 2
    .param p1, "config"    # Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    .line 308
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mHandler:Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;

    invoke-virtual {v0}, Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mLog:Landroid/net/util/SharedLog;

    const-string/jumbo v1, "reevaluateSimCardProvisioning() don\'t run in TetherMaster thread"

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mEntitlementCacheValue:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 313
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCellularPermitted:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 316
    invoke-virtual {p1}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->hasMobileHotspotProvisionApp()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 317
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->carrierConfigAffirmsEntitlementCheckNotRequired(Lcom/android/server/connectivity/tethering/TetheringConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 322
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mUsingCellularAsUpstream:Z

    if-eqz v0, :cond_2

    .line 323
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->handleMaybeRunProvisioning(Lcom/android/server/connectivity/tethering/TetheringConfiguration;)V

    .line 325
    :cond_2
    return-void

    .line 318
    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->evaluateCellularPermission(Lcom/android/server/connectivity/tethering/TetheringConfiguration;)V

    .line 319
    return-void
.end method

.method protected removeDownstreamMapping(I)V
    .locals 3
    .param p1, "type"    # I

    .line 486
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeDownstreamMapping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->i(Ljava/lang/String;)V

    .line 487
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCellularPermitted:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 488
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mFetcher:Lcom/android/server/connectivity/tethering/EntitlementManager$TetheringConfigurationFetcher;

    invoke-interface {v0}, Lcom/android/server/connectivity/tethering/EntitlementManager$TetheringConfigurationFetcher;->fetchTetheringConfiguration()Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    move-result-object v0

    .line 489
    .local v0, "config":Lcom/android/server/connectivity/tethering/TetheringConfiguration;
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/tethering/EntitlementManager;->evaluateCellularPermission(Lcom/android/server/connectivity/tethering/TetheringConfiguration;)V

    .line 490
    return-void
.end method

.method protected runSilentTetherProvisioning(II)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "subId"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 371
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->buildProxyReceiver(IZLandroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object v0

    .line 373
    .local v0, "receiver":Landroid/os/ResultReceiver;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 374
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "extraAddTetherType"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 375
    const-string v2, "extraRunProvision"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 376
    const-string v2, "extraProvisionCallback"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 377
    const-string/jumbo v2, "subId"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 378
    sget-object v2, Lcom/android/server/connectivity/tethering/EntitlementManager;->TETHER_SERVICE:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 379
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 381
    .local v2, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 384
    nop

    .line 385
    return-void

    .line 383
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method protected runUiTetherProvisioning(IILandroid/os/ResultReceiver;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "subId"    # I
    .param p3, "receiver"    # Landroid/os/ResultReceiver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 402
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.TETHER_PROVISIONING_UI"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 403
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "extraAddTetherType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 404
    const-string v1, "extraProvisionCallback"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 405
    const-string/jumbo v1, "subId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 406
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 407
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 409
    .local v1, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 412
    nop

    .line 413
    return-void

    .line 411
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setOnUiEntitlementFailedListener(Lcom/android/server/connectivity/tethering/EntitlementManager$OnUiEntitlementFailedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/server/connectivity/tethering/EntitlementManager$OnUiEntitlementFailedListener;

    .line 133
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mListener:Lcom/android/server/connectivity/tethering/EntitlementManager$OnUiEntitlementFailedListener;

    .line 134
    return-void
.end method

.method public setTetheringConfigurationFetcher(Lcom/android/server/connectivity/tethering/EntitlementManager$TetheringConfigurationFetcher;)V
    .locals 0
    .param p1, "fetcher"    # Lcom/android/server/connectivity/tethering/EntitlementManager$TetheringConfigurationFetcher;

    .line 147
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mFetcher:Lcom/android/server/connectivity/tethering/EntitlementManager$TetheringConfigurationFetcher;

    .line 148
    return-void
.end method

.method public startProvisioningIfNeeded(IZ)V
    .locals 3
    .param p1, "downstreamType"    # I
    .param p2, "showProvisioningUi"    # Z

    .line 176
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mHandler:Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;

    .line 177
    invoke-static {p2}, Lcom/android/server/connectivity/tethering/EntitlementManager;->encodeBool(Z)I

    move-result v1

    .line 176
    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1, v1}, Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;->sendMessage(Landroid/os/Message;)Z

    .line 178
    return-void
.end method

.method public stopProvisioningIfNeeded(I)V
    .locals 3
    .param p1, "type"    # I

    .line 215
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mHandler:Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;->sendMessage(Landroid/os/Message;)Z

    .line 216
    return-void
.end method
