.class public Lcom/android/server/wm/SimpleSurfaceAnimatable;
.super Ljava/lang/Object;
.source "SimpleSurfaceAnimatable.java"

# interfaces
.implements Lcom/android/server/wm/SurfaceAnimator$Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;
    }
.end annotation


# instance fields
.field private final mAnimationLeashFactory:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final mAnimationLeashParent:Landroid/view/SurfaceControl;

.field private final mCommitTransactionRunnable:Ljava/lang/Runnable;

.field private final mHeight:I

.field private final mOnAnimationFinished:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnAnimationLeashCreated:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "Landroid/view/SurfaceControl$Transaction;",
            "Landroid/view/SurfaceControl;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnAnimationLeashLost:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private final mParentSurfaceControl:Landroid/view/SurfaceControl;

.field private final mPendingTransaction:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private final mShouldDeferAnimationFinish:Z

.field private final mSurfaceControl:Landroid/view/SurfaceControl;

.field private final mWidth:I


# direct methods
.method private constructor <init>(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {p1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->access$000(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mWidth:I

    .line 54
    invoke-static {p1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->access$100(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mHeight:I

    .line 55
    invoke-static {p1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->access$200(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mShouldDeferAnimationFinish:Z

    .line 56
    invoke-static {p1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->access$300(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mAnimationLeashParent:Landroid/view/SurfaceControl;

    .line 57
    invoke-static {p1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->access$400(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 58
    invoke-static {p1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->access$500(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mParentSurfaceControl:Landroid/view/SurfaceControl;

    .line 59
    invoke-static {p1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->access$600(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mCommitTransactionRunnable:Ljava/lang/Runnable;

    .line 60
    invoke-static {p1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->access$700(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)Ljava/util/function/Supplier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mAnimationLeashFactory:Ljava/util/function/Supplier;

    .line 61
    invoke-static {p1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->access$800(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)Ljava/util/function/BiConsumer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mOnAnimationLeashCreated:Ljava/util/function/BiConsumer;

    .line 62
    invoke-static {p1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->access$900(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)Ljava/util/function/Consumer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mOnAnimationLeashLost:Ljava/util/function/Consumer;

    .line 63
    invoke-static {p1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->access$1000(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)Ljava/util/function/Supplier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mPendingTransaction:Ljava/util/function/Supplier;

    .line 64
    invoke-static {p1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->access$1100(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)Ljava/util/function/Consumer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mOnAnimationFinished:Ljava/util/function/Consumer;

    .line 65
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;Lcom/android/server/wm/SimpleSurfaceAnimatable$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;
    .param p2, "x1"    # Lcom/android/server/wm/SimpleSurfaceAnimatable$1;

    .line 35
    invoke-direct {p0, p1}, Lcom/android/server/wm/SimpleSurfaceAnimatable;-><init>(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)V

    return-void
.end method


# virtual methods
.method public commitPendingTransaction()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mCommitTransactionRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 76
    return-void
.end method

.method public getAnimationLeashParent()Landroid/view/SurfaceControl;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mAnimationLeashParent:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public getParentSurfaceControl()Landroid/view/SurfaceControl;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mParentSurfaceControl:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public getPendingTransaction()Landroid/view/SurfaceControl$Transaction;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mPendingTransaction:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    return-object v0
.end method

.method public getSurfaceControl()Landroid/view/SurfaceControl;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public getSurfaceHeight()I
    .locals 1

    .line 122
    iget v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mHeight:I

    return v0
.end method

.method public getSurfaceWidth()I
    .locals 1

    .line 117
    iget v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mWidth:I

    return v0
.end method

.method public makeAnimationLeash()Landroid/view/SurfaceControl$Builder;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mAnimationLeashFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Builder;

    return-object v0
.end method

.method public onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 1
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "leash"    # Landroid/view/SurfaceControl;

    .line 80
    iget-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mOnAnimationLeashCreated:Ljava/util/function/BiConsumer;

    if-eqz v0, :cond_0

    .line 81
    invoke-interface {v0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 84
    :cond_0
    return-void
.end method

.method public onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V
    .locals 1
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 88
    iget-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mOnAnimationLeashLost:Ljava/util/function/Consumer;

    if-eqz v0, :cond_0

    .line 89
    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 91
    :cond_0
    return-void
.end method

.method public shouldDeferAnimationFinish(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "endDeferFinishCallback"    # Ljava/lang/Runnable;

    .line 127
    iget-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mOnAnimationFinished:Ljava/util/function/Consumer;

    if-eqz v0, :cond_0

    .line 128
    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 130
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mShouldDeferAnimationFinish:Z

    return v0
.end method
