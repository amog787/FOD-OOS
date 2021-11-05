.class public final synthetic Lcom/android/server/blob/-$$Lambda$BlobMetadata$_Q3RdLQa7SD-hcTj9iyZbol_1jQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/blob/-$$Lambda$BlobMetadata$_Q3RdLQa7SD-hcTj9iyZbol_1jQ;->f$0:I

    iput-object p2, p0, Lcom/android/server/blob/-$$Lambda$BlobMetadata$_Q3RdLQa7SD-hcTj9iyZbol_1jQ;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget v0, p0, Lcom/android/server/blob/-$$Lambda$BlobMetadata$_Q3RdLQa7SD-hcTj9iyZbol_1jQ;->f$0:I

    iget-object v1, p0, Lcom/android/server/blob/-$$Lambda$BlobMetadata$_Q3RdLQa7SD-hcTj9iyZbol_1jQ;->f$1:Ljava/lang/String;

    check-cast p1, Lcom/android/server/blob/BlobMetadata$Committer;

    invoke-static {v0, v1, p1}, Lcom/android/server/blob/BlobMetadata;->lambda$removeCommitter$0(ILjava/lang/String;Lcom/android/server/blob/BlobMetadata$Committer;)Z

    move-result p1

    return p1
.end method
