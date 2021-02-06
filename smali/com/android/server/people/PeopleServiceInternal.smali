.class public abstract Lcom/android/server/people/PeopleServiceInternal;
.super Landroid/service/appprediction/IPredictionService$Stub;
.source "PeopleServiceInternal.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/service/appprediction/IPredictionService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getBackupPayload(I)[B
.end method

.method public abstract pruneDataForUser(ILandroid/os/CancellationSignal;)V
.end method

.method public abstract restore(I[B)V
.end method
