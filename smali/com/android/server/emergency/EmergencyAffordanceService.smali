.class public Lcom/android/server/emergency/EmergencyAffordanceService;
.super Lcom/android/server/SystemService;
.source "EmergencyAffordanceService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;
    }
.end annotation


# static fields
.field private static final CELL_INFO_STATE_CHANGED:I = 0x2

.field private static final EMERGENCY_SIM_INSERTED_SETTING:Ljava/lang/String; = "emergency_sim_inserted_before"

.field private static final INITIALIZE_STATE:I = 0x1

.field private static final NUM_SCANS_UNTIL_ABORT:I = 0x4

.field private static final SUBSCRIPTION_CHANGED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "EmergencyAffordanceService"

.field private static sInstance:Lcom/android/server/emergency/EmergencyAffordanceService;


# instance fields
.field private mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mEmergencyAffordanceNeeded:Z

.field private final mEmergencyCallMccNumbers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;

.field private final mLock:Ljava/lang/Object;

.field private mNetworkNeedsEmergencyAffordance:Z

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mScansCompleted:I

.field private mSimNeedsEmergencyAffordance:Z

.field private mSubscriptionChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mVoiceCapable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 135
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mLock:Ljava/lang/Object;

    .line 85
    new-instance v0, Lcom/android/server/emergency/EmergencyAffordanceService$1;

    invoke-direct {v0, p0}, Lcom/android/server/emergency/EmergencyAffordanceService$1;-><init>(Lcom/android/server/emergency/EmergencyAffordanceService;)V

    iput-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 102
    new-instance v0, Lcom/android/server/emergency/EmergencyAffordanceService$2;

    invoke-direct {v0, p0}, Lcom/android/server/emergency/EmergencyAffordanceService$2;-><init>(Lcom/android/server/emergency/EmergencyAffordanceService;)V

    iput-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    .line 126
    new-instance v0, Lcom/android/server/emergency/EmergencyAffordanceService$3;

    invoke-direct {v0, p0}, Lcom/android/server/emergency/EmergencyAffordanceService$3;-><init>(Lcom/android/server/emergency/EmergencyAffordanceService;)V

    iput-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mSubscriptionChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 136
    iput-object p1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 139
    .local v0, "numbers":[I
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyCallMccNumbers:Ljava/util/ArrayList;

    .line 140
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 141
    iget-object v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyCallMccNumbers:Ljava/util/ArrayList;

    aget v3, v0, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    .end local v1    # "i":I
    :cond_0
    sput-object p0, Lcom/android/server/emergency/EmergencyAffordanceService;->sInstance:Lcom/android/server/emergency/EmergencyAffordanceService;

    .line 147
    invoke-static {p1}, Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;->make(Landroid/content/Context;)V

    .line 148
    invoke-static {}, Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;->getInstance()Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;->addEmergencyCallMccNumbersForTestMcc()V

    .line 150
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/emergency/EmergencyAffordanceService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/emergency/EmergencyAffordanceService;

    .line 53
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->isEmergencyAffordanceNeeded()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/emergency/EmergencyAffordanceService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/emergency/EmergencyAffordanceService;

    .line 53
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->requestCellScan()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/emergency/EmergencyAffordanceService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/emergency/EmergencyAffordanceService;

    .line 53
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->startScanning()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/emergency/EmergencyAffordanceService;)Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/emergency/EmergencyAffordanceService;

    .line 53
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mHandler:Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/emergency/EmergencyAffordanceService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/emergency/EmergencyAffordanceService;

    .line 53
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->handleInitializeState()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/emergency/EmergencyAffordanceService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/emergency/EmergencyAffordanceService;

    .line 53
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->handleUpdateCellInfo()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/emergency/EmergencyAffordanceService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/emergency/EmergencyAffordanceService;

    .line 53
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->handleUpdateSimSubscriptionInfo()Z

    move-result v0

    return v0
.end method

.method public static getInstance()Lcom/android/server/emergency/EmergencyAffordanceService;
    .locals 2

    .line 391
    sget-object v0, Lcom/android/server/emergency/EmergencyAffordanceService;->sInstance:Lcom/android/server/emergency/EmergencyAffordanceService;

    if-nez v0, :cond_0

    .line 392
    const-string v0, "EmergencyAffordanceService"

    const-string v1, "getInstance: called before make"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_0
    sget-object v0, Lcom/android/server/emergency/EmergencyAffordanceService;->sInstance:Lcom/android/server/emergency/EmergencyAffordanceService;

    return-object v0
.end method

.method private handleInitializeState()V
    .locals 2

    .line 245
    const-string v0, "EmergencyAffordanceService"

    const-string v1, "handleInitializeState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->handleUpdateSimSubscriptionInfo()Z

    .line 252
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->handleUpdateCellInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    return-void

    .line 258
    :cond_0
    invoke-static {}, Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;->getInstance()Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;->onStartPollingCellInfo()V

    .line 261
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->updateEmergencyAffordanceNeeded()V

    .line 262
    return-void
.end method

