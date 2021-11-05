.class public Lcom/android/server/location/GeofenceManager;
.super Ljava/lang/Object;
.source "GeofenceManager.java"

# interfaces
.implements Landroid/location/LocationListener;
.implements Landroid/app/PendingIntent$OnFinished;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GeofenceManager$GeofenceHandler;
    }
.end annotation


# static fields
.field private static final D:Z

.field private static final MAX_AGE_NANOS:J = 0x45d964b800L

.field private static final MAX_INTERVAL_MS:J = 0x6ddd00L

.field private static final MAX_SPEED_M_S:I = 0x64

.field private static final MSG_UPDATE_FENCES:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GeofenceManager"


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mContext:Landroid/content/Context;

.field private mFences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/location/GeofenceState;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Lcom/android/server/location/GeofenceManager$GeofenceHandler;

.field private mLastLocationUpdate:Landroid/location/Location;

.field private final mLocationManager:Landroid/location/LocationManager;

.field private mLocationUpdateInterval:J

.field private final mLock:Ljava/lang/Object;

.field private mPendingUpdate:Z

.field private mReceivingLocationUpdates:Z

.field private final mSettingsStore:Lcom/android/server/location/SettingsHelper;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    const-string v0, "GeofenceManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/GeofenceManager;->D:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/SettingsHelper;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "settingsStore"    # Lcom/android/server/location/SettingsHelper;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/GeofenceManager;->mLock:Ljava/lang/Object;

    .line 84
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    .line 111
    iput-object p1, p0, Lcom/android/server/location/GeofenceManager;->mContext:Landroid/content/Context;

    .line 112
    new-instance v0, Lcom/android/server/location/GeofenceManager$GeofenceHandler;

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/location/GeofenceManager$GeofenceHandler;-><init>(Lcom/android/server/location/GeofenceManager;Landroid/os/Looper;Lcom/android/server/location/GeofenceManager$1;)V

    iput-object v0, p0, Lcom/android/server/location/GeofenceManager;->mHandler:Lcom/android/server/location/GeofenceManager$GeofenceHandler;

    .line 114
    iget-object v0, p0, Lcom/android/server/location/GeofenceManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/location/LocationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/server/location/GeofenceManager;->mLocationManager:Landroid/location/LocationManager;

    .line 115
    iget-object v0, p0, Lcom/android/server/location/GeofenceManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/location/GeofenceManager;->mAppOps:Landroid/app/AppOpsManager;

    .line 117
    iget-object v0, p0, Lcom/android/server/location/GeofenceManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "GeofenceManager"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GeofenceManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 120
    iput-object p2, p0, Lcom/android/server/location/GeofenceManager;->mSettingsStore:Lcom/android/server/location/SettingsHelper;

    .line 121
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/location/GeofenceManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GeofenceManager;

    .line 45
    invoke-direct {p0}, Lcom/android/server/location/GeofenceManager;->updateFences()V

    return-void
.end method

