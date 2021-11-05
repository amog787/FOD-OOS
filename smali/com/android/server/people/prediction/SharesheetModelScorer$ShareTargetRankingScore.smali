.class Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;
.super Ljava/lang/Object;
.source "SharesheetModelScorer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/people/prediction/SharesheetModelScorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShareTargetRankingScore"
.end annotation


# instance fields
.field private mFrequencyScore:F

.field private mMimeFrequencyScore:F

.field private mRecencyScore:F

.field private mTotalScore:F


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mRecencyScore:F

    .line 378
    iput v0, p0, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mFrequencyScore:F

    .line 379
    iput v0, p0, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mMimeFrequencyScore:F

    .line 380
    iput v0, p0, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mTotalScore:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/people/prediction/SharesheetModelScorer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/people/prediction/SharesheetModelScorer$1;

    .line 375
    invoke-direct {p0}, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;-><init>()V

    return-void
.end method


# virtual methods
.method getFrequencyScore()F
    .locals 1

    .line 399
    iget v0, p0, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mFrequencyScore:F

    return v0
.end method

.method getMimeFrequencyScore()F
    .locals 1

    .line 411
    iget v0, p0, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mMimeFrequencyScore:F

    return v0
.end method

.method getRecencyScore()F
    .locals 1

    .line 391
    iget v0, p0, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mRecencyScore:F

    return v0
.end method

.method getTotalScore()F
    .locals 1

    .line 383
    iget v0, p0, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mTotalScore:F

    return v0
.end method

.method incrementFrequencyScore(F)V
    .locals 1
    .param p1, "incremental"    # F

    .line 407
    iget v0, p0, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mFrequencyScore:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mFrequencyScore:F

    .line 408
    return-void
.end method

.method incrementMimeFrequencyScore(F)V
    .locals 1
    .param p1, "incremental"    # F

    .line 419
    iget v0, p0, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mMimeFrequencyScore:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mMimeFrequencyScore:F

    .line 420
    return-void
.end method

.method setFrequencyScore(F)V
    .locals 0
    .param p1, "frequencyScore"    # F

    .line 403
    iput p1, p0, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mFrequencyScore:F

    .line 404
    return-void
.end method

.method setMimeFrequencyScore(F)V
    .locals 0
    .param p1, "mimeFrequencyScore"    # F

    .line 415
    iput p1, p0, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mMimeFrequencyScore:F

    .line 416
    return-void
.end method

.method setRecencyScore(F)V
    .locals 0
    .param p1, "recencyScore"    # F

    .line 395
    iput p1, p0, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mRecencyScore:F

    .line 396
    return-void
.end method

.method setTotalScore(F)V
    .locals 0
    .param p1, "totalScore"    # F

    .line 387
    iput p1, p0, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mTotalScore:F

    .line 388
    return-void
.end method
