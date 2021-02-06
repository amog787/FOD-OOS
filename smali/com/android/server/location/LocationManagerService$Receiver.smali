.class public final Lcom/android/server/location/LocationManagerService$Receiver;
.super Lcom/android/server/location/LocationManagerServiceUtils$LinkedListenerBase;
.source "LocationManagerService.java"

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "Receiver"
.end annotation


# static fields
.field private static final WAKELOCK_TIMEOUT_MILLIS:J = 0xea60L


# instance fields
.field private final mHideFromAppOps:Z

.field private final mKey:Ljava/lang/Object;

.field private final mListener:Landroid/location/ILocationListener;

.field private mOpHighPowerMonitoring:Z

.field private mOpMonitoring:Z

.field private mPendingBroadcasts:I

.field final mPendingIntent:Landroid/app/PendingIntent;

.field final mUpdateRecords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/location/LocationManagerService$UpdateRecord;",
            ">;"
        }
    .end annotation
.end field

.field mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final mWorkSource:Landroid/os/WorkSource;

.field final synthetic this$0:Lcom/android/server/location/LocationManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/location/LocationManagerService;Landroid/location/ILocationListener;Landroid/app/PendingIntent;Lcom/android/server/location/CallerIdentity;Landroid/os/WorkSource;Z)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/location/LocationManagerService;
    .param p2, "listener"    # Landroid/location/ILocationListener;
    .param p3, "intent"    # Landroid/app/PendingIntent;
    .param p4, "identity"    # Lcom/android/server/location/CallerIdentity;
    .param p5, "workSource"    # Landroid/os/WorkSource;
    .param p6, "hideFromAppOps"    # Z

    .line 1154
    iput-object p1, p0, Lcom/android/server/location/LocationManagerService$Receiver;->this$0:Lcom/android/server/location/LocationManagerService;

    .line 1155
    invoke-direct {p0, p4}, Lcom/android/server/location/LocationManagerServiceUtils$LinkedListenerBase;-><init>(Lcom/android/server/location/CallerIdentity;)V

    .line 1144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    .line 1156
    iput-object p2, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    .line 1157
    iput-object p3, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mPendingIntent:Landroid/app/PendingIntent;

    .line 1158
    if-eqz p2, :cond_0

    .line 1159
    invoke-interface {p2}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    goto :goto_0

    .line 1161
    :cond_0
    iput-object p3, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    .line 1163
    :goto_0
    if-eqz p5, :cond_1

    invoke-virtual {p5}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1164
    const/4 p5, 0x0

    .line 1166
    :cond_1
    iput-object p5, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mWorkSource:Landroid/os/WorkSource;

    .line 1167
    iput-boolean p6, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mHideFromAppOps:Z

    .line 1169
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/location/LocationManagerService$Receiver;->updateMonitoring(Z)V

    .line 1172
    invoke-static {p1}, Lcom/android/server/location/LocationManagerService;->access$1700(Lcom/android/server/location/LocationManagerService;)Landroid/os/PowerManager;

    move-result-object v1

    const-string v2, "*location*"

    invoke-virtual {v1, v0, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1173
    if-nez p5, :cond_2

    .line 1174
    new-instance v0, Landroid/os/WorkSource;

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v1, v1, Lcom/android/server/location/CallerIdentity;->uid:I

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v2, v2, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    move-object p5, v0

    .line 1176
    :cond_2
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p5}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 1180
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1181
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/LocationManagerService;Landroid/location/ILocationListener;Landroid/app/PendingIntent;Lcom/android/server/location/CallerIdentity;Landroid/os/WorkSource;ZLcom/android/server/location/LocationManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/location/LocationManagerService;
    .param p2, "x1"    # Landroid/location/ILocationListener;
    .param p3, "x2"    # Landroid/app/PendingIntent;
    .param p4, "x3"    # Lcom/android/server/location/CallerIdentity;
    .param p5, "x4"    # Landroid/os/WorkSource;
    .param p6, "x5"    # Z
    .param p7, "x6"    # Lcom/android/server/location/LocationManagerService$1;

    .line 1133
    invoke-direct/range {p0 .. p6}, Lcom/android/server/location/LocationManagerService$Receiver;-><init>(Lcom/android/server/location/LocationManagerService;Landroid/location/ILocationListener;Landroid/app/PendingIntent;Lcom/android/server/location/CallerIdentity;Landroid/os/WorkSource;Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/location/LocationManagerService$Receiver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/LocationManagerService$Receiver;

    .line 1133
    invoke-direct {p0}, Lcom/android/server/location/LocationManagerService$Receiver;->decrementPendingBroadcastsLocked()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/location/LocationManagerService$Receiver;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/LocationManagerService$Receiver;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .line 1133
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/LocationManagerService$Receiver;->callProviderEnabledLocked(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/location/LocationManagerService$Receiver;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/LocationManagerService$Receiver;

    .line 1133
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    return-object v0
.end method

.method private callProviderEnabledLocked(Ljava/lang/String;Z)Z
    .locals 11
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .line 1342
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/location/LocationManagerService$Receiver;->updateMonitoring(Z)V

    .line 1344
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1346
    if-eqz p2, :cond_0

    .line 1347
    :try_start_0
    invoke-interface {v1, p1}, Landroid/location/ILocationListener;->onProviderEnabled(Ljava/lang/String;)V

    goto :goto_0

    .line 1349
    :cond_0
    invoke-interface {v1, p1}, Landroid/location/ILocationListener;->onProviderDisabled(Ljava/lang/String;)V

    .line 1353
    :goto_0
    invoke-direct {p0}, Lcom/android/server/location/LocationManagerService$Receiver;->incrementPendingBroadcastsLocked()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1356
    goto :goto_1

    .line 1354
    :catch_0
    move-exception v0

    .line 1355
    .local v0, "e":Landroid/os/RemoteException;
    return v2

    .line 1358
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1359
    .local v1, "providerIntent":Landroid/content/Intent;
    const-string/jumbo v3, "providerEnabled"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1361
    :try_start_1
    iget-object v3, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v4, p0, Lcom/android/server/location/LocationManagerService$Receiver;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {v4}, Lcom/android/server/location/LocationManagerService;->access$100(Lcom/android/server/location/LocationManagerService;)Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/location/LocationManagerService$Receiver;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {v6}, Lcom/android/server/location/LocationManagerService;->access$2100(Lcom/android/server/location/LocationManagerService;)Landroid/os/Handler;

    move-result-object v8

    iget-object v6, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v6, v6, Lcom/android/server/location/CallerIdentity;->permissionLevel:I

    .line 1362
    invoke-static {v6}, Lcom/android/server/location/CallerIdentity;->asPermission(I)Ljava/lang/String;

    move-result-object v9

    const/4 v6, 0x0

    .line 1363
    invoke-static {v6}, Lcom/android/server/PendingIntentUtils;->createDontSendToRestrictedAppsBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v10

    .line 1361
    move-object v6, v1

    move-object v7, p0

    invoke-virtual/range {v3 .. v10}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1366
    invoke-direct {p0}, Lcom/android/server/location/LocationManagerService$Receiver;->incrementPendingBroadcastsLocked()V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1369
    nop

    .line 1371
    .end local v1    # "providerIntent":Landroid/content/Intent;
    :goto_1
    return v0

    .line 1367
    .restart local v1    # "providerIntent":Landroid/content/Intent;
    :catch_1
    move-exception v0

    .line 1368
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    return v2
.end method

.method private decrementPendingBroadcastsLocked()V
    .locals 3

    .line 1414
    iget v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mPendingBroadcasts:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mPendingBroadcasts:I

    if-nez v0, :cond_1

    .line 1416
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1418
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1419
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1422
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1423
    goto :goto_0

    .line 1422
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1423
    throw v2

    .line 1425
    .end local v0    # "identity":J
    :cond_1
    :goto_0
    return-void
.end method

.method private incrementPendingBroadcastsLocked()V
    .locals 5

    .line 1403
    iget v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mPendingBroadcasts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mPendingBroadcasts:I

    .line 1405
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1407
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v3, 0xea60

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1409
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1410
    nop

    .line 1411
    return-void

    .line 1409
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1410
    throw v2
.end method

.method private updateMonitoring(ZZZ)Z
    .locals 2
    .param p1, "allowMonitoring"    # Z
    .param p2, "currentlyMonitoring"    # Z
    .param p3, "highPower"    # Z

    .line 1274
    if-nez p2, :cond_1

    .line 1275
    if-eqz p1, :cond_2

    .line 1276
    if-nez p3, :cond_0

    .line 1277
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$2000(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/AppOpsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    invoke-virtual {v0, v1}, Lcom/android/server/location/AppOpsHelper;->startLocationMonitoring(Lcom/android/server/location/CallerIdentity;)Z

    move-result v0

    return v0

    .line 1279
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$2000(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/AppOpsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    invoke-virtual {v0, v1}, Lcom/android/server/location/AppOpsHelper;->startHighPowerLocationMonitoring(Lcom/android/server/location/CallerIdentity;)Z

    move-result v0

    return v0

    .line 1283
    :cond_1
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$2000(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/AppOpsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    invoke-virtual {v0, v1}, Lcom/android/server/location/AppOpsHelper;->checkLocationAccess(Lcom/android/server/location/CallerIdentity;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 1293
    :cond_2
    return p2

    .line 1284
    :cond_3
    :goto_0
    if-nez p3, :cond_4

    .line 1285
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$2000(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/AppOpsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    invoke-virtual {v0, v1}, Lcom/android/server/location/AppOpsHelper;->stopLocationMonitoring(Lcom/android/server/location/CallerIdentity;)V

    goto :goto_1

    .line 1287
    :cond_4
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$2000(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/AppOpsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    invoke-virtual {v0, v1}, Lcom/android/server/location/AppOpsHelper;->stopHighPowerLocationMonitoring(Lcom/android/server/location/CallerIdentity;)V

    .line 1289
    :goto_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 1386
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$600(Lcom/android/server/location/LocationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1387
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$Receiver;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {v1, p0}, Lcom/android/server/location/LocationManagerService;->access$2200(Lcom/android/server/location/LocationManagerService;Lcom/android/server/location/LocationManagerService$Receiver;)V

    .line 1388
    invoke-virtual {p0}, Lcom/android/server/location/LocationManagerService$Receiver;->clearPendingBroadcastsLocked()V

    .line 1389
    monitor-exit v0

    .line 1390
    return-void

    .line 1389
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public callLocationChangedLocked(Landroid/location/Location;)Z
    .locals 10
    .param p1, "location"    # Landroid/location/Location;

    .line 1312
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1314
    :try_start_0
    new-instance v2, Landroid/location/Location;

    invoke-direct {v2, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-interface {v0, v2}, Landroid/location/ILocationListener;->onLocationChanged(Landroid/location/Location;)V

    .line 1317
    invoke-direct {p0}, Lcom/android/server/location/LocationManagerService$Receiver;->incrementPendingBroadcastsLocked()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1320
    goto :goto_0

    .line 1318
    :catch_0
    move-exception v0

    .line 1319
    .local v0, "e":Landroid/os/RemoteException;
    return v1

    .line 1322
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1323
    .local v0, "locationChanged":Landroid/content/Intent;
    new-instance v2, Landroid/location/Location;

    invoke-direct {v2, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    const-string/jumbo v3, "location"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1326
    :try_start_1
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v3, p0, Lcom/android/server/location/LocationManagerService$Receiver;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {v3}, Lcom/android/server/location/LocationManagerService;->access$100(Lcom/android/server/location/LocationManagerService;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/location/LocationManagerService$Receiver;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {v5}, Lcom/android/server/location/LocationManagerService;->access$2100(Lcom/android/server/location/LocationManagerService;)Landroid/os/Handler;

    move-result-object v7

    iget-object v5, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v5, v5, Lcom/android/server/location/CallerIdentity;->permissionLevel:I

    .line 1327
    invoke-static {v5}, Lcom/android/server/location/CallerIdentity;->asPermission(I)Ljava/lang/String;

    move-result-object v8

    const/4 v5, 0x0

    .line 1328
    invoke-static {v5}, Lcom/android/server/PendingIntentUtils;->createDontSendToRestrictedAppsBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v9

    .line 1326
    move-object v5, v0

    move-object v6, p0

    invoke-virtual/range {v2 .. v9}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1331
    invoke-direct {p0}, Lcom/android/server/location/LocationManagerService$Receiver;->incrementPendingBroadcastsLocked()V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1334
    nop

    .line 1336
    .end local v0    # "locationChanged":Landroid/content/Intent;
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1332
    .restart local v0    # "locationChanged":Landroid/content/Intent;
    :catch_1
    move-exception v2

    .line 1333
    .local v2, "e":Landroid/app/PendingIntent$CanceledException;
    return v1
.end method

.method public callRemovedLocked()V
    .locals 1

    .line 1375
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    if-eqz v0, :cond_0

    .line 1377
    :try_start_0
    invoke-interface {v0}, Landroid/location/ILocationListener;->onRemoved()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1380
    goto :goto_0

    .line 1378
    :catch_0
    move-exception v0

    .line 1382
    :cond_0
    :goto_0
    return-void
.end method

.method public clearPendingBroadcastsLocked()V
    .locals 3

    .line 1428
    iget v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mPendingBroadcasts:I

    if-lez v0, :cond_1

    .line 1429
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mPendingBroadcasts:I

    .line 1431
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1433
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1434
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1437
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1438
    goto :goto_0

    .line 1437
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1438
    throw v2

    .line 1440
    .end local v0    # "identity":J
    :cond_1
    :goto_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "otherObj"    # Ljava/lang/Object;

    .line 1185
    instance-of v0, p1, Lcom/android/server/location/LocationManagerService$Receiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lcom/android/server/location/LocationManagerService$Receiver;

    iget-object v1, v1, Lcom/android/server/location/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getListener()Landroid/location/ILocationListener;
    .locals 2

    .line 1305
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    if-eqz v0, :cond_0

    .line 1306
    return-object v0

    .line 1308
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Request for non-existent listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 1

    .line 1190
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isListener()Z
    .locals 1

    .line 1297
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPendingIntent()Z
    .locals 1

    .line 1301
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Ljava/lang/String;
    .param p5, "resultExtras"    # Landroid/os/Bundle;

    .line 1395
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$600(Lcom/android/server/location/LocationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1396
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/location/LocationManagerService$Receiver;->decrementPendingBroadcastsLocked()V

    .line 1397
    monitor-exit v0

    .line 1398
    return-void

    .line 1397
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1196
    .local v0, "s":Ljava/lang/StringBuilder;
    const-string v1, "Reciever["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1197
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1198
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    if-eqz v1, :cond_0

    .line 1199
    const-string v1, " listener"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1201
    :cond_0
    const-string v1, " intent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1203
    :goto_0
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1204
    .local v2, "p":Ljava/lang/String;
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/LocationManagerService$UpdateRecord;

    invoke-virtual {v3}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1205
    .end local v2    # "p":Ljava/lang/String;
    goto :goto_1

    .line 1206
    :cond_1
    const-string v1, " monitoring location: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mOpMonitoring:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1207
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1208
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateMonitoring(Z)V
    .locals 10
    .param p1, "allow"    # Z

    .line 1217
    iget-boolean v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mHideFromAppOps:Z

    if-eqz v0, :cond_0

    .line 1218
    return-void

    .line 1221
    :cond_0
    const/4 v0, 0x0

    .line 1222
    .local v0, "requestingLocation":Z
    const/4 v1, 0x0

    .line 1223
    .local v1, "requestingHighPowerLocation":Z
    if-eqz p1, :cond_4

    .line 1226
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/LocationManagerService$UpdateRecord;

    .line 1227
    .local v3, "updateRecord":Lcom/android/server/location/LocationManagerService$UpdateRecord;
    iget-object v4, p0, Lcom/android/server/location/LocationManagerService$Receiver;->this$0:Lcom/android/server/location/LocationManagerService;

    iget-object v5, v3, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/server/location/LocationManagerService;->access$1800(Lcom/android/server/location/LocationManagerService;Ljava/lang/String;)Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    move-result-object v4

    .line 1229
    .local v4, "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    if-nez v4, :cond_1

    .line 1230
    goto :goto_0

    .line 1232
    :cond_1
    iget-object v5, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v5, v5, Lcom/android/server/location/CallerIdentity;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->isEnabled(I)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/server/location/LocationManagerService$Receiver;->this$0:Lcom/android/server/location/LocationManagerService;

    .line 1233
    invoke-static {v5, v3}, Lcom/android/server/location/LocationManagerService;->access$1900(Lcom/android/server/location/LocationManagerService;Lcom/android/server/location/LocationManagerService$UpdateRecord;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1234
    goto :goto_0

    .line 1237
    :cond_2
    const/4 v0, 0x1

    .line 1238
    invoke-virtual {v4}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->getProperties()Lcom/android/internal/location/ProviderProperties;

    move-result-object v5

    .line 1239
    .local v5, "properties":Lcom/android/internal/location/ProviderProperties;
    if-eqz v5, :cond_3

    iget v6, v5, Lcom/android/internal/location/ProviderProperties;->mPowerRequirement:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_3

    iget-object v6, v3, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    .line 1241
    invoke-virtual {v6}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v6

    const-wide/32 v8, 0x493e0

    cmp-long v6, v6, v8

    if-gez v6, :cond_3

    .line 1242
    const/4 v1, 0x1

    .line 1243
    goto :goto_1

    .line 1245
    .end local v3    # "updateRecord":Lcom/android/server/location/LocationManagerService$UpdateRecord;
    .end local v4    # "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    .end local v5    # "properties":Lcom/android/internal/location/ProviderProperties;
    :cond_3
    goto :goto_0

    .line 1249
    :cond_4
    :goto_1
    iget-boolean v2, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mOpMonitoring:Z

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/location/LocationManagerService$Receiver;->updateMonitoring(ZZZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mOpMonitoring:Z

    .line 1255
    iget-boolean v2, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mOpHighPowerMonitoring:Z

    .line 1256
    .local v2, "wasHighPowerMonitoring":Z
    iget-boolean v3, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mOpHighPowerMonitoring:Z

    const/4 v4, 0x1

    invoke-direct {p0, v1, v3, v4}, Lcom/android/server/location/LocationManagerService$Receiver;->updateMonitoring(ZZZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mOpHighPowerMonitoring:Z

    .line 1260
    if-eq v3, v2, :cond_5

    .line 1261
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1264
    .local v3, "identity":J
    :try_start_0
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.location.HIGH_POWER_REQUEST_CHANGE"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1265
    .local v5, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/server/location/LocationManagerService$Receiver;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {v6}, Lcom/android/server/location/LocationManagerService;->access$100(Lcom/android/server/location/LocationManagerService;)Landroid/content/Context;

    move-result-object v6

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v5, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1267
    .end local v5    # "intent":Landroid/content/Intent;
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1268
    goto :goto_2

    .line 1267
    :catchall_0
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1268
    throw v5

    .line 1270
    .end local v3    # "identity":J
    :cond_5
    :goto_2
    return-void
.end method
