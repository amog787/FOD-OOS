.class public final synthetic Lcom/android/server/-$$Lambda$ConnectivityService$ONlkcNIY7zZyZhG_msTp1qIA_cQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/ConnectivityService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/net/NetworkCapabilities;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ConnectivityService;Ljava/lang/String;ILandroid/net/NetworkCapabilities;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$ConnectivityService$ONlkcNIY7zZyZhG_msTp1qIA_cQ;->f$0:Lcom/android/server/ConnectivityService;

    iput-object p2, p0, Lcom/android/server/-$$Lambda$ConnectivityService$ONlkcNIY7zZyZhG_msTp1qIA_cQ;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/-$$Lambda$ConnectivityService$ONlkcNIY7zZyZhG_msTp1qIA_cQ;->f$2:I

    iput-object p4, p0, Lcom/android/server/-$$Lambda$ConnectivityService$ONlkcNIY7zZyZhG_msTp1qIA_cQ;->f$3:Landroid/net/NetworkCapabilities;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/-$$Lambda$ConnectivityService$ONlkcNIY7zZyZhG_msTp1qIA_cQ;->f$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p0, Lcom/android/server/-$$Lambda$ConnectivityService$ONlkcNIY7zZyZhG_msTp1qIA_cQ;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/-$$Lambda$ConnectivityService$ONlkcNIY7zZyZhG_msTp1qIA_cQ;->f$2:I

    iget-object v3, p0, Lcom/android/server/-$$Lambda$ConnectivityService$ONlkcNIY7zZyZhG_msTp1qIA_cQ;->f$3:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/ConnectivityService;->lambda$maybeSanitizeLocationInfoForCaller$1$ConnectivityService(Ljava/lang/String;ILandroid/net/NetworkCapabilities;)V

    return-void
.end method
