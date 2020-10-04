.class public final synthetic Lcom/android/server/content/-$$Lambda$SyncManager$CjX_2uO4O4xJPQnKzeqvGwd87Dc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/content/SyncManager;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/content/SyncManager;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/content/-$$Lambda$SyncManager$CjX_2uO4O4xJPQnKzeqvGwd87Dc;->f$0:Lcom/android/server/content/SyncManager;

    iput p2, p0, Lcom/android/server/content/-$$Lambda$SyncManager$CjX_2uO4O4xJPQnKzeqvGwd87Dc;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/content/-$$Lambda$SyncManager$CjX_2uO4O4xJPQnKzeqvGwd87Dc;->f$0:Lcom/android/server/content/SyncManager;

    iget v1, p0, Lcom/android/server/content/-$$Lambda$SyncManager$CjX_2uO4O4xJPQnKzeqvGwd87Dc;->f$1:I

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncManager;->lambda$onStartUser$1$SyncManager(I)V

    return-void
.end method
