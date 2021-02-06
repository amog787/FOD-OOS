.class Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;
.super Ljava/lang/Object;
.source "ActivityStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckBehindFullscreenActivityHelper"
.end annotation


# instance fields
.field private mAboveTop:Z

.field private mBehindFullscreenActivity:Z

.field private mHandleBehindFullscreenActivity:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mHandlingOccluded:Z

.field private mToCheck:Lcom/android/server/wm/ActivityRecord;

.field final synthetic this$0:Lcom/android/server/wm/ActivityStack;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/ActivityStack;)V
    .locals 0

    .line 422
    iput-object p1, p0, Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;->this$0:Lcom/android/server/wm/ActivityStack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityStack$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wm/ActivityStack;
    .param p2, "x1"    # Lcom/android/server/wm/ActivityStack$1;

    .line 422
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;-><init>(Lcom/android/server/wm/ActivityStack;)V

    return-void
.end method

.method public static synthetic lambda$hxEhv3lodv2mTq0c1tG208T2TSs(Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;->processActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method private processActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 3
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "topActivity"    # Lcom/android/server/wm/ActivityRecord;

    .line 466
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;->mAboveTop:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 467
    if-ne p1, p2, :cond_1

    .line 468
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;->mToCheck:Lcom/android/server/wm/ActivityRecord;

    if-ne p1, v0, :cond_0

    .line 470
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;->mBehindFullscreenActivity:Z

    .line 471
    return v1

    .line 473
    :cond_0
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;->mAboveTop:Z

    .line 475
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;->mBehindFullscreenActivity:Z

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;->mBehindFullscreenActivity:Z

    .line 476
    return v2

    .line 479
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;->mHandlingOccluded:Z

    if-eqz v0, :cond_3

    .line 481
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;->mBehindFullscreenActivity:Z

    if-eqz v0, :cond_5

    .line 482
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;->mHandleBehindFullscreenActivity:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 484
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;->mToCheck:Lcom/android/server/wm/ActivityRecord;

    if-ne p1, v0, :cond_4

    .line 485
    return v1

    .line 486
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;->mBehindFullscreenActivity:Z

    if-eqz v0, :cond_5

    .line 488
    return v1

    .line 490
    :cond_5
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;->mBehindFullscreenActivity:Z

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;->mBehindFullscreenActivity:Z

    .line 491
    return v2
.end method

.method private reset(Lcom/android/server/wm/ActivityRecord;Ljava/util/function/Consumer;)V
    .locals 4
    .param p1, "toCheck"    # Lcom/android/server/wm/ActivityRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/ActivityRecord;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)V"
        }
    .end annotation

    .line 431
    .local p2, "handleBehindFullscreenActivity":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/ActivityRecord;>;"
    iput-object p1, p0, Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;->mToCheck:Lcom/android/server/wm/ActivityRecord;

    .line 432
    iput-object p2, p0, Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;->mHandleBehindFullscreenActivity:Ljava/util/function/Consumer;

    .line 433
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;->mAboveTop:Z

    .line 434
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;->mBehindFullscreenActivity:Z

    .line 436
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;->this$0:Lcom/android/server/wm/ActivityStack;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 439
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;->mAboveTop:Z

    .line 440
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;->mBehindFullscreenActivity:Z

    .line 443
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;->mToCheck:Lcom/android/server/wm/ActivityRecord;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;->mHandleBehindFullscreenActivity:Ljava/util/function/Consumer;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;->mHandlingOccluded:Z

    .line 444
    return-void
.end method


# virtual methods
.method process(Lcom/android/server/wm/ActivityRecord;Ljava/util/function/Consumer;)Z
    .locals 3
    .param p1, "toCheck"    # Lcom/android/server/wm/ActivityRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/ActivityRecord;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)Z"
        }
    .end annotation

    .line 448
    .local p2, "handleBehindFullscreenActivity":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;->reset(Lcom/android/server/wm/ActivityRecord;Ljava/util/function/Consumer;)V

    .line 450
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;->mHandlingOccluded:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;->mBehindFullscreenActivity:Z

    if-eqz v0, :cond_0

    .line 451
    const/4 v0, 0x1

    return v0

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;->this$0:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 455
    .local v0, "topActivity":Lcom/android/server/wm/ActivityRecord;
    sget-object v1, Lcom/android/server/wm/-$$Lambda$ActivityStack$CheckBehindFullscreenActivityHelper$hxEhv3lodv2mTq0c1tG208T2TSs;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityStack$CheckBehindFullscreenActivityHelper$hxEhv3lodv2mTq0c1tG208T2TSs;

    const-class v2, Lcom/android/server/wm/ActivityRecord;

    .line 457
    invoke-static {v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v2

    .line 455
    invoke-static {v1, p0, v2, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainFunction(Lcom/android/internal/util/function/TriFunction;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledFunction;

    move-result-object v1

    .line 458
    .local v1, "f":Lcom/android/internal/util/function/pooled/PooledFunction;
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;->this$0:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityStack;->forAllActivities(Ljava/util/function/Function;)Z

    .line 459
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledFunction;->recycle()V

    .line 461
    iget-boolean v2, p0, Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;->mBehindFullscreenActivity:Z

    return v2
.end method
