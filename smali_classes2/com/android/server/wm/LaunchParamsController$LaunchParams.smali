.class Lcom/android/server/wm/LaunchParamsController$LaunchParams;
.super Ljava/lang/Object;
.source "LaunchParamsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/LaunchParamsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LaunchParams"
.end annotation


# instance fields
.field final mBounds:Landroid/graphics/Rect;

.field mPreferredDisplayId:I

.field mWindowingMode:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 223
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 224
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 226
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 228
    .local v2, "that":Lcom/android/server/wm/LaunchParamsController$LaunchParams;
    iget v3, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    iget v4, v2, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    if-eq v3, v4, :cond_2

    return v1

    .line 229
    :cond_2
    iget v3, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    iget v4, v2, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    if-eq v3, v4, :cond_3

    return v1

    .line 230
    :cond_3
    iget-object v3, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    if-eqz v3, :cond_4

    iget-object v0, v2, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_4
    iget-object v3, v2, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    if-nez v3, :cond_5

    goto :goto_0

    :cond_5
    move v0, v1

    :goto_0
    return v0

    .line 224
    .end local v2    # "that":Lcom/android/server/wm/LaunchParamsController$LaunchParams;
    :cond_6
    :goto_1
    return v1
.end method

.method hasPreferredDisplay()Z
    .locals 2

    .line 218
    iget v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method hasWindowingMode()Z
    .locals 1

    .line 214
    iget v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 235
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 236
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    add-int/2addr v1, v2

    .line 237
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    add-int/2addr v0, v2

    .line 238
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method isEmpty()Z
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method reset()V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 196
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    .line 197
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 198
    return-void
.end method

.method set(Lcom/android/server/wm/LaunchParamsController$LaunchParams;)V
    .locals 2
    .param p1, "params"    # Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 202
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 203
    iget v0, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    iput v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    .line 204
    iget v0, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    iput v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 205
    return-void
.end method
