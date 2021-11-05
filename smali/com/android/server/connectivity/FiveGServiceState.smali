.class public Lcom/android/server/connectivity/FiveGServiceState;
.super Ljava/lang/Object;
.source "FiveGServiceState.java"


# instance fields
.field private mBearerAllocationStatus:I

.field private mCampOnFiveGService:Z

.field private mDcnr:I

.field private mNrConfigType:I

.field private mNrIconType:I

.field private mPlmn:I

.field private mShowFiveGService:Z

.field private mSignalLevel:I

.field private mUpperLayerInd:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/connectivity/FiveGServiceState;->mBearerAllocationStatus:I

    .line 38
    iput v0, p0, Lcom/android/server/connectivity/FiveGServiceState;->mPlmn:I

    .line 39
    iput v0, p0, Lcom/android/server/connectivity/FiveGServiceState;->mUpperLayerInd:I

    .line 40
    iput v0, p0, Lcom/android/server/connectivity/FiveGServiceState;->mDcnr:I

    .line 41
    iput v0, p0, Lcom/android/server/connectivity/FiveGServiceState;->mSignalLevel:I

    .line 42
    iput v0, p0, Lcom/android/server/connectivity/FiveGServiceState;->mNrConfigType:I

    .line 43
    iput-boolean v0, p0, Lcom/android/server/connectivity/FiveGServiceState;->mShowFiveGService:Z

    .line 44
    iput-boolean v0, p0, Lcom/android/server/connectivity/FiveGServiceState;->mCampOnFiveGService:Z

    .line 45
    return-void
.end method


# virtual methods
.method public equals(Lcom/android/server/connectivity/FiveGServiceState;)Z
    .locals 2
    .param p1, "state"    # Lcom/android/server/connectivity/FiveGServiceState;

    .line 138
    iget v0, p0, Lcom/android/server/connectivity/FiveGServiceState;->mBearerAllocationStatus:I

    iget v1, p1, Lcom/android/server/connectivity/FiveGServiceState;->mBearerAllocationStatus:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/connectivity/FiveGServiceState;->mPlmn:I

    iget v1, p1, Lcom/android/server/connectivity/FiveGServiceState;->mPlmn:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/connectivity/FiveGServiceState;->mUpperLayerInd:I

    iget v1, p1, Lcom/android/server/connectivity/FiveGServiceState;->mUpperLayerInd:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/connectivity/FiveGServiceState;->mDcnr:I

    iget v1, p1, Lcom/android/server/connectivity/FiveGServiceState;->mDcnr:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/connectivity/FiveGServiceState;->mSignalLevel:I

    iget v1, p1, Lcom/android/server/connectivity/FiveGServiceState;->mSignalLevel:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/connectivity/FiveGServiceState;->mNrConfigType:I

    iget v1, p1, Lcom/android/server/connectivity/FiveGServiceState;->mNrConfigType:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/connectivity/FiveGServiceState;->mShowFiveGService:Z

    iget-boolean v1, p1, Lcom/android/server/connectivity/FiveGServiceState;->mShowFiveGService:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/connectivity/FiveGServiceState;->mCampOnFiveGService:Z

    iget-boolean v1, p1, Lcom/android/server/connectivity/FiveGServiceState;->mCampOnFiveGService:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getBearerAllocationStatus()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/android/server/connectivity/FiveGServiceState;->mBearerAllocationStatus:I

    return v0
.end method

.method public getCampOnFiveGService()Z
    .locals 1

    .line 114
    iget-boolean v0, p0, Lcom/android/server/connectivity/FiveGServiceState;->mCampOnFiveGService:Z

    return v0
.end method

.method public getDcnr()I
    .locals 1

    .line 98
    iget v0, p0, Lcom/android/server/connectivity/FiveGServiceState;->mDcnr:I

    return v0
.end method

.method public getNrConfigType()I
    .locals 1

    .line 106
    iget v0, p0, Lcom/android/server/connectivity/FiveGServiceState;->mNrConfigType:I

    return v0
.end method

.method public getNrIconType()I
    .locals 1

    .line 118
    iget v0, p0, Lcom/android/server/connectivity/FiveGServiceState;->mNrIconType:I

    return v0
