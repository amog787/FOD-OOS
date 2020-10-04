.class public Lcom/android/server/am/OpAppBootManagerInjector;
.super Ljava/lang/Object;
.source "OpAppBootManagerInjector.java"


# static fields
.field public static final ACTION_NOTIFICATION_LISTENER_UPDATE:Ljava/lang/String; = "action.appboot.notification_listener_update"

.field private static final DEBUG:Z

.field private static final ENABLED:Z

.field public static final TAG:Ljava/lang/String; = "OnePlusAppBootManager"

.field private static sAppBootManager:Lcom/android/server/am/IOpAppBootManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 38
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/am/OpAppBootManagerInjector;->DEBUG:Z

    .line 40
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x1d

    aput v2, v0, v1

    .line 41
    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OpAppBootManagerInjector;->ENABLED:Z

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDependencyPackageFlag(Ljava/lang/String;I)V
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "callingPid"    # I

    .line 139
    sget-boolean v0, Lcom/android/server/am/OpAppBootManagerInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 140
    return-void

    .line 143
    :cond_0
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-nez v0, :cond_1

    .line 144
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_appbootmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpAppBootManager;

    sput-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    .line 147
    :cond_1
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-eqz v0, :cond_2

    .line 148
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpAppBootManager;->addDependencyPackageFlag(Ljava/lang/String;I)V

    .line 150
    :cond_2
    return-void
.end method

