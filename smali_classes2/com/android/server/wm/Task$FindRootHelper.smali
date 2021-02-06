.class Lcom/android/server/wm/Task$FindRootHelper;
.super Ljava/lang/Object;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FindRootHelper"
.end annotation


# instance fields
.field private mRoot:Lcom/android/server/wm/ActivityRecord;

.field final synthetic this$0:Lcom/android/server/wm/Task;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/Task;)V
    .locals 0

    .line 473
    iput-object p1, p0, Lcom/android/server/wm/Task$FindRootHelper;->this$0:Lcom/android/server/wm/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wm/Task;
    .param p2, "x1"    # Lcom/android/server/wm/Task$1;

    .line 473
    invoke-direct {p0, p1}, Lcom/android/server/wm/Task$FindRootHelper;-><init>(Lcom/android/server/wm/Task;)V

    return-void
.end method

.method private clear()V
    .locals 1

    .line 477
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/Task$FindRootHelper;->mRoot:Lcom/android/server/wm/ActivityRecord;

    .line 478
    return-void
.end method

.method public static synthetic lambda$sIea0VfMPIGsR0Xwg7rABysHwZ4(Lcom/android/server/wm/Task$FindRootHelper;Lcom/android/server/wm/ActivityRecord;ZZ)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/Task$FindRootHelper;->processActivity(Lcom/android/server/wm/ActivityRecord;ZZ)Z

    move-result p0

    return p0
.end method

.method private processActivity(Lcom/android/server/wm/ActivityRecord;ZZ)Z
    .locals 2
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "ignoreRelinquishIdentity"    # Z
    .param p3, "setToBottomIfNone"    # Z

    .line 492
    iget-object v0, p0, Lcom/android/server/wm/Task$FindRootHelper;->mRoot:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    .line 495
    iput-object p1, p0, Lcom/android/server/wm/Task$FindRootHelper;->mRoot:Lcom/android/server/wm/ActivityRecord;

    .line 498
    :cond_0
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    .line 501
    :cond_1
    iput-object p1, p0, Lcom/android/server/wm/Task$FindRootHelper;->mRoot:Lcom/android/server/wm/ActivityRecord;

    .line 504
    if-nez p2, :cond_2

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x1000

    if-nez v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method


# virtual methods
.method findRoot(ZZ)Lcom/android/server/wm/ActivityRecord;
    .locals 4
    .param p1, "ignoreRelinquishIdentity"    # Z
    .param p2, "setToBottomIfNone"    # Z

    .line 481
    sget-object v0, Lcom/android/server/wm/-$$Lambda$Task$FindRootHelper$sIea0VfMPIGsR0Xwg7rABysHwZ4;->INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$FindRootHelper$sIea0VfMPIGsR0Xwg7rABysHwZ4;

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 482
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 483
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 481
    invoke-static {v0, p0, v1, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainFunction(Lcom/android/internal/util/function/QuadFunction;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledFunction;

    move-result-object v0

    .line 484
    .local v0, "f":Lcom/android/internal/util/function/pooled/PooledFunction;
    invoke-direct {p0}, Lcom/android/server/wm/Task$FindRootHelper;->clear()V

    .line 485
    iget-object v1, p0, Lcom/android/server/wm/Task$FindRootHelper;->this$0:Lcom/android/server/wm/Task;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Function;Z)Z

    .line 486
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledFunction;->recycle()V

    .line 487
    iget-object v1, p0, Lcom/android/server/wm/Task$FindRootHelper;->mRoot:Lcom/android/server/wm/ActivityRecord;

    return-object v1
.end method
