.class abstract Lcom/android/server/display/color/TintController;
.super Ljava/lang/Object;
.source "TintController.java"


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mIsActivated:Ljava/lang/Boolean;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static matrixToString([FI)Ljava/lang/String;
    .locals 6
    .param p0, "matrix"    # [F
    .param p1, "columns"    # I

    .line 107
    const-string v0, ""

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_3

    if-gtz p1, :cond_0

    goto :goto_1

    .line 114
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 115
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_2

    .line 116
    rem-int v4, v3, p1

    if-nez v4, :cond_1

    .line 117
    const-string v4, "\n      "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    :cond_1
    new-array v4, v2, [Ljava/lang/Object;

    aget v5, p0, v3

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "%9.6f"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 121
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 108
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid arguments when formatting matrix to string, matrix is null: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_4

    move v1, v2

    :cond_4
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " columns: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ColorDisplayService"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return-object v0
.end method


# virtual methods
.method public cancelAnimator()V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/android/server/display/color/TintController;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 45
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 73
    return-void
.end method

.method public endAnimator()V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/android/server/display/color/TintController;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/color/TintController;->mAnimator:Landroid/animation/ValueAnimator;

    .line 55
    :cond_0
    return-void
.end method

.method public getAnimator()Landroid/animation/ValueAnimator;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/android/server/display/color/TintController;->mAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method public abstract getLevel()I
.end method

.method public abstract getMatrix()[F
.end method

.method public isActivated()Z
    .locals 1

    .line 62
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

    .line 66
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

    .line 58
    iput-object p1, p0, Lcom/android/server/display/color/TintController;->mIsActivated:Ljava/lang/Boolean;

    .line 59
    return-void
.end method

.method public setAnimator(Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/ValueAnimator;

    .line 35
    iput-object p1, p0, Lcom/android/server/display/color/TintController;->mAnimator:Landroid/animation/ValueAnimator;

    .line 36
    return-void
.end method

.method public abstract setMatrix(I)V
.end method

.method public abstract setUp(Landroid/content/Context;Z)V
.end method