.method public static canActivityGo(Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Z
    .locals 2
    .param p0, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 239
    sget-boolean v0, Lcom/android/server/am/OpAppBootManagerInjector;->ENABLED:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 240
    return v1

    .line 243
    :cond_0
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-nez v0, :cond_1

    .line 244
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_appbootmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpAppBootManager;

    sput-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    .line 247
    :cond_1
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-eqz v0, :cond_2

    .line 248
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpAppBootManager;->canActivityGo(Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 250
    :cond_2
    return v1
.end method

.method public static canInstrumentationGo(Landroid/content/ComponentName;II)Z
    .locals 2
    .param p0, "className"    # Landroid/content/ComponentName;
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I

    .line 329
    sget-boolean v0, Lcom/android/server/am/OpAppBootManagerInjector;->ENABLED:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 330
    return v1

    .line 333
    :cond_0
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-nez v0, :cond_1

    .line 334
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_appbootmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpAppBootManager;

    sput-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    .line 337
    :cond_1
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-eqz v0, :cond_2

    .line 338
    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/am/IOpAppBootManager;->canInstrumentationGo(Landroid/content/ComponentName;II)Z

    move-result v0

    return v0

    .line 340
    :cond_2
    return v1
.end method

.method public static canJobSchedulerServiceGo(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 2
    .param p0, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 374
    sget-boolean v0, Lcom/android/server/am/OpAppBootManagerInjector;->ENABLED:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 375
    return v1

    .line 378
    :cond_0
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-nez v0, :cond_1

    .line 379
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_appbootmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpAppBootManager;

    sput-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    .line 382
    :cond_1
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-eqz v0, :cond_2

    .line 383
    invoke-interface {v0, p0}, Lcom/android/server/am/IOpAppBootManager;->canJobSchedulerServiceGo(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    return v0

    .line 385
    :cond_2
    return v1
.end method

.method public static canKillProcessService(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 269
    sget-boolean v0, Lcom/android/server/am/OpAppBootManagerInjector;->ENABLED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 270
    return v1

    .line 273
    :cond_0
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-nez v0, :cond_1

    .line 274
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_appbootmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpAppBootManager;

    sput-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    .line 277
    :cond_1
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-eqz v0, :cond_2

    .line 278
    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/am/IOpAppBootManager;->canKillProcessService(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 280
    :cond_2
    return v1
.end method

.method public static canNotificationListenerServiceGo(Landroid/content/ComponentName;)Z
    .locals 2
    .param p0, "compName"    # Landroid/content/ComponentName;

    .line 359
    sget-boolean v0, Lcom/android/server/am/OpAppBootManagerInjector;->ENABLED:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 360
    return v1

    .line 363
    :cond_0
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-nez v0, :cond_1

    .line 364
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_appbootmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpAppBootManager;

    sput-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    .line 367
    :cond_1
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-eqz v0, :cond_2

    .line 368
    invoke-interface {v0, p0}, Lcom/android/server/am/IOpAppBootManager;->canNotificationListenerServiceGo(Landroid/content/ComponentName;)Z

    move-result v0

    return v0

    .line 370
    :cond_2
    return v1
.end method

.method public static canProcGo(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z
    .locals 2
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p1, "hostingType"    # Ljava/lang/String;

    .line 314
    sget-boolean v0, Lcom/android/server/am/OpAppBootManagerInjector;->ENABLED:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 315
    return v1

    .line 318
    :cond_0
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-nez v0, :cond_1

    .line 319
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_appbootmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpAppBootManager;

    sput-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    .line 322
    :cond_1
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-eqz v0, :cond_2

    .line 323
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpAppBootManager;->canProcGo(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 325
    :cond_2
    return v1
.end method

.method public static canProviderGo(Lcom/android/server/am/ContentProviderRecord;Lcom/android/server/am/ProcessRecord;)Z
    .locals 2
    .param p0, "cpr"    # Lcom/android/server/am/ContentProviderRecord;
    .param p1, "callerApp"    # Lcom/android/server/am/ProcessRecord;

    .line 299
    sget-boolean v0, Lcom/android/server/am/OpAppBootManagerInjector;->ENABLED:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 300
    return v1

    .line 303
    :cond_0
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-nez v0, :cond_1

    .line 304
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_appbootmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpAppBootManager;

    sput-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    .line 307
    :cond_1
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-eqz v0, :cond_2

    .line 308
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpAppBootManager;->canProviderGo(Lcom/android/server/am/ContentProviderRecord;Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    return v0

    .line 310
    :cond_2
    return v1
.end method

.method public static canReceiverGo(Landroid/content/pm/ApplicationInfo;Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;)Z
    .locals 2
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "targetProcess"    # Ljava/lang/String;

    .line 284
    sget-boolean v0, Lcom/android/server/am/OpAppBootManagerInjector;->ENABLED:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 285
    return v1

    .line 288
    :cond_0
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-nez v0, :cond_1

    .line 289
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_appbootmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpAppBootManager;

    sput-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    .line 292
    :cond_1
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-eqz v0, :cond_2

    .line 293
    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/am/IOpAppBootManager;->canReceiverGo(Landroid/content/pm/ApplicationInfo;Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 295
    :cond_2
    return v1
.end method

.method public static canScheduleServiceRestart(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2
    .param p0, "r"    # Lcom/android/server/am/ProcessRecord;

    .line 455
    sget-boolean v0, Lcom/android/server/am/OpAppBootManagerInjector;->ENABLED:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 456
    return v1

    .line 459
    :cond_0
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-nez v0, :cond_1

    .line 460
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_appbootmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpAppBootManager;

    sput-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    .line 463
    :cond_1
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-eqz v0, :cond_2

    .line 464
    invoke-interface {v0, p0}, Lcom/android/server/am/IOpAppBootManager;->canScheduleServiceRestart(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    return v0

    .line 466
    :cond_2
    return v1
.end method

.method public static canServiceGo(Lcom/android/server/am/ProcessRecord;Landroid/content/Intent;Lcom/android/server/am/ServiceRecord;ILjava/lang/String;)Z
    .locals 8
    .param p0, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p3, "callingUid"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;

    .line 254
    sget-boolean v0, Lcom/android/server/am/OpAppBootManagerInjector;->ENABLED:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 255
    return v1

    .line 258
    :cond_0
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-nez v0, :cond_1

    .line 259
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_appbootmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpAppBootManager;

    sput-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    .line 262
    :cond_1
    sget-object v2, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-eqz v2, :cond_2

    .line 263
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    invoke-interface/range {v2 .. v7}, Lcom/android/server/am/IOpAppBootManager;->canServiceGo(Lcom/android/server/am/ProcessRecord;Landroid/content/Intent;Lcom/android/server/am/ServiceRecord;ILjava/lang/String;)Z

    move-result v0

    return v0

    .line 265
    :cond_2
    return v1
.end method

.method public static checkAppInfoWithFlags(ILandroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;
    .locals 2
    .param p0, "flags"    # I
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 486
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 487
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-nez v0, :cond_0

    .line 488
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_appbootmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpAppBootManager;

    sput-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    .line 491
    :cond_0
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-eqz v0, :cond_1

    .line 492
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpAppBootManager;->checkAppInfo(ILandroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0

    .line 495
    :cond_1
    return-object p1
.end method

.method public static getScreenState()Z
    .locals 2

    .line 224
    sget-boolean v0, Lcom/android/server/am/OpAppBootManagerInjector;->ENABLED:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 225
    return v1

    .line 228
    :cond_0
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-nez v0, :cond_1

    .line 229
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_appbootmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpAppBootManager;

    sput-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    .line 232
    :cond_1
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-eqz v0, :cond_2

    .line 233
    invoke-interface {v0}, Lcom/android/server/am/IOpAppBootManager;->getScreenState()Z

    move-result v0

    return v0

    .line 235
    :cond_2
    return v1
.end method

.method public static handleAppKilledLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 1
    .param p0, "r"    # Lcom/android/server/am/ProcessRecord;

    .line 471
    sget-boolean v0, Lcom/android/server/am/OpAppBootManagerInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 472
    return-void

    .line 475
    :cond_0
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-nez v0, :cond_1

    .line 476
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_appbootmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpAppBootManager;

    sput-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    .line 479
    :cond_1
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-eqz v0, :cond_2

    .line 480
    invoke-interface {v0, p0}, Lcom/android/server/am/IOpAppBootManager;->handleAppKilledLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 482
    :cond_2
    return-void
.end method

.method public static initEnv(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .locals 1
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "context"    # Landroid/content/Context;

    .line 69
    sget-boolean v0, Lcom/android/server/am/OpAppBootManagerInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 70
    return-void

    .line 73
    :cond_0
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-nez v0, :cond_1

    .line 74
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_appbootmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpAppBootManager;

    sput-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    .line 77
    :cond_1
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-eqz v0, :cond_2

    .line 78
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpAppBootManager;->initEnv(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V

    .line 80
    :cond_2
    return-void
.end method

.method public static initPackages(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArrayMap;)V
    .locals 1
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Package;",
            ">;)V"
        }
    .end annotation

    .line 55
    .local p1, "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/PackageParser$Package;>;"
    sget-boolean v0, Lcom/android/server/am/OpAppBootManagerInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 56
    return-void

    .line 59
    :cond_0
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-nez v0, :cond_1

    .line 60
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_appbootmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpAppBootManager;

    sput-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    .line 63
    :cond_1
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-eqz v0, :cond_2

    .line 64
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpAppBootManager;->initPackages(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArrayMap;)V

    .line 66
    :cond_2
    return-void
.end method

.method public static isBlackJobClass(Ljava/lang/String;)Z
    .locals 2
    .param p0, "className"    # Ljava/lang/String;

    .line 439
    sget-boolean v0, Lcom/android/server/am/OpAppBootManagerInjector;->ENABLED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 440
    return v1

    .line 443
    :cond_0
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-nez v0, :cond_1

    .line 444
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_appbootmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpAppBootManager;

    sput-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    .line 447
    :cond_1
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-eqz v0, :cond_2

    .line 448
    invoke-interface {v0, p0}, Lcom/android/server/am/IOpAppBootManager;->isBlackJobClass(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 450
    :cond_2
    return v1
.end method

.method public static isDebug()Z
    .locals 2

    .line 423
    sget-boolean v0, Lcom/android/server/am/OpAppBootManagerInjector;->ENABLED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 424
    return v1

    .line 427
    :cond_0
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-nez v0, :cond_1

    .line 428
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_appbootmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpAppBootManager;

    sput-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    .line 431
    :cond_1
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-eqz v0, :cond_2

    .line 432
    invoke-interface {v0}, Lcom/android/server/am/IOpAppBootManager;->isDebug()Z

    move-result v0

    return v0

    .line 434
    :cond_2
    return v1
.end method

.method public static isEnabled()Z
    .locals 1

    .line 51
    sget-boolean v0, Lcom/android/server/am/OpAppBootManagerInjector;->ENABLED:Z

    return v0
.end method

.method public static isNotAppUserSetted(Ljava/lang/String;)Z
    .locals 2
    .param p0, "pkgName"    # Ljava/lang/String;

    .line 407
    sget-boolean v0, Lcom/android/server/am/OpAppBootManagerInjector;->ENABLED:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 408
    return v1

    .line 411
    :cond_0
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-nez v0, :cond_1

    .line 412
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_appbootmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpAppBootManager;

    sput-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    .line 415
    :cond_1
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-eqz v0, :cond_2

    .line 416
    invoke-interface {v0, p0}, Lcom/android/server/am/IOpAppBootManager;->isNotAppUserSetted(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 419
    :cond_2
    return v1
.end method

.method public static myLog(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 83
    sget-boolean v0, Lcom/android/server/am/OpAppBootManagerInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 84
    return-void

    .line 87
    :cond_0
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-nez v0, :cond_1

    .line 88
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_appbootmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpAppBootManager;

    sput-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    .line 91
    :cond_1
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-eqz v0, :cond_2

    .line 92
    invoke-interface {v0, p0}, Lcom/android/server/am/IOpAppBootManager;->myLog(Ljava/lang/String;)V

    .line 94
    :cond_2
    return-void
.end method

.method public static setCurrentIME(Landroid/content/Intent;)V
    .locals 1
    .param p0, "service"    # Landroid/content/Intent;

    .line 195
    sget-boolean v0, Lcom/android/server/am/OpAppBootManagerInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 196
    return-void

    .line 199
    :cond_0
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-nez v0, :cond_1

    .line 200
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_appbootmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpAppBootManager;

    sput-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    .line 203
    :cond_1
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-eqz v0, :cond_2

    .line 204
    invoke-interface {v0, p0}, Lcom/android/server/am/IOpAppBootManager;->setCurrentIME(Landroid/content/Intent;)V

    .line 206
    :cond_2
    return-void
.end method

.method public static setCurrentWallpaperPackage(Landroid/content/ComponentName;)V
    .locals 1
    .param p0, "componentName"    # Landroid/content/ComponentName;

    .line 209
    sget-boolean v0, Lcom/android/server/am/OpAppBootManagerInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 210
    return-void

    .line 213
    :cond_0
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-nez v0, :cond_1

    .line 214
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_appbootmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpAppBootManager;

    sput-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    .line 217
    :cond_1
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-eqz v0, :cond_2

    .line 218
    invoke-interface {v0, p0}, Lcom/android/server/am/IOpAppBootManager;->setCurrentWallpaperPackage(Landroid/content/ComponentName;)V

    .line 220
    :cond_2
    return-void
.end method

.method public static skipBroadcast(Landroid/content/Intent;Ljava/lang/String;IILcom/android/server/am/ProcessRecord;)Z
    .locals 8
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "callerPackage"    # Ljava/lang/String;
    .param p2, "callingPid"    # I
    .param p3, "callingUid"    # I
    .param p4, "callerApp"    # Lcom/android/server/am/ProcessRecord;

    .line 344
    sget-boolean v0, Lcom/android/server/am/OpAppBootManagerInjector;->ENABLED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 345
    return v1

    .line 348
    :cond_0
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-nez v0, :cond_1

    .line 349
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_appbootmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpAppBootManager;

    sput-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    .line 352
    :cond_1
    sget-object v2, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-eqz v2, :cond_2

    .line 353
    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-interface/range {v2 .. v7}, Lcom/android/server/am/IOpAppBootManager;->skipBroadcast(Landroid/content/Intent;Ljava/lang/String;IILcom/android/server/am/ProcessRecord;)Z

    move-result v0

    return v0

    .line 355
    :cond_2
    return v1
.end method

.method public static trackProcess(ZLcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 1
    .param p0, "add"    # Z
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .line 97
    sget-boolean v0, Lcom/android/server/am/OpAppBootManagerInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 98
    return-void

    .line 101
    :cond_0
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-nez v0, :cond_1

    .line 102
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_appbootmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpAppBootManager;

    sput-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    .line 105
    :cond_1
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-eqz v0, :cond_2

    .line 106
    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/am/IOpAppBootManager;->trackProcess(ZLcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 108
    :cond_2
    return-void
.end method

.method public static updateAccesibilityServiceFlag(Landroid/content/Intent;Landroid/content/ComponentName;I)V
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "flag"    # I

    .line 153
    sget-boolean v0, Lcom/android/server/am/OpAppBootManagerInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 154
    return-void

    .line 157
    :cond_0
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-nez v0, :cond_1

    .line 158
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_appbootmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpAppBootManager;

    sput-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    .line 161
    :cond_1
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-eqz v0, :cond_2

    .line 162
    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/am/IOpAppBootManager;->updateAccesibilityServiceFlag(Landroid/content/Intent;Landroid/content/ComponentName;I)V

    .line 164
    :cond_2
    return-void
.end method

.method public static updateAppStopInfo(Ljava/lang/String;)V
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;

    .line 125
    sget-boolean v0, Lcom/android/server/am/OpAppBootManagerInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 126
    return-void

    .line 129
    :cond_0
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-nez v0, :cond_1

    .line 130
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_appbootmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpAppBootManager;

    sput-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    .line 133
    :cond_1
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-eqz v0, :cond_2

    .line 134
    invoke-interface {v0, p0}, Lcom/android/server/am/IOpAppBootManager;->updateAppStopInfo(Ljava/lang/String;)V

    .line 136
    :cond_2
    return-void
.end method

.method public static updateAppStopInfo(Ljava/lang/String;I)V
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "callingPid"    # I

    .line 111
    sget-boolean v0, Lcom/android/server/am/OpAppBootManagerInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 112
    return-void

    .line 115
    :cond_0
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-nez v0, :cond_1

    .line 116
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_appbootmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpAppBootManager;

    sput-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    .line 119
    :cond_1
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-eqz v0, :cond_2

    .line 120
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpAppBootManager;->updateAppStopInfo(Ljava/lang/String;I)V

    .line 122
    :cond_2
    return-void
.end method

.method public static updatePowerFlag(Ljava/lang/String;I)V
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "flag"    # I

    .line 393
    sget-boolean v0, Lcom/android/server/am/OpAppBootManagerInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 394
    return-void

    .line 397
    :cond_0
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-nez v0, :cond_1

    .line 398
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_appbootmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpAppBootManager;

    sput-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    .line 401
    :cond_1
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-eqz v0, :cond_2

    .line 402
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpAppBootManager;->updatePowerFlag(Ljava/lang/String;I)V

    .line 404
    :cond_2
    return-void
.end method

.method public static updateWidgetPackage(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "add"    # Z

    .line 167
    sget-boolean v0, Lcom/android/server/am/OpAppBootManagerInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 168
    return-void

    .line 171
    :cond_0
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-nez v0, :cond_1

    .line 172
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_appbootmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpAppBootManager;

    sput-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    .line 175
    :cond_1
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-eqz v0, :cond_2

    .line 176
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpAppBootManager;->updateWidgetPackage(Ljava/lang/String;Z)V

    .line 178
    :cond_2
    return-void
.end method

.method public static updateWidgetPackages(Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 181
    .local p0, "pkgSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-boolean v0, Lcom/android/server/am/OpAppBootManagerInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 182
    return-void

    .line 185
    :cond_0
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-nez v0, :cond_1

    .line 186
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_appbootmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpAppBootManager;

    sput-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    .line 189
    :cond_1
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-eqz v0, :cond_2

    .line 190
    invoke-interface {v0, p0}, Lcom/android/server/am/IOpAppBootManager;->updateWidgetPackages(Ljava/util/HashSet;)V

    .line 192
    :cond_2
    return-void
.end method
