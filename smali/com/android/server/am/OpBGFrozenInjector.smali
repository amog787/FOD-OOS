.class public Lcom/android/server/am/OpBGFrozenInjector;
.super Ljava/lang/Object;
.source "OpBGFrozenInjector.java"


# static fields
.field public static final ATTACH_APPLICATION_LOCKED_TIMEOUT:I = 0x2580

.field public static final BIND_SERVICE_LOCKED_TIMEOUT:I = 0x251c

.field private static final DEBUG_ONEPLUS:Z

.field public static final DISPATCH_APP_VISIBILITY_TIMEOUT:I = 0x2454

.field public static final DISPATCH_RESIZED_TIMEOUT:I = 0x24b8

.field public static final DISPLAY_EVENT_LOCAL_TIMEOUT:I = 0x2422

.field public static final DISPLAY_EVENT_TIMEOUT:I = 0x23f0

.field public static final GET_CONFIGFORSUBID_TIMEOUT:I = 0x2648

.field public static final GET_GETVTDATAUSAGE_TIMEOUT:I = 0x26ac

.field public static final INPUT_DEVICES_CHANGE_TIMEOUT:I = 0x238c

.field public static final NOTIFY_CHANGE_TIMEOUT:I = 0x25e4

.field public static final PUBLISH_SERVICE_TIMEOUT:I = 0x2328

.field private static final TAG:Ljava/lang/String; = "OpBGFrozenInjector"

.field public static final UNDATE_SYSTEMUI_VISIBILITY_TIMEOUT:I = 0x2710

.field private static opBGFrozen:Lcom/android/server/am/IOpBGFrozen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/am/OpBGFrozenInjector;->DEBUG_ONEPLUS:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDisplayCallback(IILandroid/hardware/display/IDisplayManagerCallback;)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "pid"    # I
    .param p2, "callback"    # Landroid/hardware/display/IDisplayManagerCallback;

    .line 295
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    .line 296
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    .line 298
    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    .line 299
    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/am/IOpBGFrozen;->addDisplayCallback(IILandroid/hardware/display/IDisplayManagerCallback;)V

    .line 301
    :cond_1
    return-void
.end method

.method public static addProc(IILcom/android/server/am/ProcessRecord;)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "pid"    # I
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 94
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    .line 95
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    .line 97
    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    .line 98
    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/am/IOpBGFrozen;->addProc(IILcom/android/server/am/ProcessRecord;)V

    .line 100
    :cond_1
    return-void
.end method

.method public static bindServiceLockedEvent(Lcom/android/server/am/ProcessRecord;Landroid/content/Intent;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;)V
    .locals 1
    .param p0, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 465
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    .line 466
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    .line 468
    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    .line 469
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/server/am/IOpBGFrozen;->bindServiceLockedEvent(Lcom/android/server/am/ProcessRecord;Landroid/content/Intent;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;)V

    .line 471
    :cond_1
    return-void
.end method

.method public static broadcastTimeoutEvent(IILandroid/content/Intent;)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "pid"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .line 275
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    .line 276
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    .line 278
    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    .line 279
    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/am/IOpBGFrozen;->broadcastTimeoutEvent(IILandroid/content/Intent;)V

    .line 281
    :cond_1
    return-void
.end method

.method public static bumpServiceEvent(IIZLjava/lang/String;)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "pid"    # I
    .param p2, "done"    # Z
    .param p3, "reason"    # Ljava/lang/String;

    .line 215
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    .line 216
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    .line 218
    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    .line 219
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/server/am/IOpBGFrozen;->bumpServiceEvent(IIZLjava/lang/String;)V

    .line 221
    :cond_1
    return-void
.end method

.method public static checkAppInLaunchingProviders(Lcom/android/server/am/ProcessRecord;)V
    .locals 1
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 371
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    .line 372
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    .line 374
    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    .line 375
    invoke-interface {v0, p0}, Lcom/android/server/am/IOpBGFrozen;->checkAppInLaunchingProviders(Lcom/android/server/am/ProcessRecord;)V

    .line 377
    :cond_1
    return-void
.end method

