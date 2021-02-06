.class Lcom/android/server/wm/ActivityStack$EnsureVisibleActivitiesConfigHelper;
.super Ljava/lang/Object;
.source "ActivityStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EnsureVisibleActivitiesConfigHelper"
.end annotation


# instance fields
.field private mBehindFullscreen:Z

.field private mPreserveWindow:Z

.field private mUpdateConfig:Z

.field final synthetic this$0:Lcom/android/server/wm/ActivityStack;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/ActivityStack;)V
    .locals 0

    .line 383
    iput-object p1, p0, Lcom/android/server/wm/ActivityStack$EnsureVisibleActivitiesConfigHelper;->this$0:Lcom/android/server/wm/ActivityStack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityStack$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wm/ActivityStack;
    .param p2, "x1"    # Lcom/android/server/wm/ActivityStack$1;

    .line 383
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityStack$EnsureVisibleActivitiesConfigHelper;-><init>(Lcom/android/server/wm/ActivityStack;)V

    return-void
.end method


# virtual methods
.method process(Lcom/android/server/wm/ActivityRecord;Z)V
    .locals 3
    .param p1, "start"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "preserveWindow"    # Z

    .line 395
    if-eqz p1, :cond_2

    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 398
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityStack$EnsureVisibleActivitiesConfigHelper;->reset(Z)V

    .line 400
    sget-object v0, Lcom/android/server/wm/-$$Lambda$JTKQBRuxxgBAO5y04IFnI4psyA4;->INSTANCE:Lcom/android/server/wm/-$$Lambda$JTKQBRuxxgBAO5y04IFnI4psyA4;

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 402
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    .line 400
    invoke-static {v0, p0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainFunction(Ljava/util/function/BiFunction;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;)Lcom/android/internal/util/function/pooled/PooledFunction;

    move-result-object v0

    .line 403
    .local v0, "f":Lcom/android/internal/util/function/pooled/PooledFunction;
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack$EnsureVisibleActivitiesConfigHelper;->this$0:Lcom/android/server/wm/ActivityStack;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p1, v2, v2}, Lcom/android/server/wm/ActivityStack;->forAllActivities(Ljava/util/function/Function;Lcom/android/server/wm/WindowContainer;ZZ)Z

    .line 404
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledFunction;->recycle()V

    .line 406
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityStack$EnsureVisibleActivitiesConfigHelper;->mUpdateConfig:Z

    if-eqz v1, :cond_1

    .line 409
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack$EnsureVisibleActivitiesConfigHelper;->this$0:Lcom/android/server/wm/ActivityStack;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStack;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities()Z

    .line 411
    :cond_1
    return-void

    .line 396
    .end local v0    # "f":Lcom/android/internal/util/function/pooled/PooledFunction;
    :cond_2
    :goto_0
    return-void
.end method

.method processActivity(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 3
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 414
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStack$EnsureVisibleActivitiesConfigHelper;->mUpdateConfig:Z

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityStack$EnsureVisibleActivitiesConfigHelper;->mPreserveWindow:Z

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(IZ)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStack$EnsureVisibleActivitiesConfigHelper;->mUpdateConfig:Z

    .line 415
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStack$EnsureVisibleActivitiesConfigHelper;->mBehindFullscreen:Z

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStack$EnsureVisibleActivitiesConfigHelper;->mBehindFullscreen:Z

    .line 416
    return v0
.end method

.method reset(Z)V
    .locals 1
    .param p1, "preserveWindow"    # Z

    .line 389
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityStack$EnsureVisibleActivitiesConfigHelper;->mPreserveWindow:Z

    .line 390
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStack$EnsureVisibleActivitiesConfigHelper;->mUpdateConfig:Z

    .line 391
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStack$EnsureVisibleActivitiesConfigHelper;->mBehindFullscreen:Z

    .line 392
    return-void
.end method
