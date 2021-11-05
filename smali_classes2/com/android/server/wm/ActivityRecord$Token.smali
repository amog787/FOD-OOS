.class Lcom/android/server/wm/ActivityRecord$Token;
.super Landroid/view/IApplicationToken$Stub;
.source "ActivityRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Token"
.end annotation


# instance fields
.field private final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private final name:Ljava/lang/String;

.field private final tokenString:Ljava/lang/String;

.field private weakActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Intent;Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "service"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1554
    invoke-direct {p0}, Landroid/view/IApplicationToken$Stub;-><init>()V

    .line 1555
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord$Token;->name:Ljava/lang/String;

    .line 1556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Token{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord$Token;->tokenString:Ljava/lang/String;

    .line 1557
    iput-object p2, p0, Lcom/android/server/wm/ActivityRecord$Token;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1558
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wm/ActivityRecord$Token;)Lcom/android/server/wm/ActivityRecord;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/ActivityRecord$Token;

    .line 1536
    invoke-static {p0}, Lcom/android/server/wm/ActivityRecord$Token;->tokenToActivityRecordLocked(Lcom/android/server/wm/ActivityRecord$Token;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/ActivityRecord$Token;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/ActivityRecord$Token;
    .param p1, "x1"    # Lcom/android/server/wm/ActivityRecord;

    .line 1536
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityRecord$Token;->attach(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method private attach(Lcom/android/server/wm/ActivityRecord;)V
    .locals 3
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 1574
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord$Token;->weakActivity:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 1577
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord$Token;->weakActivity:Ljava/lang/ref/WeakReference;

    .line 1578
    return-void

    .line 1575
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already attached..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static tokenToActivityRecordLocked(Lcom/android/server/wm/ActivityRecord$Token;)Lcom/android/server/wm/ActivityRecord;
    .locals 3
    .param p0, "token"    # Lcom/android/server/wm/ActivityRecord$Token;

    .line 1581
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1582
    return-object v0

    .line 1584
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord$Token;->weakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 1585
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 1588
    :cond_1
    return-object v1

    .line 1586
    :cond_2
    :goto_0
    return-object v0
.end method


# virtual methods
.method public addNoHistory()V
    .locals 5

    .line 1562
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord$Token;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1563
    invoke-static {p0}, Lcom/android/server/wm/ActivityRecord$Token;->tokenToActivityRecordLocked(Lcom/android/server/wm/ActivityRecord$Token;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 1564
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_0

    .line 1567
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->isQuickPayNoHistory:Z

    .line 1568
    const-string v2, "ActivityTaskManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QuickPay: addNoHistory(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1571
    return-void

    .line 1570
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1606
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord$Token;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1593
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1594
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Token{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1595
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1596
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1597
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord$Token;->weakActivity:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 1598
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1600
    :cond_0
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1601
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
