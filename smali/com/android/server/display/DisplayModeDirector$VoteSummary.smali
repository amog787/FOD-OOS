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

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->reset()V

    .line 163
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    .line 166
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    .line 167
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    iput v0, p0, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    .line 168
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->width:I

    .line 169
    iput v0, p0, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->height:I

    .line 170
    return-void
.end method
