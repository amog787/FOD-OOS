.class public Lcom/android/server/incident/IncidentCompanionService;
.super Lcom/android/server/SystemService;
.source "IncidentCompanionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/incident/IncidentCompanionService$BinderService;
    }
.end annotation


# static fields
.field private static final DUMP_AND_USAGE_STATS_PERMISSIONS:[Ljava/lang/String;

.field private static RESTRICTED_IMAGE_DUMP_ARGS:[Ljava/lang/String; = null

.field static final TAG:Ljava/lang/String; = "IncidentCompanionService"


# instance fields
.field private mPendingReports:Lcom/android/server/incident/PendingReports;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    const-string v0, "--hal"

    const-string v1, "--restricted_image"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/incident/IncidentCompanionService;->RESTRICTED_IMAGE_DUMP_ARGS:[Ljava/lang/String;

    .line 64
    const-string v0, "android.permission.DUMP"

    const-string v1, "android.permission.PACKAGE_USAGE_STATS"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/incident/IncidentCompanionService;->DUMP_AND_USAGE_STATS_PERMISSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 380
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 381
    new-instance v0, Lcom/android/server/incident/PendingReports;

    invoke-direct {v0, p1}, Lcom/android/server/incident/PendingReports;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/incident/IncidentCompanionService;->mPendingReports:Lcom/android/server/incident/PendingReports;

    .line 382
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/incident/IncidentCompanionService;)Lcom/android/server/incident/PendingReports;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/incident/IncidentCompanionService;

    .line 51
    iget-object v0, p0, Lcom/android/server/incident/IncidentCompanionService;->mPendingReports:Lcom/android/server/incident/PendingReports;

    return-object v0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .line 51
    sget-object v0, Lcom/android/server/incident/IncidentCompanionService;->DUMP_AND_USAGE_STATS_PERMISSIONS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/incident/IncidentCompanionService;)Landroid/os/IIncidentManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/incident/IncidentCompanionService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Lcom/android/server/incident/IncidentCompanionService;->getIIncidentManager()Landroid/os/IIncidentManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()[Ljava/lang/String;
    .locals 1

    .line 51
    sget-object v0, Lcom/android/server/incident/IncidentCompanionService;->RESTRICTED_IMAGE_DUMP_ARGS:[Ljava/lang/String;

    return-object v0
.end method

.method public static getAndValidateUser(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 424
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    .local v0, "currentUser":Landroid/content/pm/UserInfo;
    nop

    .line 431
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 432
    .local v1, "um":Landroid/os/UserManager;
    invoke-virtual {v1}, Landroid/os/UserManager;->getPrimaryUser()Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 435
    .local v2, "primaryUser":Landroid/content/pm/UserInfo;
    const/16 v3, -0x2710

    const-string v4, "IncidentCompanionService"

    if-nez v0, :cond_0

    .line 436
    const-string v5, "No current user.  Nobody to approve the report. The report will be denied."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    return v3

    .line 440
    :cond_0
    if-nez v2, :cond_1

    .line 441
    const-string v5, "No primary user.  Nobody to approve the report. The report will be denied."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    return v3

    .line 445
    :cond_1
    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    iget v6, v0, Landroid/content/pm/UserInfo;->id:I

    if-eq v5, v6, :cond_2

    .line 446
    const-string v5, "Only the primary user can approve bugreports, but they are not the current user. The report will be denied."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    return v3

    .line 451
    :cond_2
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    return v3

    .line 425
    .end local v0    # "currentUser":Landroid/content/pm/UserInfo;
    .end local v1    # "um":Landroid/os/UserManager;
    .end local v2    # "primaryUser":Landroid/content/pm/UserInfo;
    :catch_0
    move-exception v0

    .line 427
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getIIncidentManager()Landroid/os/IIncidentManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 412
    nop

    .line 413
    const-string v0, "incident"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 412
    invoke-static {v0}, Landroid/os/IIncidentManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IIncidentManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1
    .param p1, "phase"    # I

    .line 399
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onBootPhase(I)V

    .line 400
    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/android/server/incident/IncidentCompanionService;->mPendingReports:Lcom/android/server/incident/PendingReports;

    invoke-virtual {v0}, Lcom/android/server/incident/PendingReports;->onBootCompleted()V

    .line 405
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 390
    new-instance v0, Lcom/android/server/incident/IncidentCompanionService$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/incident/IncidentCompanionService$BinderService;-><init>(Lcom/android/server/incident/IncidentCompanionService;Lcom/android/server/incident/IncidentCompanionService$1;)V

    const-string v1, "incidentcompanion"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/incident/IncidentCompanionService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 391
    return-void
.end method