.end method

.method public getPlmn()I
    .locals 1

    .line 90
    iget v0, p0, Lcom/android/server/connectivity/FiveGServiceState;->mPlmn:I

    return v0
.end method

.method public getShowFiveGService()Z
    .locals 1

    .line 110
    iget-boolean v0, p0, Lcom/android/server/connectivity/FiveGServiceState;->mShowFiveGService:Z

    return v0
.end method

.method public getSignalLevel()I
    .locals 1

    .line 102
    iget v0, p0, Lcom/android/server/connectivity/FiveGServiceState;->mSignalLevel:I

    return v0
.end method

.method public getUpperLayerInd()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/android/server/connectivity/FiveGServiceState;->mUpperLayerInd:I

    return v0
.end method

.method public isConnectedOnNsaMode()Z
    .locals 2

    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, "connected":Z
    iget v1, p0, Lcom/android/server/connectivity/FiveGServiceState;->mNrConfigType:I

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/connectivity/FiveGServiceState;->mShowFiveGService:Z

    if-eqz v1, :cond_0

    .line 132
    const/4 v0, 0x1

    .line 134
    :cond_0
    return v0
.end method

.method public isConnectedOnSaMode()Z
    .locals 3

    .line 122
    const/4 v0, 0x0

    .line 123
    .local v0, "connected":Z
    iget v1, p0, Lcom/android/server/connectivity/FiveGServiceState;->mNrConfigType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/server/connectivity/FiveGServiceState;->mShowFiveGService:Z

    if-eqz v1, :cond_0

    .line 124
    const/4 v0, 0x1

    .line 126
    :cond_0
    return v0
.end method

.method public setBearerAllocationStatus(I)V
    .locals 0
    .param p1, "bearerAllocationStatus"    # I

    .line 49
    iput p1, p0, Lcom/android/server/connectivity/FiveGServiceState;->mBearerAllocationStatus:I

    .line 50
    return-void
.end method

.method public setCampOnFiveGService(Z)V
    .locals 0
    .param p1, "campOnFiveGService"    # Z

    .line 77
    iput-boolean p1, p0, Lcom/android/server/connectivity/FiveGServiceState;->mCampOnFiveGService:Z

    .line 78
    return-void
.end method

.method public setDcnr(I)V
    .locals 0
    .param p1, "dcnr"    # I

    .line 61
    iput p1, p0, Lcom/android/server/connectivity/FiveGServiceState;->mDcnr:I

    .line 62
    return-void
.end method

.method public setNrConfigType(I)V
    .locals 0
    .param p1, "nrConfigType"    # I

    .line 69
    iput p1, p0, Lcom/android/server/connectivity/FiveGServiceState;->mNrConfigType:I

    .line 70
    return-void
.end method

.method public setNrIconType(I)V
    .locals 0
    .param p1, "nrIconType"    # I

    .line 81
    iput p1, p0, Lcom/android/server/connectivity/FiveGServiceState;->mNrIconType:I

    .line 82
    return-void
.end method

.method public setPlmn(I)V
    .locals 0
    .param p1, "plmn"    # I

    .line 53
    iput p1, p0, Lcom/android/server/connectivity/FiveGServiceState;->mPlmn:I

    .line 54
    return-void
.end method

.method public setShowFiveGService(Z)V
    .locals 0
    .param p1, "showFiveGService"    # Z

    .line 73
    iput-boolean p1, p0, Lcom/android/server/connectivity/FiveGServiceState;->mShowFiveGService:Z

    .line 74
    return-void
.end method

.method public setSignalLevel(I)V
    .locals 0
    .param p1, "level"    # I

    .line 65
    iput p1, p0, Lcom/android/server/connectivity/FiveGServiceState;->mSignalLevel:I

    .line 66
    return-void
.end method

.method public setUpperLayerInd(I)V
    .locals 0
    .param p1, "upperLayerInd"    # I

    .line 57
    iput p1, p0, Lcom/android/server/connectivity/FiveGServiceState;->mUpperLayerInd:I

    .line 58
    return-void
.end method
