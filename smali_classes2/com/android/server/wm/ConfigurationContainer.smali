.class public abstract Lcom/android/server/wm/ConfigurationContainer;
.super Ljava/lang/Object;
.source "ConfigurationContainer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/android/server/wm/ConfigurationContainer;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final BOUNDS_CHANGE_NONE:I = 0x0

.field static final BOUNDS_CHANGE_POSITION:I = 0x1

.field static final BOUNDS_CHANGE_SIZE:I = 0x2


# instance fields
.field private mChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ConfigurationContainerListener;",
            ">;"
        }
    .end annotation
.end field

.field private mFullConfiguration:Landroid/content/res/Configuration;

.field private mHasOverrideConfiguration:Z

.field private mMergedOverrideConfiguration:Landroid/content/res/Configuration;

.field private mRequestedOverrideConfiguration:Landroid/content/res/Configuration;

.field private final mRequestsTmpConfig:Landroid/content/res/Configuration;

.field private mResolvedOverrideConfiguration:Landroid/content/res/Configuration;

.field private final mResolvedTmpConfig:Landroid/content/res/Configuration;

.field private mReturnBounds:Landroid/graphics/Rect;

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mReturnBounds:Landroid/graphics/Rect;

    .line 62
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestedOverrideConfiguration:Landroid/content/res/Configuration;

    .line 68
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mResolvedOverrideConfiguration:Landroid/content/res/Configuration;

    .line 77
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    .line 84
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mChangeListeners:Ljava/util/ArrayList;

    .line 89
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    .line 90
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mResolvedTmpConfig:Landroid/content/res/Configuration;

    .line 93
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mTmpRect:Landroid/graphics/Rect;

    return-void
.end method

.method public static equivalentBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 1
    .param p0, "bounds"    # Landroid/graphics/Rect;
    .param p1, "other"    # Landroid/graphics/Rect;

    .line 232
    if-eq p0, p1, :cond_2

    if-eqz p0, :cond_0

    .line 233
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    .line 234
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 232
    :goto_1
    return v0
.end method


