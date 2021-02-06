.class Lcom/android/server/blob/BlobStoreManagerService$StatsPullAtomCallbackImpl;
.super Ljava/lang/Object;
.source "BlobStoreManagerService.java"

# interfaces
.implements Landroid/app/StatsManager$StatsPullAtomCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/blob/BlobStoreManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatsPullAtomCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/blob/BlobStoreManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/blob/BlobStoreManagerService;)V
    .locals 0

    .line 1873
    iput-object p1, p0, Lcom/android/server/blob/BlobStoreManagerService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/blob/BlobStoreManagerService;Lcom/android/server/blob/BlobStoreManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/blob/BlobStoreManagerService;
    .param p2, "x1"    # Lcom/android/server/blob/BlobStoreManagerService$1;

    .line 1873
    invoke-direct {p0, p1}, Lcom/android/server/blob/BlobStoreManagerService$StatsPullAtomCallbackImpl;-><init>(Lcom/android/server/blob/BlobStoreManagerService;)V

    return-void
.end method


# virtual methods
.method public onPullAtom(ILjava/util/List;)I
    .locals 3
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 1876
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    const/16 v0, 0x2761

    if-ne p1, v0, :cond_0

    .line 1878
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/blob/BlobStoreManagerService;->access$3100(Lcom/android/server/blob/BlobStoreManagerService;ILjava/util/List;)I

    move-result v0

    return v0

    .line 1880
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown tagId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
