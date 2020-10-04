.class Lcom/android/server/am/ActiveServices$ServiceRestarter;
.super Ljava/lang/Object;
.source "ActiveServices.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActiveServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceRestarter"
.end annotation


# instance fields
.field private mService:Lcom/android/server/am/ServiceRecord;

.field final synthetic this$0:Lcom/android/server/am/ActiveServices;


# direct methods
.method private constructor <init>(Lcom/android/server/am/ActiveServices;)V
    .locals 0

    .line 2325
    iput-object p1, p0, Lcom/android/server/am/ActiveServices$ServiceRestarter;->this$0:Lcom/android/server/am/ActiveServices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ActiveServices$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/am/ActiveServices;
    .param p2, "x1"    # Lcom/android/server/am/ActiveServices$1;

    .line 2325
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices$ServiceRestarter;-><init>(Lcom/android/server/am/ActiveServices;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2333
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceRestarter;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2334
    iget-object v1, p0, Lcom/android/server/am/ActiveServices$ServiceRestarter;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v2, p0, Lcom/android/server/am/ActiveServices$ServiceRestarter;->mService:Lcom/android/server/am/ServiceRecord;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActiveServices;->performServiceRestartLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 2335
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2336
    return-void

    .line 2335
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method setService(Lcom/android/server/am/ServiceRecord;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/am/ServiceRecord;

    .line 2329
    iput-object p1, p0, Lcom/android/server/am/ActiveServices$ServiceRestarter;->mService:Lcom/android/server/am/ServiceRecord;

    .line 2330
    return-void
.end method
