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

.field private final weakActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 1
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "service"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 933
    invoke-direct {p0}, Landroid/view/IApplicationToken$Stub;-><init>()V

    .line 934
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord$Token;->weakActivity:Ljava/lang/ref/WeakReference;

    .line 935
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord$Token;->name:Ljava/lang/String;

    .line 936
    iput-object p3, p0, Lcom/android/server/wm/ActivityRecord$Token;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 937
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/ActivityRecord$Token;)Lcom/android/server/wm/ActivityRecord;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/ActivityRecord$Token;

    .line 917
    invoke-static {p0}, Lcom/android/server/wm/ActivityRecord$Token;->tokenToActivityRecordLocked(Lcom/android/server/wm/ActivityRecord$Token;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method private static tokenToActivityRecordLocked(Lcom/android/server/wm/ActivityRecord$Token;)Lcom/android/server/wm/ActivityRecord;
    .locals 3
    .param p0, "token"    # Lcom/android/server/wm/ActivityRecord$Token;

    .line 954
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 955
    return-object v0

    .line 957
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord$Token;->weakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 958
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 961
    :cond_1
    return-object v1

    .line 959
    :cond_2
    :goto_0
    return-object v0
.end method


# virtual methods
.method public addNoHistory()V
    .locals 5

    .line 941
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord$Token;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 942
    invoke-static {p0}, Lcom/android/server/wm/ActivityRecord$Token;->tokenToActivityRecordLocked(Lcom/android/server/wm/ActivityRecord$Token;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 943
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_0

    .line 946
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->isQuickPayNoHistory:Z

    .line 947
    const-string v2, "ActivityTaskManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QuickPay: addNoHistory(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 950
    return-void

    .line 949
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

    .line 977
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord$Token;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 966
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 967
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Token{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 968
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 969
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 970
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord$Token;->weakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 971
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 972
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
