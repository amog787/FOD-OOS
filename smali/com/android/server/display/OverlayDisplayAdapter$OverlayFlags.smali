.class final Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;
.super Ljava/lang/Object;
.source "OverlayDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/OverlayDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OverlayFlags"
.end annotation


# instance fields
.field final mOwnContentOnly:Z

.field final mSecure:Z

.field final mShouldShowSystemDecorations:Z


# direct methods
.method constructor <init>(ZZZ)V
    .locals 0
    .param p1, "secure"    # Z
    .param p2, "ownContentOnly"    # Z
    .param p3, "shouldShowSystemDecorations"    # Z

    .line 603
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 604
    iput-boolean p1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;->mSecure:Z

    .line 605
    iput-boolean p2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;->mOwnContentOnly:Z

    .line 606
    iput-boolean p3, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;->mShouldShowSystemDecorations:Z

    .line 607
    return-void
.end method

.method static parseFlags(Ljava/lang/String;)Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;
    .locals 8
    .param p0, "flagString"    # Ljava/lang/String;

    .line 610
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 611
    new-instance v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;

    invoke-direct {v0, v1, v1, v1}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;-><init>(ZZZ)V

    return-object v0

    .line 617
    :cond_0
    const/4 v0, 0x0

    .line 618
    .local v0, "secure":Z
    const/4 v2, 0x0

    .line 619
    .local v2, "ownContentOnly":Z
    const/4 v3, 0x0

    .line 620
    .local v3, "shouldShowSystemDecorations":Z
    const-string v4, ","

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    :goto_0
    if-ge v1, v5, :cond_4

    aget-object v6, v4, v1

    .line 621
    .local v6, "flag":Ljava/lang/String;
    const-string/jumbo v7, "secure"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 622
    const/4 v0, 0x1

    .line 624
    :cond_1
    const-string/jumbo v7, "own_content_only"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 625
    const/4 v2, 0x1

    .line 627
    :cond_2
    const-string/jumbo v7, "should_show_system_decorations"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 628
    const/4 v3, 0x1

    .line 620
    .end local v6    # "flag":Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 631
    :cond_4
    new-instance v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;

    invoke-direct {v1, v0, v2, v3}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;-><init>(ZZZ)V

    return-object v1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 637
    const-string/jumbo v1, "secure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;->mSecure:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 638
    const-string v1, ", ownContentOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;->mOwnContentOnly:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 639
    const-string v1, ", shouldShowSystemDecorations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;->mShouldShowSystemDecorations:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 640
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 636
    return-object v0
.end method
