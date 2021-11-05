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

    .line 282
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    .line 283
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    .line 285
    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    .line 286
    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/am/IOpBGFrozen;->addDisplayCallback(IILandroid/hardware/display/IDisplayManagerCallback;)V

    .line 288
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

    .line 403
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    .line 404
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    .line 406
    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    .line 407
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/server/am/IOpBGFrozen;->bindServiceLockedEvent(Lcom/android/server/am/ProcessRecord;Landroid/content/Intent;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;)V

    .line 409
    :cond_1
    return-void
.end method

.method public static broadcastTimeoutEvent(IILandroid/content/Intent;)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "pid"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .line 262
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    .line 263
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    .line 265
    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    .line 266
    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/am/IOpBGFrozen;->broadcastTimeoutEvent(IILandroid/content/Intent;)V

    .line 268
    :cond_1
    return-void
.end method

.method public static bumpServiceEvent(IIZLjava/lang/String;)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "pid"    # I
    .param p2, "done"    # Z
    .param p3, "reason"    # Ljava/lang/String;

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
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/server/am/IOpBGFrozen;->bumpServiceEvent(IIZLjava/lang/String;)V

    .line 230
    :cond_1
    return-void
.end method

.method public static checkAppInLaunchingProviders(Lcom/android/server/am/ProcessRecord;)V
    .locals 1
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 358
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    .line 359
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    .line 361
    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    .line 362
    invoke-interface {v0, p0}, Lcom/android/server/am/IOpBGFrozen;->checkAppInLaunchingProviders(Lcom/android/server/am/ProcessRecord;)V

    .line 364
    :cond_1
    return-void
.end method

