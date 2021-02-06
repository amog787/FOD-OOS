.class final Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;
.super Ljava/lang/Object;
.source "DisplayContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TaskForResizePointSearchResult"
.end annotation


# instance fields
.field private delta:I

.field private mTmpRect:Landroid/graphics/Rect;

.field private taskForResize:Lcom/android/server/wm/Task;

.field private x:I

.field private y:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 4512
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4517
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->mTmpRect:Landroid/graphics/Rect;

    return-void
.end method

.method public static synthetic lambda$1FHFJXiYTNFcgi5tiBrxzbmjdWw(Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;Lcom/android/server/wm/Task;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->processTask(Lcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method

.method private processTask(Lcom/android/server/wm/Task;)Z
    .locals 4
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 4535
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->canResizeTask()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 4536
    return v1

    .line 4541
    :cond_0
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QuickReply: skip resize for stack="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WindowManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4543
    return v1

    .line 4547
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 4548
    return v1

    .line 4551
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4552
    return v1

    .line 4560
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    .line 4561
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->mTmpRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->delta:I

    neg-int v3, v2

    neg-int v2, v2

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 4562
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->mTmpRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->x:I

    iget v3, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->y:I

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4563
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->mTmpRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->delta:I

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 4565
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->mTmpRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->x:I

    iget v3, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->y:I

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_4

    .line 4566
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->taskForResize:Lcom/android/server/wm/Task;

    .line 4567
    return v1

    .line 4571
    :cond_4
    return v1

    .line 4574
    :cond_5
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method process(Lcom/android/server/wm/WindowContainer;III)Lcom/android/server/wm/Task;
    .locals 2
    .param p1, "root"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "delta"    # I

    .line 4520
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->taskForResize:Lcom/android/server/wm/Task;

    .line 4521
    iput p2, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->x:I

    .line 4522
    iput p3, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->y:I

    .line 4523
    iput p4, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->delta:I

    .line 4524
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 4526
    sget-object v0, Lcom/android/server/wm/-$$Lambda$DisplayContent$TaskForResizePointSearchResult$1FHFJXiYTNFcgi5tiBrxzbmjdWw;->INSTANCE:Lcom/android/server/wm/-$$Lambda$DisplayContent$TaskForResizePointSearchResult$1FHFJXiYTNFcgi5tiBrxzbmjdWw;

    const-class v1, Lcom/android/server/wm/Task;

    .line 4527
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    .line 4526
    invoke-static {v0, p0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainFunction(Ljava/util/function/BiFunction;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;)Lcom/android/internal/util/function/pooled/PooledFunction;

    move-result-object v0

    .line 4528
    .local v0, "f":Lcom/android/internal/util/function/pooled/PooledFunction;
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Function;)Z

    .line 4529
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledFunction;->recycle()V

    .line 4531
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->taskForResize:Lcom/android/server/wm/Task;

    return-object v1
.end method