.method private getFreshLocationLocked()Landroid/location/Location;
    .locals 8

    .line 201
    iget-boolean v0, p0, Lcom/android/server/location/GeofenceManager;->mReceivingLocationUpdates:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/GeofenceManager;->mLastLocationUpdate:Landroid/location/Location;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 202
    .local v0, "location":Landroid/location/Location;
    :goto_0
    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 203
    iget-object v2, p0, Lcom/android/server/location/GeofenceManager;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v2}, Landroid/location/LocationManager;->getLastLocation()Landroid/location/Location;

    move-result-object v0

    .line 207
    :cond_1
    if-nez v0, :cond_2

    .line 208
    return-object v1

    .line 212
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    .line 213
    .local v2, "now":J
    invoke-virtual {v0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide v6, 0x45d964b800L

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    .line 214
    return-object v1

    .line 218
    :cond_3
    return-object v0
.end method

.method static synthetic lambda$removeExpiredFencesLocked$1(JLcom/android/server/location/GeofenceState;)Z
    .locals 2
    .param p0, "time"    # J
    .param p2, "state"    # Lcom/android/server/location/GeofenceState;

    .line 182
    iget-wide v0, p2, Lcom/android/server/location/GeofenceState;->mExpireAt:J

    cmp-long v0, v0, p0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$removeFence$0(Ljava/lang/String;Lcom/android/server/location/GeofenceState;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "state"    # Lcom/android/server/location/GeofenceState;

    .line 175
    iget-object v0, p1, Lcom/android/server/location/GeofenceState;->mIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v0, v0, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private removeExpiredFencesLocked()V
    .locals 4

    .line 181
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 182
    .local v0, "time":J
    iget-object v2, p0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    new-instance v3, Lcom/android/server/location/-$$Lambda$GeofenceManager$An30EDYyFFaKfyzgt2iEJPV1IAg;

    invoke-direct {v3, v0, v1}, Lcom/android/server/location/-$$Lambda$GeofenceManager$An30EDYyFFaKfyzgt2iEJPV1IAg;-><init>(J)V

    invoke-interface {v2, v3}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 183
    return-void
.end method

.method private scheduleUpdateFencesLocked()V
    .locals 2

    .line 186
    iget-boolean v0, p0, Lcom/android/server/location/GeofenceManager;->mPendingUpdate:Z

    if-nez v0, :cond_0

    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/GeofenceManager;->mPendingUpdate:Z

    .line 188
    iget-object v1, p0, Lcom/android/server/location/GeofenceManager;->mHandler:Lcom/android/server/location/GeofenceManager$GeofenceHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/location/GeofenceManager$GeofenceHandler;->sendEmptyMessage(I)Z

    .line 190
    :cond_0
    return-void
.end method

.method private sendIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 9
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 352
    iget-object v0, p0, Lcom/android/server/location/GeofenceManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 354
    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/GeofenceManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v6, 0x0

    const-string v7, "android.permission.ACCESS_FINE_LOCATION"

    .line 356
    invoke-static {v0}, Lcom/android/server/PendingIntentUtils;->createDontSendToRestrictedAppsBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v8

    .line 354
    move-object v1, p1

    move-object v4, p2

    move-object v5, p0

    invoke-virtual/range {v1 .. v8}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    goto :goto_0

    .line 357
    :catch_0
    move-exception v1

    .line 358
    .local v1, "e":Landroid/app/PendingIntent$CanceledException;
    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/GeofenceManager;->removeFence(Landroid/location/Geofence;Landroid/app/PendingIntent;)V

    .line 359
    iget-object v0, p0, Lcom/android/server/location/GeofenceManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 362
    .end local v1    # "e":Landroid/app/PendingIntent$CanceledException;
    :goto_0
    return-void
.end method

.method private sendIntentEnter(Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 332
    sget-boolean v0, Lcom/android/server/location/GeofenceManager;->D:Z

    if-eqz v0, :cond_0

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendIntentEnter: pendingIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GeofenceManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 337
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x1

    const-string v2, "entering"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 338
    invoke-direct {p0, p1, v0}, Lcom/android/server/location/GeofenceManager;->sendIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 339
    return-void
.end method

.method private sendIntentExit(Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 342
    sget-boolean v0, Lcom/android/server/location/GeofenceManager;->D:Z

    if-eqz v0, :cond_0

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendIntentExit: pendingIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GeofenceManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 347
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    const-string v2, "entering"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 348
    invoke-direct {p0, p1, v0}, Lcom/android/server/location/GeofenceManager;->sendIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 349
    return-void
.end method

.method private updateFences()V
    .locals 19

    .line 229
    move-object/from16 v1, p0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    move-object v2, v0

    .line 230
    .local v2, "enterIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    move-object v3, v0

    .line 232
    .local v3, "exitIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    iget-object v4, v1, Lcom/android/server/location/GeofenceManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 233
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, v1, Lcom/android/server/location/GeofenceManager;->mPendingUpdate:Z

    .line 236
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GeofenceManager;->removeExpiredFencesLocked()V

    .line 240
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GeofenceManager;->getFreshLocationLocked()Landroid/location/Location;

    move-result-object v5

    .line 244
    .local v5, "location":Landroid/location/Location;
    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 245
    .local v6, "minFenceDistance":D
    const/4 v8, 0x0

    .line 246
    .local v8, "needUpdates":Z
    iget-object v9, v1, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/location/GeofenceState;

    .line 247
    .local v10, "state":Lcom/android/server/location/GeofenceState;
    iget-object v11, v10, Lcom/android/server/location/GeofenceState;->mIdentity:Lcom/android/server/location/CallerIdentity;

    .line 248
    .local v11, "identity":Lcom/android/server/location/CallerIdentity;
    iget-object v12, v1, Lcom/android/server/location/GeofenceManager;->mSettingsStore:Lcom/android/server/location/SettingsHelper;

    iget v13, v11, Lcom/android/server/location/CallerIdentity;->userId:I

    iget-object v14, v11, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13, v14}, Lcom/android/server/location/SettingsHelper;->isLocationPackageBlacklisted(ILjava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 250
    goto :goto_1

    .line 253
    :cond_0
    iget v12, v11, Lcom/android/server/location/CallerIdentity;->permissionLevel:I

    invoke-static {v12}, Lcom/android/server/location/CallerIdentity;->asAppOp(I)I

    move-result v12

    .line 254
    .local v12, "op":I
    if-ltz v12, :cond_1

    .line 255
    iget-object v13, v1, Lcom/android/server/location/GeofenceManager;->mAppOps:Landroid/app/AppOpsManager;

    iget v15, v11, Lcom/android/server/location/CallerIdentity;->uid:I

    iget-object v0, v11, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    iget-object v14, v11, Lcom/android/server/location/CallerIdentity;->featureId:Ljava/lang/String;

    move-object/from16 v17, v14

    iget-object v14, v11, Lcom/android/server/location/CallerIdentity;->listenerId:Ljava/lang/String;

    move-object/from16 v18, v14

    const/4 v14, 0x1

    move-object/from16 v16, v0

    invoke-virtual/range {v13 .. v18}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    nop

    .line 246
    .end local v10    # "state":Lcom/android/server/location/GeofenceState;
    .end local v11    # "identity":Lcom/android/server/location/CallerIdentity;
    .end local v12    # "op":I
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 262
    .restart local v10    # "state":Lcom/android/server/location/GeofenceState;
    .restart local v11    # "identity":Lcom/android/server/location/CallerIdentity;
    .restart local v12    # "op":I
    :cond_1
    const/4 v8, 0x1

    .line 263
    if-eqz v5, :cond_4

    .line 264
    invoke-virtual {v10, v5}, Lcom/android/server/location/GeofenceState;->processLocation(Landroid/location/Location;)I

    move-result v0

    .line 265
    .local v0, "event":I
    and-int/lit8 v13, v0, 0x1

    if-eqz v13, :cond_2

    .line 266
    iget-object v13, v10, Lcom/android/server/location/GeofenceState;->mIntent:Landroid/app/PendingIntent;

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    :cond_2
    and-int/lit8 v13, v0, 0x2

    if-eqz v13, :cond_3

    .line 269
    iget-object v13, v10, Lcom/android/server/location/GeofenceState;->mIntent:Landroid/app/PendingIntent;

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    :cond_3
    invoke-virtual {v10}, Lcom/android/server/location/GeofenceState;->getDistanceToBoundary()D

    move-result-wide v13

    .line 275
    .local v13, "fenceDistance":D
    cmpg-double v15, v13, v6

    if-gez v15, :cond_4

    .line 276
    move-wide v6, v13

    .line 279
    .end local v0    # "event":I
    .end local v10    # "state":Lcom/android/server/location/GeofenceState;
    .end local v11    # "identity":Lcom/android/server/location/CallerIdentity;
    .end local v12    # "op":I
    .end local v13    # "fenceDistance":D
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 282
    :cond_5
    if-eqz v8, :cond_9

    .line 286
    if-eqz v5, :cond_6

    const-wide v11, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static {v6, v7, v11, v12}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-eqz v0, :cond_6

    .line 287
    const-wide v11, 0x415b774000000000L    # 7200000.0

    iget-object v0, v1, Lcom/android/server/location/GeofenceManager;->mSettingsStore:Lcom/android/server/location/SettingsHelper;

    .line 288
    invoke-virtual {v0}, Lcom/android/server/location/SettingsHelper;->getBackgroundThrottleProximityAlertIntervalMs()J

    move-result-wide v13

    long-to-double v13, v13

    const-wide v15, 0x408f400000000000L    # 1000.0

    mul-double/2addr v15, v6

    const-wide/high16 v17, 0x4059000000000000L    # 100.0

    div-double v9, v15, v17

    .line 287
    invoke-static {v13, v14, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v9

    double-to-long v9, v9

    .local v9, "intervalMs":J
    goto :goto_2

    .line 291
    .end local v9    # "intervalMs":J
    :cond_6
    iget-object v0, v1, Lcom/android/server/location/GeofenceManager;->mSettingsStore:Lcom/android/server/location/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/server/location/SettingsHelper;->getBackgroundThrottleProximityAlertIntervalMs()J

    move-result-wide v9

    .line 293
    .restart local v9    # "intervalMs":J
    :goto_2
    iget-boolean v0, v1, Lcom/android/server/location/GeofenceManager;->mReceivingLocationUpdates:Z

    if-eqz v0, :cond_7

    iget-wide v11, v1, Lcom/android/server/location/GeofenceManager;->mLocationUpdateInterval:J

    cmp-long v0, v11, v9

    if-eqz v0, :cond_8

    .line 294
    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/location/GeofenceManager;->mReceivingLocationUpdates:Z

    .line 295
    iput-wide v9, v1, Lcom/android/server/location/GeofenceManager;->mLocationUpdateInterval:J

    .line 296
    iput-object v5, v1, Lcom/android/server/location/GeofenceManager;->mLastLocationUpdate:Landroid/location/Location;

    .line 298
    new-instance v0, Landroid/location/LocationRequest;

    invoke-direct {v0}, Landroid/location/LocationRequest;-><init>()V

    .line 299
    .local v0, "request":Landroid/location/LocationRequest;
    invoke-virtual {v0, v9, v10}, Landroid/location/LocationRequest;->setInterval(J)Landroid/location/LocationRequest;

    move-result-object v11

    const-wide/16 v12, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/location/LocationRequest;->setFastestInterval(J)Landroid/location/LocationRequest;

    .line 300
    iget-object v11, v1, Lcom/android/server/location/GeofenceManager;->mLocationManager:Landroid/location/LocationManager;

    iget-object v12, v1, Lcom/android/server/location/GeofenceManager;->mHandler:Lcom/android/server/location/GeofenceManager$GeofenceHandler;

    invoke-virtual {v12}, Lcom/android/server/location/GeofenceManager$GeofenceHandler;->getLooper()Landroid/os/Looper;

    move-result-object v12

    invoke-virtual {v11, v0, v1, v12}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 302
    .end local v0    # "request":Landroid/location/LocationRequest;
    .end local v9    # "intervalMs":J
    :cond_8
    goto :goto_3

    .line 304
    :cond_9
    iget-boolean v0, v1, Lcom/android/server/location/GeofenceManager;->mReceivingLocationUpdates:Z

    if-eqz v0, :cond_a

    .line 305
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/location/GeofenceManager;->mReceivingLocationUpdates:Z

    .line 306
    const-wide/16 v9, 0x0

    iput-wide v9, v1, Lcom/android/server/location/GeofenceManager;->mLocationUpdateInterval:J

    .line 307
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/server/location/GeofenceManager;->mLastLocationUpdate:Landroid/location/Location;

    .line 309
    iget-object v0, v1, Lcom/android/server/location/GeofenceManager;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 313
    :cond_a
    :goto_3
    sget-boolean v0, Lcom/android/server/location/GeofenceManager;->D:Z

    if-eqz v0, :cond_b

    .line 314
    const-string v0, "GeofenceManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateFences: location="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", mFences.size()="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    .line 315
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", mReceivingLocationUpdates="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, v1, Lcom/android/server/location/GeofenceManager;->mReceivingLocationUpdates:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", mLocationUpdateInterval="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v1, Lcom/android/server/location/GeofenceManager;->mLocationUpdateInterval:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ", mLastLocationUpdate="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/server/location/GeofenceManager;->mLastLocationUpdate:Landroid/location/Location;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 314
    invoke-static {v0, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    .end local v5    # "location":Landroid/location/Location;
    .end local v6    # "minFenceDistance":D
    .end local v8    # "needUpdates":Z
    :cond_b
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    .line 324
    .local v4, "intent":Landroid/app/PendingIntent;
    invoke-direct {v1, v4}, Lcom/android/server/location/GeofenceManager;->sendIntentExit(Landroid/app/PendingIntent;)V

    .line 325
    .end local v4    # "intent":Landroid/app/PendingIntent;
    goto :goto_4

    .line 326
    :cond_c
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    .line 327
    .restart local v4    # "intent":Landroid/app/PendingIntent;
    invoke-direct {v1, v4}, Lcom/android/server/location/GeofenceManager;->sendIntentEnter(Landroid/app/PendingIntent;)V

    .line 328
    .end local v4    # "intent":Landroid/app/PendingIntent;
    goto :goto_5

    .line 329
    :cond_d
    return-void

    .line 320
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public addFence(Landroid/location/LocationRequest;Landroid/location/Geofence;Landroid/app/PendingIntent;Lcom/android/server/location/CallerIdentity;)V
    .locals 7
    .param p1, "request"    # Landroid/location/LocationRequest;
    .param p2, "geofence"    # Landroid/location/Geofence;
    .param p3, "intent"    # Landroid/app/PendingIntent;
    .param p4, "identity"    # Lcom/android/server/location/CallerIdentity;

    .line 125
    new-instance v6, Lcom/android/server/location/GeofenceState;

    .line 126
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/location/LocationRequest;->getExpirationRealtimeMs(J)J

    move-result-wide v2

    move-object v0, v6

    move-object v1, p2

    move-object v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GeofenceState;-><init>(Landroid/location/Geofence;JLcom/android/server/location/CallerIdentity;Landroid/app/PendingIntent;)V

    .line 128
    .local v0, "state":Lcom/android/server/location/GeofenceState;
    iget-object v1, p0, Lcom/android/server/location/GeofenceManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 130
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 131
    iget-object v3, p0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/GeofenceState;

    .line 132
    .local v3, "w":Lcom/android/server/location/GeofenceState;
    iget-object v4, v3, Lcom/android/server/location/GeofenceState;->mFence:Landroid/location/Geofence;

    invoke-virtual {p2, v4}, Landroid/location/Geofence;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/android/server/location/GeofenceState;->mIntent:Landroid/app/PendingIntent;

    invoke-virtual {p3, v4}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 134
    iget-object v4, p0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 135
    goto :goto_1

    .line 130
    .end local v3    # "w":Lcom/android/server/location/GeofenceState;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 138
    .end local v2    # "i":I
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    invoke-direct {p0}, Lcom/android/server/location/GeofenceManager;->scheduleUpdateFencesLocked()V

    .line 140
    monitor-exit v1

    .line 141
    return-void

    .line 140
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 402
    iget-object v0, p0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/GeofenceState;

    .line 403
    .local v1, "state":Lcom/android/server/location/GeofenceState;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/android/server/location/GeofenceState;->mIdentity:Lcom/android/server/location/CallerIdentity;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/location/GeofenceState;->mFence:Landroid/location/Geofence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 404
    .end local v1    # "state":Lcom/android/server/location/GeofenceState;
    goto :goto_0

    .line 405
    :cond_0
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3
    .param p1, "location"    # Landroid/location/Location;

    .line 367
    iget-object v0, p0, Lcom/android/server/location/GeofenceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 368
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/location/GeofenceManager;->mReceivingLocationUpdates:Z

    if-eqz v1, :cond_0

    .line 369
    iput-object p1, p0, Lcom/android/server/location/GeofenceManager;->mLastLocationUpdate:Landroid/location/Location;

    .line 374
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/location/GeofenceManager;->mPendingUpdate:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 375
    iget-object v1, p0, Lcom/android/server/location/GeofenceManager;->mHandler:Lcom/android/server/location/GeofenceManager$GeofenceHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/location/GeofenceManager$GeofenceHandler;->removeMessages(I)V

    goto :goto_0

    .line 377
    :cond_1
    iput-boolean v2, p0, Lcom/android/server/location/GeofenceManager;->mPendingUpdate:Z

    .line 379
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    invoke-direct {p0}, Lcom/android/server/location/GeofenceManager;->updateFences()V

    .line 381
    return-void

    .line 379
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .line 393
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .line 389
    return-void
.end method

.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Ljava/lang/String;
    .param p5, "resultExtras"    # Landroid/os/Bundle;

    .line 398
    iget-object v0, p0, Lcom/android/server/location/GeofenceManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 399
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 385
    return-void
.end method

.method public removeFence(Landroid/location/Geofence;Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "fence"    # Landroid/location/Geofence;
    .param p2, "intent"    # Landroid/app/PendingIntent;

    .line 144
    sget-boolean v0, Lcom/android/server/location/GeofenceManager;->D:Z

    if-eqz v0, :cond_0

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeFence: fence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GeofenceManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GeofenceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 149
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 150
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/location/GeofenceState;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 151
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/GeofenceState;

    .line 152
    .local v2, "state":Lcom/android/server/location/GeofenceState;
    iget-object v3, v2, Lcom/android/server/location/GeofenceState;->mIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, p2}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 154
    if-nez p1, :cond_1

    .line 156
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 159
    :cond_1
    iget-object v3, v2, Lcom/android/server/location/GeofenceState;->mFence:Landroid/location/Geofence;

    invoke-virtual {p1, v3}, Landroid/location/Geofence;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 160
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 164
    .end local v2    # "state":Lcom/android/server/location/GeofenceState;
    :cond_2
    :goto_1
    goto :goto_0

    .line 165
    :cond_3
    invoke-direct {p0}, Lcom/android/server/location/GeofenceManager;->scheduleUpdateFencesLocked()V

    .line 166
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/location/GeofenceState;>;"
    monitor-exit v0

    .line 167
    return-void

    .line 166
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeFence(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 170
    sget-boolean v0, Lcom/android/server/location/GeofenceManager;->D:Z

    if-eqz v0, :cond_0

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeFence: packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GeofenceManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GeofenceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 175
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    new-instance v2, Lcom/android/server/location/-$$Lambda$GeofenceManager$HESdncIljfrrsDWi1gRXDTge7RY;

    invoke-direct {v2, p1}, Lcom/android/server/location/-$$Lambda$GeofenceManager$HESdncIljfrrsDWi1gRXDTge7RY;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 176
    invoke-direct {p0}, Lcom/android/server/location/GeofenceManager;->scheduleUpdateFencesLocked()V

    .line 177
    monitor-exit v0

    .line 178
    return-void

    .line 177
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