.method public static checkBroadcastIsPackageCanStart(Lcom/android/server/am/BroadcastQueue;Landroid/content/pm/ResolveInfo;Lcom/android/server/am/BroadcastRecord;)Z
    .locals 1
    .param p0, "queue"    # Lcom/android/server/am/BroadcastQueue;
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;

    .line 251
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    .line 252
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    .line 254
    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    .line 255
    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/am/IOpBGFrozen;->checkBroadcastIsPackageCanStart(Lcom/android/server/am/BroadcastQueue;Landroid/content/pm/ResolveInfo;Lcom/android/server/am/BroadcastRecord;)Z

    move-result v0

    return v0

    .line 257
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static checkProcessCanRestart(Lcom/android/server/am/ProcessRecord;)Z
    .locals 1
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 347
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    .line 348
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    .line 350
    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    .line 351
    invoke-interface {v0, p0}, Lcom/android/server/am/IOpBGFrozen;->checkProcessCanRestart(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    return v0

    .line 353
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static checkTimeoutBegin(III)V
    .locals 1
    .param p0, "key"    # I
    .param p1, "timeoutUid"    # I
    .param p2, "timeoutPid"    # I

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
    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/am/IOpBGFrozen;->checkTimeoutBegin(III)V

    .line 221
    :cond_1
    return-void
.end method

.method public static checkTimeoutEnd(I)V
    .locals 1
    .param p0, "key"    # I

    .line 320
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    .line 321
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    .line 323
    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    .line 324
    invoke-interface {v0, p0}, Lcom/android/server/am/IOpBGFrozen;->checkTimeoutEnd(I)V

    .line 326
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
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpBGFrozen;->clientConnectionRemoveEvent(II)V

    .line 239
    :cond_1
    return-void
.end method

.method public static contentNotifyResumeEvent(IZ)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "start"    # Z

    .line 367
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    .line 368
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    .line 370
    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    .line 371
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpBGFrozen;->contentNotifyResumeEvent(IZ)V

    .line 373
    :cond_1
    return-void
.end method

.method public static getEnable()Z
    .locals 1

    .line 271
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    .line 272
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    .line 274
    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    .line 275
    invoke-interface {v0}, Lcom/android/server/am/IOpBGFrozen;->getEnable()Z

    move-result v0

    return v0

    .line 277
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static getTimeoutValue(Ljava/lang/String;Ljava/lang/String;)J
    .locals 2
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "tag"    # Ljava/lang/String;

    .line 434
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    .line 435
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    .line 437
    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    .line 438
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpBGFrozen;->getTimeoutValue(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 440
    :cond_1
    const-wide/16 v0, 0x258

    return-wide v0
.end method

.method public static importantProviderChangeEvent(IZLcom/android/server/am/ProcessRecord;)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "inc"    # Z
    .param p2, "client"    # Lcom/android/server/am/ProcessRecord;

    .line 394
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    .line 395
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    .line 397
    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    .line 398
    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/am/IOpBGFrozen;->importantProviderChangeEvent(IZLcom/android/server/am/ProcessRecord;)V

    .line 400
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

.method public static isDeliverDisplayChange(I)Z
    .locals 1
    .param p0, "uid"    # I

    .line 309
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    .line 310
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    .line 312
    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    .line 313
    invoke-interface {v0, p0}, Lcom/android/server/am/IOpBGFrozen;->isDeliverDisplayChange(I)Z

    move-result v0

    return v0

    .line 315
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static isResStopServiceForIdle(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "uid"    # I
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "compName"    # Ljava/lang/String;

    .line 412
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    .line 413
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    .line 415
    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    .line 416
    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/am/IOpBGFrozen;->isResStopServiceForIdle(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 418
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static isSpecialJob(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "tag"    # Ljava/lang/String;

    .line 423
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    .line 424
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    .line 426
    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    .line 427
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpBGFrozen;->isSpecialJob(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 429
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static isUidFrozen(I)Z
    .locals 1
    .param p0, "uid"    # I

    .line 195
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    .line 196
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    .line 198
    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    .line 199
    invoke-interface {v0, p0}, Lcom/android/server/am/IOpBGFrozen;->isUidFrozen(I)Z

    move-result v0

    return v0

    .line 201
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static isUidImperceptible(I)Z
    .locals 1
    .param p0, "uid"    # I

    .line 205
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    .line 206
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    .line 208
    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    .line 209
    invoke-interface {v0, p0}, Lcom/android/server/am/IOpBGFrozen;->isUidImperceptible(I)Z

    move-result v0

    return v0

    .line 211
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static mediaProjectionEvent(IZ)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "start"    # Z

    .line 376
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    .line 377
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    .line 379
    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    .line 380
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpBGFrozen;->mediaProjectionEvent(IZ)V

    .line 382
    :cond_1
    return-void
.end method

.method public static permRequestDecEvent(I)V
    .locals 1
    .param p0, "uid"    # I

    .line 329
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    .line 330
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    .line 332
    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    .line 333
    invoke-interface {v0, p0}, Lcom/android/server/am/IOpBGFrozen;->permRequestDecEvent(I)V

    .line 335
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

    .line 291
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    .line 292
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    .line 294
    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    .line 295
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpBGFrozen;->removeDisplayCallback(II)V

    .line 297
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

.method public static screenStateChangedEvent(Z)V
    .locals 1
    .param p0, "done"    # Z

    .line 338
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    .line 339
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    .line 341
    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    .line 342
    invoke-interface {v0, p0}, Lcom/android/server/am/IOpBGFrozen;->screenStateChangedEvent(Z)V

    .line 344
    :cond_1
    return-void
.end method

.method public static serviceTimeoutEvent(IILjava/lang/String;)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "pid"    # I
    .param p2, "reason"    # Ljava/lang/String;

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
    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/am/IOpBGFrozen;->serviceTimeoutEvent(IILjava/lang/String;)V

    .line 248
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

.method public static triggerForKernel(IIILjava/lang/String;I)V
    .locals 7
    .param p0, "type"    # I
    .param p1, "callerPid"    # I
    .param p2, "targetUid"    # I
    .param p3, "rpcName"    # Ljava/lang/String;
    .param p4, "rpcCode"    # I

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
    sget-object v1, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v1, :cond_1

    .line 190
    move v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/android/server/am/IOpBGFrozen;->triggerForKernel(IIILjava/lang/String;I)V

    .line 192
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

    .line 300
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    .line 301
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    .line 303
    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    .line 304
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpBGFrozen;->updateDisplayEvent(II)V

    .line 306
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

.method public static virtualDeviceChangeEvent(IZLjava/lang/String;)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "add"    # Z
    .param p2, "uniqueId"    # Ljava/lang/String;

    .line 385
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    .line 386
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    .line 388
    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    .line 389
    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/am/IOpBGFrozen;->virtualDeviceChangeEvent(IZLjava/lang/String;)V

    .line 391
    :cond_1
    return-void
.end method
