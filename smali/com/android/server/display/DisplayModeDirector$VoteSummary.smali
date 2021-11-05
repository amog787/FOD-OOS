.class final Lcom/android/server/display/DisplayModeDirector$VoteSummary;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VoteSummary"
.end annotation


# instance fields
.field public height:I

.field public maxRefreshRate:F

.field public minRefreshRate:F

.field public width:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->reset()V

    .line 186
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    .line 189
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    .line 190
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    iput v0, p0, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    .line 191
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->width:I

    .line 192
    iput v0, p0, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->height:I

    .line 193
    return-void
.end method
