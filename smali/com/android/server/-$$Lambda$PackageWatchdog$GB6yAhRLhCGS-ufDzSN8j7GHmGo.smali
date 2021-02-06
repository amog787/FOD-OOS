.class public final synthetic Lcom/android/server/-$$Lambda$PackageWatchdog$GB6yAhRLhCGS-ufDzSN8j7GHmGo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/PackageWatchdog;

.field public final synthetic f$1:Lcom/android/server/PackageWatchdog$ObserverInternal;

.field public final synthetic f$2:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/PackageWatchdog;Lcom/android/server/PackageWatchdog$ObserverInternal;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$PackageWatchdog$GB6yAhRLhCGS-ufDzSN8j7GHmGo;->f$0:Lcom/android/server/PackageWatchdog;

    iput-object p2, p0, Lcom/android/server/-$$Lambda$PackageWatchdog$GB6yAhRLhCGS-ufDzSN8j7GHmGo;->f$1:Lcom/android/server/PackageWatchdog$ObserverInternal;

    iput-object p3, p0, Lcom/android/server/-$$Lambda$PackageWatchdog$GB6yAhRLhCGS-ufDzSN8j7GHmGo;->f$2:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/-$$Lambda$PackageWatchdog$GB6yAhRLhCGS-ufDzSN8j7GHmGo;->f$0:Lcom/android/server/PackageWatchdog;

    iget-object v1, p0, Lcom/android/server/-$$Lambda$PackageWatchdog$GB6yAhRLhCGS-ufDzSN8j7GHmGo;->f$1:Lcom/android/server/PackageWatchdog$ObserverInternal;

    iget-object v2, p0, Lcom/android/server/-$$Lambda$PackageWatchdog$GB6yAhRLhCGS-ufDzSN8j7GHmGo;->f$2:Ljava/util/Set;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageWatchdog;->lambda$onHealthCheckFailed$7$PackageWatchdog(Lcom/android/server/PackageWatchdog$ObserverInternal;Ljava/util/Set;)V

    return-void
.end method
