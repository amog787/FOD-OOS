.class abstract Lcom/android/server/location/ContextHubServiceTransaction;
.super Ljava/lang/Object;
.source "ContextHubServiceTransaction.java"


# instance fields
.field private mIsComplete:Z

.field private final mTransactionId:I

.field private final mTransactionType:I


# direct methods
.method constructor <init>(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "type"    # I

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/ContextHubServiceTransaction;->mIsComplete:Z

    .line 41
    iput p1, p0, Lcom/android/server/location/ContextHubServiceTransaction;->mTransactionId:I

    .line 42
    iput p2, p0, Lcom/android/server/location/ContextHubServiceTransaction;->mTransactionType:I

    .line 43
    return-void
.end method


# virtual methods
.method getTimeout(Ljava/util/concurrent/TimeUnit;)J
    .locals 3
    .param p1, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 101
    iget v0, p0, Lcom/android/server/location/ContextHubServiceTransaction;->mTransactionType:I

    if-eqz v0, :cond_0

    .line 110
    const-wide/16 v0, 0x5

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0

    .line 103
    :cond_0
    const-wide/16 v0, 0x1e

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method getTransactionId()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/android/server/location/ContextHubServiceTransaction;->mTransactionId:I

    return v0
.end method

.method getTransactionType()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/android/server/location/ContextHubServiceTransaction;->mTransactionType:I

    return v0
.end method

.method isComplete()Z
    .locals 1

    .line 127
    iget-boolean v0, p0, Lcom/android/server/location/ContextHubServiceTransaction;->mIsComplete:Z

    return v0
.end method

.method onQueryResponse(ILjava/util/List;)V
    .locals 0
    .param p1, "result"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/hardware/location/NanoAppState;",
            ">;)V"
        }
    .end annotation

    .line 77
    .local p2, "nanoAppStateList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/location/NanoAppState;>;"
    return-void
.end method

.method abstract onTransact()I
.end method

.method onTransactionComplete(I)V
    .locals 0
    .param p1, "result"    # I

    .line 65
    return-void
.end method

.method setComplete()V
    .locals 1

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/ContextHubServiceTransaction;->mIsComplete:Z

    .line 121
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/server/location/ContextHubServiceTransaction;->mTransactionType:I

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/hardware/location/ContextHubTransaction;->typeToString(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " transaction (ID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/location/ContextHubServiceTransaction;->mTransactionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