.method private handleUpdateCellInfo()Z
    .locals 7

    .line 328
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    .line 329
    .local v0, "cellInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleUpdateCellInfo  cellInfos "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EmergencyAffordanceService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 331
    return v1

    .line 333
    :cond_0
    const/4 v2, 0x0

    .line 334
    .local v2, "stopScanningAfterScan":Z
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/CellInfo;

    .line 335
    .local v4, "cellInfo":Landroid/telephony/CellInfo;
    const/4 v5, 0x0

    .line 336
    .local v5, "mcc":I
    instance-of v6, v4, Landroid/telephony/CellInfoGsm;

    if-eqz v6, :cond_1

    .line 337
    move-object v6, v4

    check-cast v6, Landroid/telephony/CellInfoGsm;

    invoke-virtual {v6}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/CellIdentityGsm;->getMcc()I

    move-result v5

    goto :goto_1

    .line 338
    :cond_1
    instance-of v6, v4, Landroid/telephony/CellInfoLte;

    if-eqz v6, :cond_2

    .line 339
    move-object v6, v4

    check-cast v6, Landroid/telephony/CellInfoLte;

    invoke-virtual {v6}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result v5

    goto :goto_1

    .line 340
    :cond_2
    instance-of v6, v4, Landroid/telephony/CellInfoWcdma;

    if-eqz v6, :cond_3

    .line 341
    move-object v6, v4

    check-cast v6, Landroid/telephony/CellInfoWcdma;

    invoke-virtual {v6}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/CellIdentityWcdma;->getMcc()I

    move-result v5

    .line 346
    :cond_3
    :goto_1
    invoke-static {}, Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;->getInstance()Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;->setWifiCountryCode(I)V

    .line 349
    invoke-direct {p0, v5}, Lcom/android/server/emergency/EmergencyAffordanceService;->mccRequiresEmergencyAffordance(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 350
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/emergency/EmergencyAffordanceService;->setNetworkNeedsEmergencyAffordance(Z)V

    .line 351
    return v1

    .line 352
    :cond_4
    if-eqz v5, :cond_5

    const v6, 0x7fffffff

    if-eq v5, v6, :cond_5

    .line 354
    const/4 v2, 0x1

    .line 356
    .end local v4    # "cellInfo":Landroid/telephony/CellInfo;
    .end local v5    # "mcc":I
    :cond_5
    goto :goto_0

    .line 357
    :cond_6
    if-eqz v2, :cond_7

    .line 358
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->stopScanning()V

    goto :goto_2

    .line 360
    :cond_7
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->onCellScanFinishedUnsuccessful()V

    .line 362
    :goto_2
    invoke-direct {p0, v1}, Lcom/android/server/emergency/EmergencyAffordanceService;->setNetworkNeedsEmergencyAffordance(Z)V

    .line 363
    return v1
.end method

.method private handleUpdateSimSubscriptionInfo()Z
    .locals 10

    .line 265
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->simNeededAffordanceBefore()Z

    move-result v0

    .line 266
    .local v0, "neededBefore":Z
    move v1, v0

    .line 267
    .local v1, "neededNow":Z
    iget-object v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 268
    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    .line 269
    .local v2, "activeSubscriptionInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const-string v3, "EmergencyAffordanceService"

    if-nez v2, :cond_0

    .line 270
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "activeSubscriptionInfoList is null, return : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-direct {p0, v1}, Lcom/android/server/emergency/EmergencyAffordanceService;->setSimNeedsEmergencyAffordance(Z)V

    .line 272
    return v1

    .line 274
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    .line 275
    .local v5, "info":Landroid/telephony/SubscriptionInfo;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "subinfo = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v6

    .line 277
    .local v6, "mcc":I
    invoke-direct {p0, v6}, Lcom/android/server/emergency/EmergencyAffordanceService;->mccRequiresEmergencyAffordance(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 278
    const/4 v1, 0x1

    .line 279
    goto :goto_1

    .line 280
    :cond_1
    if-eqz v6, :cond_2

    const v7, 0x7fffffff

    if-eq v6, v7, :cond_2

    .line 282
    const/4 v1, 0x0

    .line 284
    :cond_2
    iget-object v7, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v7

    .line 285
    .local v7, "simOperator":Ljava/lang/String;
    const/4 v6, 0x0

    .line 286
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "simOperator = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x3

    if-lt v8, v9, :cond_3

    .line 288
    const/4 v8, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 290
    :cond_3
    if-eqz v6, :cond_5

    .line 291
    invoke-direct {p0, v6}, Lcom/android/server/emergency/EmergencyAffordanceService;->mccRequiresEmergencyAffordance(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 292
    const/4 v1, 0x1

    .line 293
    goto :goto_1

    .line 296
    :cond_4
    const/4 v1, 0x0

    .line 299
    .end local v5    # "info":Landroid/telephony/SubscriptionInfo;
    .end local v6    # "mcc":I
    .end local v7    # "simOperator":Ljava/lang/String;
    :cond_5
    goto :goto_0

    .line 302
    :cond_6
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "neededNow = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", neededBefore = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-direct {p0, v1}, Lcom/android/server/emergency/EmergencyAffordanceService;->setSimNeedsEmergencyAffordance(Z)V

    .line 307
    return v1
.end method

.method private isEmergencyAffordanceNeeded()Z
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 186
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyAffordanceNeeded:Z

    monitor-exit v0

    return v1

    .line 187
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private mccRequiresEmergencyAffordance(I)Z
    .locals 2
    .param p1, "mcc"    # I

    .line 384
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyCallMccNumbers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private onCellScanFinishedUnsuccessful()V
    .locals 4

    .line 374
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 375
    :try_start_0
    iget v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mScansCompleted:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mScansCompleted:I

    .line 376
    const-string v1, "EmergencyAffordanceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mScansCompleted : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mScansCompleted:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mScansCompleted:I

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 378
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->stopScanning()V

    .line 380
    :cond_0
    monitor-exit v0

    .line 381
    return-void

    .line 380
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private requestCellScan()V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mHandler:Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 124
    return-void
.end method

.method private setNetworkNeedsEmergencyAffordance(Z)V
    .locals 2
    .param p1, "needsAffordance"    # Z

    .line 367
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 368
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mNetworkNeedsEmergencyAffordance:Z

    .line 369
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->updateEmergencyAffordanceNeeded()V

    .line 370
    monitor-exit v0

    .line 371
    return-void

    .line 370
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setSimNeedsEmergencyAffordance(Z)V
    .locals 2
    .param p1, "simNeedsEmergencyAffordance"    # Z

    .line 311
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->simNeededAffordanceBefore()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 312
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 314
    nop

    .line 312
    const-string v1, "emergency_sim_inserted_before"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 316
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mSimNeedsEmergencyAffordance:Z

    if-eq p1, v0, :cond_1

    .line 317
    iput-boolean p1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mSimNeedsEmergencyAffordance:Z

    .line 318
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->updateEmergencyAffordanceNeeded()V

    .line 320
    :cond_1
    return-void
.end method

.method private simNeededAffordanceBefore()Z
    .locals 3

    .line 323
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "emergency_sim_inserted_before"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private startScanning()V
    .locals 3

    .line 216
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x410

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 218
    return-void
.end method

.method private stopScanning()V
    .locals 4

    .line 177
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 178
    :try_start_0
    const-string v1, "EmergencyAffordanceService"

    const-string/jumbo v2, "stopScanning"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 180
    iput v3, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mScansCompleted:I

    .line 181
    monitor-exit v0

    .line 182
    return-void

    .line 181
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateEmergencyAffordanceNeeded()V
    .locals 6

    .line 153
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 154
    :try_start_0
    const-string v1, "EmergencyAffordanceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mSimNeedsEmergencyAffordance : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mSimNeedsEmergencyAffordance:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mNetworkNeedsEmergencyAffordance : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mNetworkNeedsEmergencyAffordance:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-boolean v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mVoiceCapable:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mSimNeedsEmergencyAffordance:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mNetworkNeedsEmergencyAffordance:Z

    if-eqz v1, :cond_1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyAffordanceNeeded:Z

    .line 159
    iget-object v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "emergency_affordance_needed"

    .line 161
    iget-boolean v5, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyAffordanceNeeded:Z

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 159
    :goto_1
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 165
    iget-boolean v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mNetworkNeedsEmergencyAffordance:Z

    if-eqz v1, :cond_3

    .line 166
    invoke-static {}, Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;->getInstance()Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;->onStopPollingCellInfo()V

    .line 170
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyAffordanceNeeded:Z

    if-eqz v1, :cond_4

    .line 171
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->stopScanning()V

    .line 173
    :cond_4
    monitor-exit v0

    .line 174
    return-void

    .line 173
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public addEmergencyCallMccNumbers(I)V
    .locals 2
    .param p1, "mcc"    # I

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addEmergencyCallMccNumbers: mcc = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EmergencyAffordanceService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyCallMccNumbers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mHandler:Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;

    return-object v0
.end method

.method public getInitializeState()I
    .locals 1

    .line 411
    const/4 v0, 0x1

    return v0
.end method

.method public onBootPhase(I)V
    .locals 4
    .param p1, "phase"    # I

    .line 196
    const/16 v0, 0x258

    if-ne p1, v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 198
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mVoiceCapable:Z

    .line 199
    iget-boolean v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mVoiceCapable:Z

    if-nez v0, :cond_0

    .line 200
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->updateEmergencyAffordanceNeeded()V

    .line 201
    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 204
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "EmergencyAffordanceService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 205
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 206
    new-instance v1, Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;-><init>(Lcom/android/server/emergency/EmergencyAffordanceService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mHandler:Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;

    .line 207
    iget-object v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mHandler:Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 208
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->startScanning()V

    .line 209
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 210
    .local v1, "filter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 211
    iget-object v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v3, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mSubscriptionChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v2, v3}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 213
    .end local v0    # "thread":Landroid/os/HandlerThread;
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 192
    return-void
.end method
