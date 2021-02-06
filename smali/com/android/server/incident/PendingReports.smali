.class Lcom/android/server/incident/PendingReports;
.super Ljava/lang/Object;
.source "PendingReports.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/incident/PendingReports$PendingReportRec;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "IncidentCompanionService"


# instance fields
.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mNextPendingId:I

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPending:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/incident/PendingReports$PendingReportRec;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestQueue:Lcom/android/server/incident/RequestQueue;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/incident/PendingReports;->mHandler:Landroid/os/Handler;

    .line 52
    new-instance v1, Lcom/android/server/incident/RequestQueue;

    invoke-direct {v1, v0}, Lcom/android/server/incident/RequestQueue;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/incident/PendingReports;->mRequestQueue:Lcom/android/server/incident/RequestQueue;

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/incident/PendingReports;->mLock:Ljava/lang/Object;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/incident/PendingReports;->mPending:Ljava/util/ArrayList;

    .line 66
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/incident/PendingReports;->mNextPendingId:I

    .line 124
    iput-object p1, p0, Lcom/android/server/incident/PendingReports;->mContext:Landroid/content/Context;

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/incident/PendingReports;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 126
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/incident/PendingReports;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 127
    return-void
.end method

.method static synthetic access$008(Lcom/android/server/incident/PendingReports;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/incident/PendingReports;

    .line 48
    iget v0, p0, Lcom/android/server/incident/PendingReports;->mNextPendingId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/incident/PendingReports;->mNextPendingId:I

    return v0
.end method

.method private authorizeReportImpl(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/IIncidentAuthListener;)V
    .locals 16
    .param p1, "callingUid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "receiverClass"    # Ljava/lang/String;
    .param p4, "reportId"    # Ljava/lang/String;
    .param p5, "flags"    # I
    .param p6, "listener"    # Landroid/os/IIncidentAuthListener;

    .line 268
    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p6

    if-eqz v9, :cond_0

    invoke-direct/range {p0 .. p2}, Lcom/android/server/incident/PendingReports;->isPackageInUid(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " doesn\'t match package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IncidentCompanionService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-direct {v8, v11, v10}, Lcom/android/server/incident/PendingReports;->denyReportBeforeAddingRec(Landroid/os/IIncidentAuthListener;Ljava/lang/String;)V

    .line 272
    return-void

    .line 276
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/incident/PendingReports;->getAndValidateUser()I

    move-result v12

    .line 277
    .local v12, "primaryUser":I
    const/16 v0, -0x2710

    if-ne v12, v0, :cond_1

    .line 278
    invoke-direct {v8, v11, v10}, Lcom/android/server/incident/PendingReports;->denyReportBeforeAddingRec(Landroid/os/IIncidentAuthListener;Ljava/lang/String;)V

    .line 279
    return-void

    .line 283
    :cond_1
    invoke-direct {v8, v12}, Lcom/android/server/incident/PendingReports;->getApproverComponent(I)Landroid/content/ComponentName;

    move-result-object v13

    .line 284
    .local v13, "receiver":Landroid/content/ComponentName;
    if-nez v13, :cond_2

    .line 287
    invoke-direct {v8, v11, v10}, Lcom/android/server/incident/PendingReports;->denyReportBeforeAddingRec(Landroid/os/IIncidentAuthListener;Ljava/lang/String;)V

    .line 288
    return-void

    .line 292
    :cond_2
    const/4 v14, 0x0

    .line 293
    .local v14, "rec":Lcom/android/server/incident/PendingReports$PendingReportRec;
    iget-object v15, v8, Lcom/android/server/incident/PendingReports;->mLock:Ljava/lang/Object;

    monitor-enter v15

    .line 294
    :try_start_0
    new-instance v0, Lcom/android/server/incident/PendingReports$PendingReportRec;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/server/incident/PendingReports$PendingReportRec;-><init>(Lcom/android/server/incident/PendingReports;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/IIncidentAuthListener;)V

    move-object v14, v0

    .line 295
    iget-object v0, v8, Lcom/android/server/incident/PendingReports;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    :try_start_1
    invoke-interface/range {p6 .. p6}, Landroid/os/IIncidentAuthListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Lcom/android/server/incident/-$$Lambda$PendingReports$B2hwzQpyMfhPG0Cw6n_Xz1SrHR0;

    invoke-direct {v1, v8, v11, v13, v12}, Lcom/android/server/incident/-$$Lambda$PendingReports$B2hwzQpyMfhPG0Cw6n_Xz1SrHR0;-><init>(Lcom/android/server/incident/PendingReports;Landroid/os/IIncidentAuthListener;Landroid/content/ComponentName;I)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 307
    goto :goto_0

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote died while trying to register death listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lcom/android/server/incident/PendingReports$PendingReportRec;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IncidentCompanionService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-direct {v8, v11, v13, v12}, Lcom/android/server/incident/PendingReports;->cancelReportImpl(Landroid/os/IIncidentAuthListener;Landroid/content/ComponentName;I)V

    .line 310
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    invoke-direct {v8, v13, v12}, Lcom/android/server/incident/PendingReports;->sendBroadcast(Landroid/content/ComponentName;I)V

    .line 311
    return-void

    .line 296
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private cancelReportImpl(Landroid/os/IIncidentAuthListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/os/IIncidentAuthListener;

    .line 317
    invoke-direct {p0}, Lcom/android/server/incident/PendingReports;->getAndValidateUser()I

    move-result v0

    .line 318
    .local v0, "primaryUser":I
    invoke-direct {p0, v0}, Lcom/android/server/incident/PendingReports;->getApproverComponent(I)Landroid/content/ComponentName;

    move-result-object v1

    .line 319
    .local v1, "receiver":Landroid/content/ComponentName;
    const/16 v2, -0x2710

    if-eq v0, v2, :cond_0

    if-eqz v1, :cond_0

    .line 320
    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/incident/PendingReports;->cancelReportImpl(Landroid/os/IIncidentAuthListener;Landroid/content/ComponentName;I)V

    .line 322
    :cond_0
    return-void
.end method

.method private cancelReportImpl(Landroid/os/IIncidentAuthListener;Landroid/content/ComponentName;I)V
    .locals 2
    .param p1, "listener"    # Landroid/os/IIncidentAuthListener;
    .param p2, "receiver"    # Landroid/content/ComponentName;
    .param p3, "primaryUser"    # I

    .line 331
    iget-object v0, p0, Lcom/android/server/incident/PendingReports;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 332
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/incident/PendingReports;->removePendingReportRecLocked(Landroid/os/IIncidentAuthListener;)V

    .line 333
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    invoke-direct {p0, p2, p3}, Lcom/android/server/incident/PendingReports;->sendBroadcast(Landroid/content/ComponentName;I)V

    .line 336
    return-void

    .line 333
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private denyReportBeforeAddingRec(Landroid/os/IIncidentAuthListener;Ljava/lang/String;)V
    .locals 3
    .param p1, "listener"    # Landroid/os/IIncidentAuthListener;
    .param p2, "pkg"    # Ljava/lang/String;

    .line 416
    :try_start_0
    invoke-interface {p1}, Landroid/os/IIncidentAuthListener;->onReportDenied()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    goto :goto_0

    .line 417
    :catch_0
    move-exception v0

    .line 418
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed calling back for denial for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IncidentCompanionService"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 420
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private findAndRemovePendingReportRecLocked(Ljava/lang/String;)Lcom/android/server/incident/PendingReports$PendingReportRec;
    .locals 6
    .param p1, "uriString"    # Ljava/lang/String;

    .line 376
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 379
    .local v0, "uri":Landroid/net/Uri;
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "id"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 380
    .local v2, "idStr":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 384
    .local v2, "id":I
    nop

    .line 386
    iget-object v3, p0, Lcom/android/server/incident/PendingReports;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/incident/PendingReports$PendingReportRec;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 387
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/incident/PendingReports$PendingReportRec;

    .line 388
    .local v4, "rec":Lcom/android/server/incident/PendingReports$PendingReportRec;
    iget v5, v4, Lcom/android/server/incident/PendingReports$PendingReportRec;->id:I

    if-ne v5, v2, :cond_0

    .line 389
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 390
    return-object v4

    .line 392
    .end local v4    # "rec":Lcom/android/server/incident/PendingReports$PendingReportRec;
    :cond_0
    goto :goto_0

    .line 393
    .end local v3    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/incident/PendingReports$PendingReportRec;>;"
    :cond_1
    return-object v1

    .line 381
    .end local v2    # "id":I
    :catch_0
    move-exception v2

    .line 382
    .local v2, "ex":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t parse id from: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "IncidentCompanionService"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    return-object v1
.end method

.method private getAndValidateUser()I
    .locals 1

    .line 427
    iget-object v0, p0, Lcom/android/server/incident/PendingReports;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/incident/IncidentCompanionService;->getAndValidateUser(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method private getApproverComponent(I)Landroid/content/ComponentName;
    .locals 4
    .param p1, "userId"    # I

    .line 438
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PENDING_INCIDENT_REPORTS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 439
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/incident/PendingReports;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v2, 0x1c0000

    invoke-virtual {v1, v0, v2, p1}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    .line 442
    .local v1, "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 443
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v2}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    return-object v2

    .line 445
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Didn\'t find exactly one BroadcastReceiver to handle android.intent.action.PENDING_INCIDENT_REPORTS_CHANGED. The report will be denied. size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": matches="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 445
    const-string v3, "IncidentCompanionService"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    const/4 v2, 0x0

    return-object v2
.end method

.method private isPackageInUid(ILjava/lang/String;)Z
    .locals 2
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 458
    :try_start_0
    iget-object v0, p0, Lcom/android/server/incident/PendingReports;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    const/4 v0, 0x1

    return v0

    .line 460
    :catch_0
    move-exception v0

    .line 461
    .local v0, "ex":Ljava/lang/SecurityException;
    const/4 v1, 0x0

    return v1
.end method

.method private removePendingReportRecLocked(Landroid/os/IIncidentAuthListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/os/IIncidentAuthListener;

    .line 401
    iget-object v0, p0, Lcom/android/server/incident/PendingReports;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/incident/PendingReports$PendingReportRec;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 402
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/incident/PendingReports$PendingReportRec;

    .line 403
    .local v1, "rec":Lcom/android/server/incident/PendingReports$PendingReportRec;
    iget-object v2, v1, Lcom/android/server/incident/PendingReports$PendingReportRec;->listener:Landroid/os/IIncidentAuthListener;

    invoke-interface {v2}, Landroid/os/IIncidentAuthListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Landroid/os/IIncidentAuthListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 404
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  ...Removed PendingReportRec index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/incident/PendingReports$PendingReportRec;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IncidentCompanionService"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 407
    .end local v1    # "rec":Lcom/android/server/incident/PendingReports$PendingReportRec;
    :cond_0
    goto :goto_0

    .line 408
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/incident/PendingReports$PendingReportRec;>;"
    :cond_1
    return-void
.end method

.method private sendBroadcast()V
    .locals 2

    .line 345
    invoke-direct {p0}, Lcom/android/server/incident/PendingReports;->getAndValidateUser()I

    move-result v0

    .line 346
    .local v0, "primaryUser":I
    const/16 v1, -0x2710

    if-ne v0, v1, :cond_0

    .line 347
    return-void

    .line 349
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/incident/PendingReports;->getApproverComponent(I)Landroid/content/ComponentName;

    move-result-object v1

    .line 350
    .local v1, "receiver":Landroid/content/ComponentName;
    if-nez v1, :cond_1

    .line 351
    return-void

    .line 353
    :cond_1
    invoke-direct {p0, v1, v0}, Lcom/android/server/incident/PendingReports;->sendBroadcast(Landroid/content/ComponentName;I)V

    .line 354
    return-void
.end method

.method private sendBroadcast(Landroid/content/ComponentName;I)V
    .locals 6
    .param p1, "receiver"    # Landroid/content/ComponentName;
    .param p2, "primaryUser"    # I

    .line 360
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PENDING_INCIDENT_REPORTS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 361
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 362
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 363
    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 364
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v1

    .line 365
    .local v1, "options":Landroid/app/BroadcastOptions;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/BroadcastOptions;->setBackgroundActivityStartsAllowed(Z)V

    .line 368
    iget-object v2, p0, Lcom/android/server/incident/PendingReports;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 369
    invoke-virtual {v1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    .line 368
    const-string v5, "android.permission.APPROVE_INCIDENT_REPORTS"

    invoke-virtual {v2, v0, v3, v5, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 370
    return-void
.end method


# virtual methods
.method public approveReport(Ljava/lang/String;)V
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;

    .line 187
    iget-object v0, p0, Lcom/android/server/incident/PendingReports;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 188
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/incident/PendingReports;->findAndRemovePendingReportRecLocked(Ljava/lang/String;)Lcom/android/server/incident/PendingReports$PendingReportRec;

    move-result-object v1

    .line 189
    .local v1, "rec":Lcom/android/server/incident/PendingReports$PendingReportRec;
    if-nez v1, :cond_0

    .line 190
    const-string v2, "IncidentCompanionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "confirmApproved: Couldn\'t find record for uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    monitor-exit v0

    return-void

    .line 193
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    invoke-direct {p0}, Lcom/android/server/incident/PendingReports;->sendBroadcast()V

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Approved report: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "IncidentCompanionService"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :try_start_1
    iget-object v0, v1, Lcom/android/server/incident/PendingReports$PendingReportRec;->listener:Landroid/os/IIncidentAuthListener;

    invoke-interface {v0}, Landroid/os/IIncidentAuthListener;->onReportApproved()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 204
    goto :goto_0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed calling back for approval for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IncidentCompanionService"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 205
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 193
    .end local v1    # "rec":Lcom/android/server/incident/PendingReports$PendingReportRec;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public authorizeReport(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/IIncidentAuthListener;)V
    .locals 12
    .param p1, "callingUid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "receiverClass"    # Ljava/lang/String;
    .param p4, "reportId"    # Ljava/lang/String;
    .param p5, "flags"    # I
    .param p6, "listener"    # Landroid/os/IIncidentAuthListener;

    .line 141
    move-object v8, p0

    iget-object v9, v8, Lcom/android/server/incident/PendingReports;->mRequestQueue:Lcom/android/server/incident/RequestQueue;

    invoke-interface/range {p6 .. p6}, Landroid/os/IIncidentAuthListener;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    new-instance v11, Lcom/android/server/incident/-$$Lambda$PendingReports$42Ba6ZxAFxFmqtPlfnXNpuKHOXM;

    move-object v0, v11

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/incident/-$$Lambda$PendingReports$42Ba6ZxAFxFmqtPlfnXNpuKHOXM;-><init>(Lcom/android/server/incident/PendingReports;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/IIncidentAuthListener;)V

    const/4 v0, 0x1

    invoke-virtual {v9, v10, v0, v11}, Lcom/android/server/incident/RequestQueue;->enqueue(Landroid/os/IBinder;ZLjava/lang/Runnable;)V

    .line 145
    return-void
.end method

.method public cancelAuthorization(Landroid/os/IIncidentAuthListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/os/IIncidentAuthListener;

    .line 158
    iget-object v0, p0, Lcom/android/server/incident/PendingReports;->mRequestQueue:Lcom/android/server/incident/RequestQueue;

    invoke-interface {p1}, Landroid/os/IIncidentAuthListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/android/server/incident/-$$Lambda$PendingReports$h00dGfNWXgDmC4-YyxYy1CUoKw4;

    invoke-direct {v2, p0, p1}, Lcom/android/server/incident/-$$Lambda$PendingReports$h00dGfNWXgDmC4-YyxYy1CUoKw4;-><init>(Lcom/android/server/incident/PendingReports;Landroid/os/IIncidentAuthListener;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/incident/RequestQueue;->enqueue(Landroid/os/IBinder;ZLjava/lang/Runnable;)V

    .line 161
    return-void
.end method

.method public denyReport(Ljava/lang/String;)V
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;

    .line 212
    iget-object v0, p0, Lcom/android/server/incident/PendingReports;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 213
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/incident/PendingReports;->findAndRemovePendingReportRecLocked(Ljava/lang/String;)Lcom/android/server/incident/PendingReports$PendingReportRec;

    move-result-object v1

    .line 214
    .local v1, "rec":Lcom/android/server/incident/PendingReports$PendingReportRec;
    if-nez v1, :cond_0

    .line 215
    const-string v2, "IncidentCompanionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "confirmDenied: Couldn\'t find record for uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    monitor-exit v0

    return-void

    .line 218
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    invoke-direct {p0}, Lcom/android/server/incident/PendingReports;->sendBroadcast()V

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Denied report: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "IncidentCompanionService"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :try_start_1
    iget-object v0, v1, Lcom/android/server/incident/PendingReports$PendingReportRec;->listener:Landroid/os/IIncidentAuthListener;

    invoke-interface {v0}, Landroid/os/IIncidentAuthListener;->onReportDenied()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 229
    goto :goto_0

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed calling back for denial for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IncidentCompanionService"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 230
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 218
    .end local v1    # "rec":Lcom/android/server/incident/PendingReports$PendingReportRec;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 236
    array-length v0, p3

    if-nez v0, :cond_1

    .line 238
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 239
    .local v0, "df":Ljava/text/SimpleDateFormat;
    iget-object v1, p0, Lcom/android/server/incident/PendingReports;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 240
    :try_start_0
    iget-object v2, p0, Lcom/android/server/incident/PendingReports;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 241
    .local v2, "size":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mPending: ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 242
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 243
    iget-object v4, p0, Lcom/android/server/incident/PendingReports;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/incident/PendingReports$PendingReportRec;

    .line 244
    .local v4, "entry":Lcom/android/server/incident/PendingReports$PendingReportRec;
    const-string v5, "  %11d %s: %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-wide v8, v4, Lcom/android/server/incident/PendingReports$PendingReportRec;->addedRealtime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    new-instance v7, Ljava/util/Date;

    iget-wide v8, v4, Lcom/android/server/incident/PendingReports$PendingReportRec;->addedWalltime:J

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 245
    invoke-virtual {v0, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const/4 v7, 0x2

    .line 246
    invoke-virtual {v4}, Lcom/android/server/incident/PendingReports$PendingReportRec;->getUri()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 244
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 242
    .end local v4    # "entry":Lcom/android/server/incident/PendingReports$PendingReportRec;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 248
    .end local v2    # "size":I
    .end local v3    # "i":I
    :cond_0
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 250
    .end local v0    # "df":Ljava/text/SimpleDateFormat;
    :cond_1
    :goto_1
    return-void
.end method

.method public getPendingReports()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/android/server/incident/PendingReports;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 171
    :try_start_0
    iget-object v1, p0, Lcom/android/server/incident/PendingReports;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 172
    .local v1, "size":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 173
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 174
    iget-object v4, p0, Lcom/android/server/incident/PendingReports;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/incident/PendingReports$PendingReportRec;

    invoke-virtual {v4}, Lcom/android/server/incident/PendingReports$PendingReportRec;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 176
    .end local v3    # "i":I
    :cond_0
    monitor-exit v0

    return-object v2

    .line 177
    .end local v1    # "size":I
    .end local v2    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$authorizeReport$0$PendingReports(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/IIncidentAuthListener;)V
    .locals 0
    .param p1, "callingUid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "receiverClass"    # Ljava/lang/String;
    .param p4, "reportId"    # Ljava/lang/String;
    .param p5, "flags"    # I
    .param p6, "listener"    # Landroid/os/IIncidentAuthListener;

    .line 142
    invoke-direct/range {p0 .. p6}, Lcom/android/server/incident/PendingReports;->authorizeReportImpl(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/IIncidentAuthListener;)V

    .line 144
    return-void
.end method

.method public synthetic lambda$authorizeReportImpl$2$PendingReports(Landroid/os/IIncidentAuthListener;Landroid/content/ComponentName;I)V
    .locals 2
    .param p1, "listener"    # Landroid/os/IIncidentAuthListener;
    .param p2, "receiver"    # Landroid/content/ComponentName;
    .param p3, "primaryUser"    # I

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got death notification listener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IncidentCompanionService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/incident/PendingReports;->cancelReportImpl(Landroid/os/IIncidentAuthListener;Landroid/content/ComponentName;I)V

    .line 302
    return-void
.end method

.method public synthetic lambda$cancelAuthorization$1$PendingReports(Landroid/os/IIncidentAuthListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/os/IIncidentAuthListener;

    .line 159
    invoke-direct {p0, p1}, Lcom/android/server/incident/PendingReports;->cancelReportImpl(Landroid/os/IIncidentAuthListener;)V

    .line 160
    return-void
.end method

.method public onBootCompleted()V
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/android/server/incident/PendingReports;->mRequestQueue:Lcom/android/server/incident/RequestQueue;

    invoke-virtual {v0}, Lcom/android/server/incident/RequestQueue;->start()V

    .line 259
    return-void
.end method
