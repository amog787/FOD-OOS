.class abstract Lcom/android/server/display/color/TintController;
.super Ljava/lang/Object;
.source "TintController.java"


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mIsActivated:Ljava/lang/Boolean;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelAnimator()V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/android/server/display/color/TintController;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 44
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 72
    return-void
.end method

.method public endAnimator()V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/android/server/display/color/TintController;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/color/TintController;->mAnimator:Landroid/animation/ValueAnimator;

    .line 54
    :cond_0
    return-void
.end method

.method public getAnimator()Landroid/animation/ValueAnimator;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/android/server/display/color/TintController;->mAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method public abstract getLevel()I
.end method

.method public abstract getMatrix()[F
.end method

.method public isActivated()Z
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/android/server/display/color/TintController;->mIsActivated:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isActivatedStateNotSet()Z
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/android/server/display/color/TintController;->mIsActivated:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract isAvailable(Landroid/content/Context;)Z
.end method

.method public setActivated(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "isActivated"    # Ljava/lang/Boolean;

    .line 57
    iput-object p1, p0, Lcom/android/server/display/color/TintController;->mIsActivated:Ljava/lang/Boolean;

    .line 58
    return-void
.end method

.method public setAnimator(Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/ValueAnimator;

    .line 34
    iput-object p1, p0, Lcom/android/server/display/color/TintController;->mAnimator:Landroid/animation/ValueAnimator;

    .line 35
    return-void
.end method

.method public abstract setMatrix(I)V
.end method

.method public abstract setUp(Landroid/content/Context;Z)V
.end method