# virtual methods
.method containsListener(Lcom/android/server/wm/ConfigurationContainerListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/android/server/wm/ConfigurationContainerListener;

    .line 544
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method diffRequestedOverrideBounds(Landroid/graphics/Rect;)I
    .locals 4
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 321
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->equivalentRequestedOverrideBounds(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    const/4 v0, 0x0

    return v0

    .line 325
    :cond_0
    const/4 v0, 0x0

    .line 327
    .local v0, "boundsChange":I
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 329
    .local v1, "existingBounds":Landroid/graphics/Rect;
    if-eqz p1, :cond_1

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    if-ne v2, v3, :cond_1

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    if-eq v2, v3, :cond_2

    .line 331
    :cond_1
    or-int/lit8 v0, v0, 0x1

    .line 334
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 335
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-eq v2, v3, :cond_4

    .line 336
    :cond_3
    or-int/lit8 v0, v0, 0x2

    .line 339
    :cond_4
    return v0
.end method

.method public dumpChildrenNames(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 595
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 596
    .local v0, "childPrefix":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v3

    invoke-static {v3}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v3

    invoke-static {v3}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " override-mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideWindowingMode()I

    move-result v3

    invoke-static {v3}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 596
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 600
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 601
    invoke-virtual {p0, v2}, Lcom/android/server/wm/ConfigurationContainer;->getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;

    move-result-object v3

    .line 602
    .local v3, "cc":Lcom/android/server/wm/ConfigurationContainer;, "TE;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 603
    invoke-virtual {v3, p1, v0}, Lcom/android/server/wm/ConfigurationContainer;->dumpChildrenNames(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 600
    .end local v3    # "cc":Lcom/android/server/wm/ConfigurationContainer;, "TE;"
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 605
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V
    .locals 7
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "logLevel"    # I

    .line 575
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    if-eqz p4, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mHasOverrideConfiguration:Z

    if-nez v0, :cond_0

    .line 576
    return-void

    .line 579
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 580
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestedOverrideConfiguration:Landroid/content/res/Configuration;

    const-wide v3, 0x10b00000001L

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-ne p4, v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    move v5, v6

    :goto_0
    invoke-virtual {v2, p1, v3, v4, v5}, Landroid/content/res/Configuration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JZ)V

    .line 582
    if-nez p4, :cond_2

    .line 583
    iget-object v2, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    const-wide v3, 0x10b00000002L

    invoke-virtual {v2, p1, v3, v4, v6}, Landroid/content/res/Configuration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JZ)V

    .line 584
    iget-object v2, p0, Lcom/android/server/wm/ConfigurationContainer;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    const-wide v3, 0x10b00000003L

    invoke-virtual {v2, p1, v3, v4, v6}, Landroid/content/res/Configuration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JZ)V

    .line 587
    :cond_2
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 588
    return-void
.end method

.method public equivalentRequestedOverrideBounds(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 225
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/wm/ConfigurationContainer;->equivalentBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public getActivityType()I
    .locals 1

    .line 438
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v0

    return v0
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 2

    .line 243
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mReturnBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 244
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mReturnBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .line 248
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 249
    return-void
.end method

.method protected abstract getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation
.end method

.method protected abstract getChildCount()I
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .line 107
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public getMergedOverrideConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .line 182
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .line 608
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getParent()Lcom/android/server/wm/ConfigurationContainer;
.end method

.method public getPosition(Landroid/graphics/Point;)V
    .locals 3
    .param p1, "out"    # Landroid/graphics/Point;

    .line 255
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 256
    .local v0, "bounds":Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 257
    return-void
.end method

.method public getRequestedOverrideBounds()Landroid/graphics/Rect;
    .locals 2

    .line 270
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mReturnBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 272
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mReturnBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getRequestedOverrideBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .line 288
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 289
    return-void
.end method

.method public getRequestedOverrideConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .line 154
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestedOverrideConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public getRequestedOverrideWindowingMode()I
    .locals 1

    .line 357
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestedOverrideConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    return v0
.end method

.method getResolvedOverrideBounds()Landroid/graphics/Rect;
    .locals 2

    .line 260
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mReturnBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 261
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mReturnBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method getResolvedOverrideConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .line 159
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mResolvedOverrideConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public getWindowConfiguration()Landroid/app/WindowConfiguration;
    .locals 1

    .line 347
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    return-object v0
.end method

.method public getWindowingMode()I
    .locals 1

    .line 352
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    return v0
.end method

.method hasChild()Z
    .locals 1

    .line 616
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasCompatibleActivityType(Lcom/android/server/wm/ConfigurationContainer;)Z
    .locals 5
    .param p1, "other"    # Lcom/android/server/wm/ConfigurationContainer;

    .line 482
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v0

    .line 483
    .local v0, "thisType":I
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v1

    .line 485
    .local v1, "otherType":I
    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 486
    return v2

    .line 488
    :cond_0
    const/4 v3, 0x4

    const/4 v4, 0x0

    if-ne v0, v3, :cond_1

    .line 490
    return v4

    .line 493
    :cond_1
    if-eqz v0, :cond_3

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move v2, v4

    :cond_3
    :goto_0
    return v2
.end method

.method public hasOverrideBounds()Z
    .locals 1

    .line 280
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method hasOverrideConfiguration()Z
    .locals 1

    .line 343
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    iget-boolean v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mHasOverrideConfiguration:Z

    return v0
.end method

.method public inFreeformWindowingMode()Z
    .locals 2

    .line 432
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public inMultiWindowMode()Z
    .locals 2

    .line 390
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 391
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    .line 392
    .local v0, "windowingMode":I
    invoke-static {v0}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v1

    return v1
.end method

.method public inPinnedWindowingMode()Z
    .locals 2

    .line 428
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public inSplitScreenPrimaryWindowingMode()Z
    .locals 2

    .line 413
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public inSplitScreenSecondaryWindowingMode()Z
    .locals 2

    .line 406
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 407
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    .line 409
    .local v0, "windowingMode":I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public inSplitScreenWindowingMode()Z
    .locals 2

    .line 397
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 398
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    .line 400
    .local v0, "windowingMode":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public isActivityTypeAssistant()Z
    .locals 2

    .line 465
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isActivityTypeDream()Z
    .locals 2

    .line 469
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isActivityTypeHome()Z
    .locals 2

    .line 457
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isActivityTypeRecents()Z
    .locals 2

    .line 461
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isActivityTypeStandard()Z
    .locals 2

    .line 473
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isActivityTypeStandardOrUndefined()Z
    .locals 2

    .line 477
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v0

    .line 478
    .local v0, "activityType":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isAlwaysOnTop()Z
    .locals 1

    .line 612
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->isAlwaysOnTop()Z

    move-result v0

    return v0
.end method

.method public isCompatible(II)Z
    .locals 5
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I

    .line 510
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v0

    .line 511
    .local v0, "thisActivityType":I
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v1

    .line 512
    .local v1, "thisWindowingMode":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, p2, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    .line 513
    .local v4, "sameActivityType":Z
    :goto_0
    if-ne v1, p1, :cond_1

    move v2, v3

    .line 515
    .local v2, "sameWindowingMode":Z
    :cond_1
    if-eqz v4, :cond_2

    if-eqz v2, :cond_2

    .line 516
    return v3

    .line 519
    :cond_2
    if-eqz p2, :cond_3

    if-ne p2, v3, :cond_4

    .line 520
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandardOrUndefined()Z

    move-result v3

    if-nez v3, :cond_5

    .line 522
    :cond_4
    return v4

    .line 526
    :cond_5
    return v2
.end method

.method public matchParentBounds()Z
    .locals 1

    .line 214
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newParentConfig"    # Landroid/content/res/Configuration;

    .line 115
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mResolvedTmpConfig:Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/android/server/wm/ConfigurationContainer;->mResolvedOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 116
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->resolveOverrideConfiguration(Landroid/content/res/Configuration;)V

    .line 117
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 118
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/android/server/wm/ConfigurationContainer;->mResolvedOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 119
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->onMergedOverrideConfigurationChanged()V

    .line 120
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mResolvedTmpConfig:Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/android/server/wm/ConfigurationContainer;->mResolvedOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 128
    iget-object v1, p0, Lcom/android/server/wm/ConfigurationContainer;->mChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ConfigurationContainerListener;

    iget-object v2, p0, Lcom/android/server/wm/ConfigurationContainer;->mResolvedOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-interface {v1, v2}, Lcom/android/server/wm/ConfigurationContainerListener;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 127
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 132
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 133
    iget-object v1, p0, Lcom/android/server/wm/ConfigurationContainer;->mChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ConfigurationContainerListener;

    iget-object v2, p0, Lcom/android/server/wm/ConfigurationContainer;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-interface {v1, v2}, Lcom/android/server/wm/ConfigurationContainerListener;->onMergedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 132
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 136
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_2
    if-ltz v0, :cond_2

    .line 137
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ConfigurationContainer;->getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;

    move-result-object v1

    .line 138
    .local v1, "child":Lcom/android/server/wm/ConfigurationContainer;
    iget-object v2, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ConfigurationContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 136
    .end local v1    # "child":Lcom/android/server/wm/ConfigurationContainer;
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 140
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method onMergedOverrideConfigurationChanged()V
    .locals 3

    .line 192
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getParent()Lcom/android/server/wm/ConfigurationContainer;

    move-result-object v0

    .line 193
    .local v0, "parent":Lcom/android/server/wm/ConfigurationContainer;
    if-eqz v0, :cond_0

    .line 194
    iget-object v1, p0, Lcom/android/server/wm/ConfigurationContainer;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 195
    iget-object v1, p0, Lcom/android/server/wm/ConfigurationContainer;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    iget-object v2, p0, Lcom/android/server/wm/ConfigurationContainer;->mResolvedOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    goto :goto_0

    .line 197
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ConfigurationContainer;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    iget-object v2, p0, Lcom/android/server/wm/ConfigurationContainer;->mResolvedOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 199
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_1

    .line 200
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ConfigurationContainer;->getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;

    move-result-object v2

    .line 201
    .local v2, "child":Lcom/android/server/wm/ConfigurationContainer;
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->onMergedOverrideConfigurationChanged()V

    .line 199
    .end local v2    # "child":Lcom/android/server/wm/ConfigurationContainer;
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 203
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V
    .locals 1
    .param p1, "newParent"    # Lcom/android/server/wm/ConfigurationContainer;
    .param p2, "oldParent"    # Lcom/android/server/wm/ConfigurationContainer;

    .line 553
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    if-eqz p1, :cond_0

    .line 555
    iget-object v0, p1, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ConfigurationContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 557
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->onMergedOverrideConfigurationChanged()V

    .line 559
    :cond_0
    return-void
.end method

.method public onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "overrideConfiguration"    # Landroid/content/res/Configuration;

    .line 170
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mHasOverrideConfiguration:Z

    .line 171
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestedOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 173
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getParent()Lcom/android/server/wm/ConfigurationContainer;

    move-result-object v0

    .line 174
    .local v0, "parent":Lcom/android/server/wm/ConfigurationContainer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ConfigurationContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 175
    return-void
.end method

.method registerConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/wm/ConfigurationContainerListener;

    .line 530
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    return-void

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 534
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mResolvedOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-interface {p1, v0}, Lcom/android/server/wm/ConfigurationContainerListener;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 535
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-interface {p1, v0}, Lcom/android/server/wm/ConfigurationContainerListener;->onMergedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 536
    return-void
.end method

.method resolveOverrideConfiguration(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newParentConfig"    # Landroid/content/res/Configuration;

    .line 149
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mResolvedOverrideConfiguration:Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestedOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 150
    return-void
.end method

.method public setActivityType(I)V
    .locals 4
    .param p1, "activityType"    # I

    .line 443
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v0

    .line 444
    .local v0, "currentActivityType":I
    if-ne v0, p1, :cond_0

    .line 445
    return-void

    .line 447
    :cond_0
    if-nez v0, :cond_1

    .line 451
    iget-object v1, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 452
    iget-object v1, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1, p1}, Landroid/app/WindowConfiguration;->setActivityType(I)V

    .line 453
    iget-object v1, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ConfigurationContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 454
    return-void

    .line 448
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t change activity type once set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " activityType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    invoke-static {p1}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setAlwaysOnTop(Z)V
    .locals 2
    .param p1, "alwaysOnTop"    # Z

    .line 373
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 374
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, p1}, Landroid/app/WindowConfiguration;->setAlwaysOnTop(Z)V

    .line 375
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ConfigurationContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 376
    return-void
.end method

.method public setBounds(IIII)I
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 316
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 317
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ConfigurationContainer;->setBounds(Landroid/graphics/Rect;)I

    move-result v0

    return v0
.end method

.method public setBounds(Landroid/graphics/Rect;)I
    .locals 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 301
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->diffRequestedOverrideBounds(Landroid/graphics/Rect;)I

    move-result v0

    .line 303
    .local v0, "boundsChange":I
    if-nez v0, :cond_0

    .line 304
    return v0

    .line 308
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 309
    iget-object v1, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1, p1}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    .line 310
    iget-object v1, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ConfigurationContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 312
    return v0
.end method

.method setDisplayWindowingMode(I)V
    .locals 2
    .param p1, "windowingMode"    # I

    .line 380
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 381
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, p1}, Landroid/app/WindowConfiguration;->setDisplayWindowingMode(I)V

    .line 382
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ConfigurationContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 383
    return-void
.end method

.method public setWindowingMode(I)V
    .locals 2
    .param p1, "windowingMode"    # I

    .line 362
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 363
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, p1}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 364
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ConfigurationContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 365
    return-void
.end method

.method public supportsSplitScreenWindowingMode()Z
    .locals 1

    .line 424
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->supportSplitScreenWindowingMode()Z

    move-result v0

    return v0
.end method

.method unregisterConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/wm/ConfigurationContainerListener;

    .line 539
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 540
    return-void
.end method
