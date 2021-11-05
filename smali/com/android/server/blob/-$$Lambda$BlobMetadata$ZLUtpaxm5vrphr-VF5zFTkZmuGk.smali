.class public final synthetic Lcom/android/server/blob/-$$Lambda$BlobMetadata$ZLUtpaxm5vrphr-VF5zFTkZmuGk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/util/SparseArray;


# direct methods
.method public synthetic constructor <init>(Landroid/util/SparseArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/blob/-$$Lambda$BlobMetadata$ZLUtpaxm5vrphr-VF5zFTkZmuGk;->f$0:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/blob/-$$Lambda$BlobMetadata$ZLUtpaxm5vrphr-VF5zFTkZmuGk;->f$0:Landroid/util/SparseArray;

    check-cast p1, Lcom/android/server/blob/BlobMetadata$Committer;

    invoke-static {v0, p1}, Lcom/android/server/blob/BlobMetadata;->lambda$removeCommittersFromUnknownPkgs$1(Landroid/util/SparseArray;Lcom/android/server/blob/BlobMetadata$Committer;)Z

    move-result p1

    return p1
.end method