.method public static checkBroadcastIsPackageCanStart(Lcom/android/server/am/BroadcastQueue;Landroid/content/pm/ResolveInfo;Lcom/android/server/am/BroadcastRecord;)Z
    .locals 1
    .param p0, "queue"    # Lcom/android/server/am/BroadcastQueue;
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;

    .line 264
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    .line 265
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    .line 267
    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    .line 268
    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/am/IOpBGFrozen;->checkBroadcastIsPackageCanStart(Lcom/android/server/am/BroadcastQueue;Landroid/content/pm/ResolveInfo;Lcom/android/server/am/BroadcastRecord;)Z

    move-result v0

    return v0

    .line 270
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static checkProcessCanRestart(Lcom/android/server/am/ProcessRecord;)Z
    .locals 1
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 360
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    .line 361
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    .line 363
    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    .line 364
    invoke-interface {v0, p0}, Lcom/android/server/am/IOpBGFrozen;->checkProcessCanRestart(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    return v0

    .line 366
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static checkTimeoutBegin(III)V
    .locals 1
    .param p0, "key"    # I
    .param p1, "timeoutUid"    # I
    .param p2, "timeoutPid"    # I

    .line 206
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    .line 207
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    .line 209
    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    .line 210
    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/am/IOpBGFrozen;->checkTimeoutBegin(III)V

    .line 212
    :cond_1
    return-void
.end method

.method public static checkTimeoutEnd(I)V
    .locals 1
    .param p0, "key"    # I

    .line 333
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    .line 334
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    .line 336
    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    .line 337
    invoke-interface {v0, p0}, Lcom/android/server/am/IOpBGFrozen;->checkTimeoutEnd(I)V

    .line 339
    :cond_1
    return-void
.end method

.method public static clearImportantUids()V
    .locals 1

    .line 150
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    .line 151
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    .line 153
    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    .line 154
    invoke-interface {v0}, Lcom/android/server/am/IOpBGFrozen;->clearImportantUids()V

    .line 156
    :cond_1
    return-void
.end method

.method public static clientConnectionRemoveEvent(II)V
    .locals 1
    .param p0, "providerUid"    # I
    .param p1, "clientUid"    # I

    .line 224
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    .line 225
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    .line 227
    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    .line 228
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpBGFrozen;->clientConnectionRemoveEvent(II)V

    .line 230
    :cond_1
    return-void
.end method

.method public static contentNotifyResumeEvent(IZ)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "start"    # Z

    .line 380
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    .line 381
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    .line 383
    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    .line 384
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpBGFrozen;->contentNotifyResumeEvent(IZ)V

    .line 386
    :cond_1
    return-void
.end method

.method public static getEnable()Z
    .locals 1

    .line 284
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    .line 285
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    .line 287
    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    .line 288
    invoke-interface {v0}, Lcom/android/server/am/IOpBGFrozen;->getEnable()Z

    move-result v0

    return v0

    .line 290
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static getJobTimeout()J
    .locals 2

    .line 454
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    .line 455
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    .line 457
    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    .line 458
    invoke-interface {v0}, Lcom/android/server/am/IOpBGFrozen;->getJobTimeout()J

    move-result-wide v0

    return-wide v0

    .line 460
    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static importantProviderChangeEvent(IZLcom/android/server/am/ProcessRecord;)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "inc"    # Z
    .param p2, "client"    # Lcom/android/server/am/ProcessRecord;

    .line 407
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    .line 408
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    .line 410
    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    .line 411
    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/am/IOpBGFrozen;->importantProviderChangeEvent(IZLcom/android/server/am/ProcessRecord;)V

    .line 413
    :cond_1
    return-void
.end method

.method public static initFromLMS(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$LocationManagerServiceInner;)V
    .locals 1
    .param p0, "lms"    # Lcom/android/server/LocationManagerService;
    .param p1, "inner"    # Lcom/android/server/LocationManagerService$LocationManagerServiceInner;

    .line 65
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    .line 66
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    .line 68
    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    .line 69
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpBGFrozen;->initFromLMS(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$LocationManagerServiceInner;)V

    .line 71
    :cond_1
    return-void
.end method

.method public static initInstance(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/pm/IPackageManager;)V
    .locals 1
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "atms"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "pm"    # Landroid/content/pm/IPackageManager;

    .line 56
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    .line 57
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    .line 59
    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    .line 60
    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/am/IOpBGFrozen;->initInstance(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/pm/IPackageManager;)V

    .line 62
    :cond_1
    return-void
.end method

.method public static isBlockedGpsUid(I)Z
    .locals 1
    .param p0, "uid"    # I

    .line 74
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    .line 75
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    .line 77
    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    .line 78
    invoke-interface {v0, p0}, Lcom/android/server/am/IOpBGFrozen;->isBlockedGpsUid(I)Z

    move-result v0

    return v0

    .line 80
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static isDeliverDisplayChange(I)Z
    .locals 1
    .param p0, "uid"    # I

    .line 322
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    .line 323
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    .line 325
    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    .line 326
    invoke-interface {v0, p0}, Lcom/android/server/am/IOpBGFrozen;->isDeliverDisplayChange(I)Z

    move-result v0

    return v0

    .line 328
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static isJobRestrict(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 1
    .param p0, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 425
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    .line 426
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    .line 428
    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    .line 429
    invoke-interface {v0, p0}, Lcom/android/server/am/IOpBGFrozen;->isJobRestrict(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    return v0

    .line 431
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static isResStopServiceForIdle(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "uid"    # I
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "compName"    # Ljava/lang/String;

    .line 474
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    .line 475
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    .line 477
    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    .line 478
    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/am/IOpBGFrozen;->isResStopServiceForIdle(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 480
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static isUidFrozen(I)Z
    .locals 1
    .param p0, "uid"    # I

    .line 186
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    .line 187
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    .line 189
    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    .line 190
    invoke-interface {v0, p0}, Lcom/android/server/am/IOpBGFrozen;->isUidFrozen(I)Z

    move-result v0

    return v0

    .line 192
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static isUidImperceptible(I)Z
    .locals 1
    .param p0, "uid"    # I

    .line 196
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    .line 197
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    .line 199
    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    .line 200
    invoke-interface {v0, p0}, Lcom/android/server/am/IOpBGFrozen;->isUidImperceptible(I)Z

    move-result v0

    return v0

    .line 202
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static mediaProjectionEvent(IZ)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "start"    # Z

    .line 389
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    .line 390
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    .line 392
    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    .line 393
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpBGFrozen;->mediaProjectionEvent(IZ)V

    .line 395
    :cond_1
    return-void
.end method

.method public static permRequestDecEvent(I)V
    .locals 1
    .param p0, "uid"    # I

    .line 342
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    .line 343
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    .line 345
    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    .line 346
    invoke-interface {v0, p0}, Lcom/android/server/am/IOpBGFrozen;->permRequestDecEvent(I)V

    .line 348
    :cond_1
    return-void
.end method

.method public static receiveBroadcastEvent(IIZZLandroid/content/Intent;)V
    .locals 7
    .param p0, "uid"    # I
    .param p1, "pid"    # I
    .param p2, "finish"    # Z
    .param p3, "hasTimeout"    # Z
    .param p4, "intent"    # Landroid/content/Intent;

    .line 123
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    .line 124
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    .line 126
    :cond_0
    sget-object v1, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v1, :cond_1

    .line 127
    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/android/server/am/IOpBGFrozen;->receiveBroadcastEvent(IIZZLandroid/content/Intent;)V

    .line 129
    :cond_1
    return-void
.end method

.method public static removeDisplayCallback(II)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "pid"    # I

    .line 304
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    .line 305
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    .line 307
    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    .line 308
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpBGFrozen;->removeDisplayCallback(II)V

    .line 310
    :cond_1
    return-void
.end method

.method public static removeProc(II)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "pid"    # I

    .line 103
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    .line 104
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    .line 106
    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    .line 107
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpBGFrozen;->removeProc(II)V

    .line 109
    :cond_1
    return-void
.end method

.method public static reportRestrictJob(Lcom/android/server/job/controllers/JobStatus;J)V
    .locals 1
    .param p0, "job"    # Lcom/android/server/job/controllers/JobStatus;
    .param p1, "duration"    # J

    .line 416
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    .line 417
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    .line 419
    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    .line 420
    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/am/IOpBGFrozen;->reportRestrictJob(Lcom/android/server/job/controllers/JobStatus;J)V

    .line 422
    :cond_1
    return-void
.end method

.method public static screenStateChangedEvent(Z)V
    .locals 1
    .param p0, "done"    # Z

    .line 351
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    .line 352
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    .line 354
    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    .line 355
    invoke-interface {v0, p0}, Lcom/android/server/am/IOpBGFrozen;->screenStateChangedEvent(Z)V

    .line 357
    :cond_1
    return-void
.end method

.method public static serviceTimeoutEvent(IILjava/lang/String;)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "pid"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 233
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    .line 234
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    .line 236
    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    .line 237
    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/am/IOpBGFrozen;->serviceTimeoutEvent(IILjava/lang/String;)V

    .line 239
    :cond_1
    return-void
.end method

.method public static shellCommand(Ljava/lang/String;I[Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 1
    .param p0, "cmd"    # Ljava/lang/String;
    .param p1, "opti"    # I
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "pw"    # Ljava/io/PrintWriter;

    .line 112
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    .line 113
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    .line 115
    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    .line 116
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/server/am/IOpBGFrozen;->shellCommand(Ljava/lang/String;I[Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    return v0

    .line 118
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static skipBroadcastLocked(Lcom/android/server/am/BroadcastFilter;Lcom/android/server/am/BroadcastRecord;Z)Z
    .locals 1
    .param p0, "filter"    # Lcom/android/server/am/BroadcastFilter;
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "ordered"    # Z

    .line 253
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    .line 254
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    .line 256
    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    .line 257
    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/am/IOpBGFrozen;->skipBroadcastLocked(Lcom/android/server/am/BroadcastFilter;Lcom/android/server/am/BroadcastRecord;Z)Z

    move-result v0

    return v0

    .line 259
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static skipBroadcastLocked(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)Z
    .locals 1
    .param p0, "queue"    # Lcom/android/server/am/BroadcastQueue;
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;

    .line 242
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    .line 243
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    .line 245
    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    .line 246
    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/am/IOpBGFrozen;->skipBroadcastLocked(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)Z

    move-result v0

    return v0

    .line 248
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static startMonitoring(Lcom/android/server/job/JobServiceContext;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 1
    .param p0, "jsc"    # Lcom/android/server/job/JobServiceContext;
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 436
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    .line 437
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    .line 439
    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    .line 440
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpBGFrozen;->startMonitoring(Lcom/android/server/job/JobServiceContext;Lcom/android/server/job/controllers/JobStatus;)V

    .line 442
    :cond_1
    return-void
.end method

.method public static startProcessEvent(Lcom/android/server/am/ProcessRecord;I)V
    .locals 1
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p1, "childPid"    # I

    .line 168
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    .line 169
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    .line 171
    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    .line 172
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpBGFrozen;->startProcessEvent(Lcom/android/server/am/ProcessRecord;I)V

    .line 174
    :cond_1
    return-void
.end method

.method public static stopMonitoring(Lcom/android/server/job/JobServiceContext;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 1
    .param p0, "jsc"    # Lcom/android/server/job/JobServiceContext;
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 445
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    .line 446
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    .line 448
    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    .line 449
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpBGFrozen;->stopMonitoring(Lcom/android/server/job/JobServiceContext;Lcom/android/server/job/controllers/JobStatus;)V

    .line 451
    :cond_1
    return-void
.end method

.method public static triggerResume(ILjava/lang/String;)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "reason"    # Ljava/lang/String;

    .line 177
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    .line 178
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    .line 180
    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    .line 181
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpBGFrozen;->triggerResume(ILjava/lang/String;)V

    .line 183
    :cond_1
    return-void
.end method

.method public static updateDisplayEvent(II)V
    .locals 1
    .param p0, "displayId"    # I
    .param p1, "displayEvent"    # I

    .line 313
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    .line 314
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    .line 316
    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    .line 317
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpBGFrozen;->updateDisplayEvent(II)V

    .line 319
    :cond_1
    return-void
.end method

.method public static updateImportantUids(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;)V
    .locals 1
    .param p0, "cr"    # Lcom/android/server/am/ConnectionRecord;
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 132
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    .line 133
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    .line 135
    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    .line 136
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpBGFrozen;->updateImportantUids(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;)V

    .line 138
    :cond_1
    return-void
.end method

.method public static updateImportantUids(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)V
    .locals 1
    .param p0, "client"    # Lcom/android/server/am/ProcessRecord;
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 141
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    .line 142
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    .line 144
    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    .line 145
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpBGFrozen;->updateImportantUids(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)V

    .line 147
    :cond_1
    return-void
.end method

.method public static updateLastImportantUidsIfNeeded()V
    .locals 1

    .line 159
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    .line 160
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    .line 162
    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    .line 163
    invoke-interface {v0}, Lcom/android/server/am/IOpBGFrozen;->updateLastImportantUidsIfNeeded()V

    .line 165
    :cond_1
    return-void
.end method

.method public static updateLocationReceiverUidsChange(IZZZ)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "isAdd"    # Z
    .param p2, "isReceiver"    # Z
    .param p3, "isGps"    # Z

    .line 85
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    .line 86
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    .line 88
    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    .line 89
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/server/am/IOpBGFrozen;->updateLocationReceiverUidsChange(IZZZ)V

    .line 91
    :cond_1
    return-void
.end method

.method public static virtualDeviceChangeEvent(IZLjava/lang/String;)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "add"    # Z
    .param p2, "uniqueId"    # Ljava/lang/String;

    .line 398
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    .line 399
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    .line 401
    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    .line 402
    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/am/IOpBGFrozen;->virtualDeviceChangeEvent(IZLjava/lang/String;)V

    .line 404
    :cond_1
    return-void
.end method
