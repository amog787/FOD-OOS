.class Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;
.super Ljava/lang/Object;
.source "SimpleSurfaceAnimatable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SimpleSurfaceAnimatable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private mAnimationLeashFactory:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimationLeashParent:Landroid/view/SurfaceControl;

.field private mCommitTransactionRunnable:Ljava/lang/Runnable;

.field private mHeight:I

.field private mOnAnimationFinished:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mOnAnimationLeashCreated:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "Landroid/view/SurfaceControl$Transaction;",
            "Landroid/view/SurfaceControl;",
            ">;"
        }
    .end annotation
.end field

.field private mOnAnimationLeashLost:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private mParentSurfaceControl:Landroid/view/SurfaceControl;

.field private mPendingTransactionSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private mShouldDeferAnimationFinish:Z

.field private mSurfaceControl:Landroid/view/SurfaceControl;

.field private mWidth:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mWidth:I

    .line 139
    iput v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mHeight:I

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mShouldDeferAnimationFinish:Z

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mAnimationLeashParent:Landroid/view/SurfaceControl;

    .line 145
    iput-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 148
    iput-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mParentSurfaceControl:Landroid/view/SurfaceControl;

    .line 152
    iput-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mOnAnimationLeashCreated:Ljava/util/function/BiConsumer;

    .line 156
    iput-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mOnAnimationLeashLost:Ljava/util/function/Consumer;

    .line 159
    iput-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mOnAnimationFinished:Ljava/util/function/Consumer;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    .line 137
    iget v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mWidth:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    .line 137
    iget v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mHeight:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)Ljava/util/function/Supplier;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    .line 137
    iget-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mPendingTransactionSupplier:Ljava/util/function/Supplier;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)Ljava/util/function/Consumer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    .line 137
    iget-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mOnAnimationFinished:Ljava/util/function/Consumer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    .line 137
    iget-boolean v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mShouldDeferAnimationFinish:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)Landroid/view/SurfaceControl;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    .line 137
    iget-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mAnimationLeashParent:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)Landroid/view/SurfaceControl;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    .line 137
    iget-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)Landroid/view/SurfaceControl;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    .line 137
    iget-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mParentSurfaceControl:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    .line 137
    iget-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mCommitTransactionRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)Ljava/util/function/Supplier;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    .line 137
    iget-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mAnimationLeashFactory:Ljava/util/function/Supplier;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)Ljava/util/function/BiConsumer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    .line 137
    iget-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mOnAnimationLeashCreated:Ljava/util/function/BiConsumer;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)Ljava/util/function/Consumer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    .line 137
    iget-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mOnAnimationLeashLost:Ljava/util/function/Consumer;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/android/server/wm/SurfaceAnimator$Animatable;
    .locals 2

    .line 293
    iget-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mPendingTransactionSupplier:Ljava/util/function/Supplier;

    if-eqz v0, :cond_3

    .line 296
    iget-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mAnimationLeashFactory:Ljava/util/function/Supplier;

    if-eqz v0, :cond_2

    .line 299
    iget-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mCommitTransactionRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 302
    iget-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    .line 305
    new-instance v0, Lcom/android/server/wm/SimpleSurfaceAnimatable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/SimpleSurfaceAnimatable;-><init>(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;Lcom/android/server/wm/SimpleSurfaceAnimatable$1;)V

    return-object v0

    .line 303
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mSurfaceControl cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 300
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mCommitTransactionRunnable cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mAnimationLeashFactory cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mPendingTransactionSupplier cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAnimationLeashParent(Landroid/view/SurfaceControl;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;
    .locals 0
    .param p1, "animationLeashParent"    # Landroid/view/SurfaceControl;

    .line 234
    iput-object p1, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mAnimationLeashParent:Landroid/view/SurfaceControl;

    .line 235
    return-object p0
.end method

.method public setAnimationLeashSupplier(Ljava/util/function/Supplier;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Builder;",
            ">;)",
            "Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;"
        }
    .end annotation

    .line 225
    .local p1, "animationLeashFactory":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/view/SurfaceControl$Builder;>;"
    iput-object p1, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mAnimationLeashFactory:Ljava/util/function/Supplier;

    .line 226
    return-object p0
.end method

.method public setCommitTransactionRunnable(Ljava/lang/Runnable;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;
    .locals 0
    .param p1, "commitTransactionRunnable"    # Ljava/lang/Runnable;

    .line 177
    iput-object p1, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mCommitTransactionRunnable:Ljava/lang/Runnable;

    .line 178
    return-object p0
.end method

.method public setHeight(I)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;
    .locals 0
    .param p1, "height"    # I

    .line 272
    iput p1, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mHeight:I

    .line 273
    return-object p0
.end method

.method public setOnAnimationLeashCreated(Ljava/util/function/BiConsumer;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Landroid/view/SurfaceControl$Transaction;",
            "Landroid/view/SurfaceControl;",
            ">;)",
            "Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;"
        }
    .end annotation

    .line 192
    .local p1, "onAnimationLeashCreated":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;>;"
    iput-object p1, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mOnAnimationLeashCreated:Ljava/util/function/BiConsumer;

    .line 193
    return-object p0
.end method

.method public setOnAnimationLeashLost(Ljava/util/function/Consumer;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;)",
            "Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;"
        }
    .end annotation

    .line 205
    .local p1, "onAnimationLeashLost":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/SurfaceControl$Transaction;>;"
    iput-object p1, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mOnAnimationLeashLost:Ljava/util/function/Consumer;

    .line 206
    return-object p0
.end method

.method public setParentSurfaceControl(Landroid/view/SurfaceControl;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;
    .locals 0
    .param p1, "parentSurfaceControl"    # Landroid/view/SurfaceControl;

    .line 252
    iput-object p1, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mParentSurfaceControl:Landroid/view/SurfaceControl;

    .line 253
    return-object p0
.end method

.method public setPendingTransactionSupplier(Ljava/util/function/Supplier;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;)",
            "Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;"
        }
    .end annotation

    .line 214
    .local p1, "pendingTransactionSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/view/SurfaceControl$Transaction;>;"
    iput-object p1, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mPendingTransactionSupplier:Ljava/util/function/Supplier;

    .line 215
    return-object p0
.end method

.method public setShouldDeferAnimationFinish(ZLjava/util/function/Consumer;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;
    .locals 0
    .param p1, "shouldDeferAnimationFinish"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Runnable;",
            ">;)",
            "Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;"
        }
    .end annotation

    .line 287
    .local p2, "onAnimationFinish":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Runnable;>;"
    iput-boolean p1, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mShouldDeferAnimationFinish:Z

    .line 288
    iput-object p2, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mOnAnimationFinished:Ljava/util/function/Consumer;

    .line 289
    return-object p0
.end method

.method public setSurfaceControl(Landroid/view/SurfaceControl;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;
    .locals 0
    .param p1, "surfaceControl"    # Landroid/view/SurfaceControl;

    .line 243
    iput-object p1, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 244
    return-object p0
.end method

.method public setWidth(I)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;
    .locals 0
    .param p1, "width"    # I

    .line 262
    iput p1, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mWidth:I

    .line 263
    return-object p0
.end method
