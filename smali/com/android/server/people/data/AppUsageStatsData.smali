.class public Lcom/android/server/people/data/AppUsageStatsData;
.super Ljava/lang/Object;
.source "AppUsageStatsData.java"


# instance fields
.field private mChosenCount:I

.field private mLaunchCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "chosenCount"    # I
    .param p2, "launchCount"    # I

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lcom/android/server/people/data/AppUsageStatsData;->mChosenCount:I

    .line 31
    iput p2, p0, Lcom/android/server/people/data/AppUsageStatsData;->mLaunchCount:I

    .line 32
    return-void
.end method


# virtual methods
.method public getChosenCount()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/android/server/people/data/AppUsageStatsData;->mChosenCount:I

    return v0
.end method

.method public getLaunchCount()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/android/server/people/data/AppUsageStatsData;->mLaunchCount:I

    return v0
.end method

.method incrementChosenCountBy(I)V
    .locals 1
    .param p1, "chosenCount"    # I

    .line 50
    iget v0, p0, Lcom/android/server/people/data/AppUsageStatsData;->mChosenCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/people/data/AppUsageStatsData;->mChosenCount:I

    .line 51
    return-void
.end method

.method incrementLaunchCountBy(I)V
    .locals 1
    .param p1, "launchCount"    # I

    .line 42
    iget v0, p0, Lcom/android/server/people/data/AppUsageStatsData;->mLaunchCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/people/data/AppUsageStatsData;->mLaunchCount:I

    .line 43
    return-void
.end method
