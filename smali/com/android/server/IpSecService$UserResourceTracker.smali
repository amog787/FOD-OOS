.class final Lcom/android/server/IpSecService$UserResourceTracker;
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
    name = "UserResourceTracker"
.end annotation


# instance fields
.field private final mUserRecords:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/IpSecService$UserRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/IpSecService$UserResourceTracker;->mUserRecords:Landroid/util/SparseArray;

    return-void
.end method

.method private checkCallerUid(I)V
    .locals 2
    .param p1, "uid"    # I

    .line 462
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3e8

    .line 463
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 464
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Attempted access of unowned resources"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 466
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getUserRecord(I)Lcom/android/server/IpSecService$UserRecord;
    .locals 2
    .param p1, "uid"    # I

    .line 450
    invoke-direct {p0, p1}, Lcom/android/server/IpSecService$UserResourceTracker;->checkCallerUid(I)V

    .line 452
    iget-object v0, p0, Lcom/android/server/IpSecService$UserResourceTracker;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/IpSecService$UserRecord;

    .line 453
    .local v0, "r":Lcom/android/server/IpSecService$UserRecord;
    if-nez v0, :cond_0

    .line 454
    new-instance v1, Lcom/android/server/IpSecService$UserRecord;

    invoke-direct {v1}, Lcom/android/server/IpSecService$UserRecord;-><init>()V

    move-object v0, v1

    .line 455
    iget-object v1, p0, Lcom/android/server/IpSecService$UserResourceTracker;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 457
    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/android/server/IpSecService$UserResourceTracker;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
