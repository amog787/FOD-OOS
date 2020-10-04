.class final Lcom/android/server/IpSecService$UserRecord;
.super Ljava/lang/Object;
.source "IpSecService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/IpSecService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UserRecord"
.end annotation


# static fields
.field public static final MAX_NUM_ENCAP_SOCKETS:I = 0x2

.field public static final MAX_NUM_SPIS:I = 0x8

.field public static final MAX_NUM_TRANSFORMS:I = 0x4

.field public static final MAX_NUM_TUNNEL_INTERFACES:I = 0x2


# instance fields
.field final mEncapSocketRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/IpSecService$RefcountedResourceArray<",
            "Lcom/android/server/IpSecService$EncapSocketRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mSocketQuotaTracker:Lcom/android/server/IpSecService$ResourceTracker;

.field final mSpiQuotaTracker:Lcom/android/server/IpSecService$ResourceTracker;

.field final mSpiRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/IpSecService$RefcountedResourceArray<",
            "Lcom/android/server/IpSecService$SpiRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mTransformQuotaTracker:Lcom/android/server/IpSecService$ResourceTracker;

.field final mTransformRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/IpSecService$RefcountedResourceArray<",
            "Lcom/android/server/IpSecService$TransformRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mTunnelInterfaceRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/IpSecService$RefcountedResourceArray<",
            "Lcom/android/server/IpSecService$TunnelInterfaceRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mTunnelQuotaTracker:Lcom/android/server/IpSecService$ResourceTracker;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    new-instance v0, Lcom/android/server/IpSecService$RefcountedResourceArray;

    const-class v1, Lcom/android/server/IpSecService$SpiRecord;

    .line 378
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/IpSecService$RefcountedResourceArray;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/IpSecService$UserRecord;->mSpiRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    .line 379
    new-instance v0, Lcom/android/server/IpSecService$RefcountedResourceArray;

    const-class v1, Lcom/android/server/IpSecService$TransformRecord;

    .line 380
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/IpSecService$RefcountedResourceArray;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/IpSecService$UserRecord;->mTransformRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    .line 381
    new-instance v0, Lcom/android/server/IpSecService$RefcountedResourceArray;

    const-class v1, Lcom/android/server/IpSecService$EncapSocketRecord;

    .line 382
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/IpSecService$RefcountedResourceArray;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/IpSecService$UserRecord;->mEncapSocketRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    .line 383
    new-instance v0, Lcom/android/server/IpSecService$RefcountedResourceArray;

    const-class v1, Lcom/android/server/IpSecService$TunnelInterfaceRecord;

    .line 384
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/IpSecService$RefcountedResourceArray;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/IpSecService$UserRecord;->mTunnelInterfaceRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    .line 395
    new-instance v0, Lcom/android/server/IpSecService$ResourceTracker;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/android/server/IpSecService$ResourceTracker;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/IpSecService$UserRecord;->mSpiQuotaTracker:Lcom/android/server/IpSecService$ResourceTracker;

    .line 396
    new-instance v0, Lcom/android/server/IpSecService$ResourceTracker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/server/IpSecService$ResourceTracker;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/IpSecService$UserRecord;->mTransformQuotaTracker:Lcom/android/server/IpSecService$ResourceTracker;

    .line 397
    new-instance v0, Lcom/android/server/IpSecService$ResourceTracker;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/server/IpSecService$ResourceTracker;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/IpSecService$UserRecord;->mSocketQuotaTracker:Lcom/android/server/IpSecService$ResourceTracker;

    .line 398
    new-instance v0, Lcom/android/server/IpSecService$ResourceTracker;

    invoke-direct {v0, v1}, Lcom/android/server/IpSecService$ResourceTracker;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/IpSecService$UserRecord;->mTunnelQuotaTracker:Lcom/android/server/IpSecService$ResourceTracker;

    return-void
.end method


# virtual methods
.method removeEncapSocketRecord(I)V
    .locals 1
    .param p1, "resourceId"    # I

    .line 413
    iget-object v0, p0, Lcom/android/server/IpSecService$UserRecord;->mEncapSocketRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    invoke-virtual {v0, p1}, Lcom/android/server/IpSecService$RefcountedResourceArray;->remove(I)V

    .line 414
    return-void
.end method

.method removeSpiRecord(I)V
    .locals 1
    .param p1, "resourceId"    # I

    .line 401
    iget-object v0, p0, Lcom/android/server/IpSecService$UserRecord;->mSpiRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    invoke-virtual {v0, p1}, Lcom/android/server/IpSecService$RefcountedResourceArray;->remove(I)V

    .line 402
    return-void
.end method

.method removeTransformRecord(I)V
    .locals 1
    .param p1, "resourceId"    # I

    .line 405
    iget-object v0, p0, Lcom/android/server/IpSecService$UserRecord;->mTransformRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    invoke-virtual {v0, p1}, Lcom/android/server/IpSecService$RefcountedResourceArray;->remove(I)V

    .line 406
    return-void
.end method

.method removeTunnelInterfaceRecord(I)V
    .locals 1
    .param p1, "resourceId"    # I

    .line 409
    iget-object v0, p0, Lcom/android/server/IpSecService$UserRecord;->mTunnelInterfaceRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    invoke-virtual {v0, p1}, Lcom/android/server/IpSecService$RefcountedResourceArray;->remove(I)V

    .line 410
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 419
    const-string/jumbo v1, "{mSpiQuotaTracker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/IpSecService$UserRecord;->mSpiQuotaTracker:Lcom/android/server/IpSecService$ResourceTracker;

    .line 420
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 421
    const-string v1, ", mTransformQuotaTracker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/IpSecService$UserRecord;->mTransformQuotaTracker:Lcom/android/server/IpSecService$ResourceTracker;

    .line 422
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 423
    const-string v1, ", mSocketQuotaTracker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/IpSecService$UserRecord;->mSocketQuotaTracker:Lcom/android/server/IpSecService$ResourceTracker;

    .line 424
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 425
    const-string v1, ", mTunnelQuotaTracker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/IpSecService$UserRecord;->mTunnelQuotaTracker:Lcom/android/server/IpSecService$ResourceTracker;

    .line 426
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 427
    const-string v1, ", mSpiRecords="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/IpSecService$UserRecord;->mSpiRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    .line 428
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 429
    const-string v1, ", mTransformRecords="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/IpSecService$UserRecord;->mTransformRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    .line 430
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 431
    const-string v1, ", mEncapSocketRecords="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/IpSecService$UserRecord;->mEncapSocketRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    .line 432
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 433
    const-string v1, ", mTunnelInterfaceRecords="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/IpSecService$UserRecord;->mTunnelInterfaceRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    .line 434
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 435
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 418
    return-object v0
.end method
