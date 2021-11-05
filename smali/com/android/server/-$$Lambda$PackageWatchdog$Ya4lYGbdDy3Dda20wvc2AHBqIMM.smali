.class public final synthetic Lcom/android/server/-$$Lambda$PackageWatchdog$Ya4lYGbdDy3Dda20wvc2AHBqIMM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/PackageWatchdog;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/PackageWatchdog;ILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$PackageWatchdog$Ya4lYGbdDy3Dda20wvc2AHBqIMM;->f$0:Lcom/android/server/PackageWatchdog;

    iput p2, p0, Lcom/android/server/-$$Lambda$PackageWatchdog$Ya4lYGbdDy3Dda20wvc2AHBqIMM;->f$1:I

    iput-object p3, p0, Lcom/android/server/-$$Lambda$PackageWatchdog$Ya4lYGbdDy3Dda20wvc2AHBqIMM;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/-$$Lambda$PackageWatchdog$Ya4lYGbdDy3Dda20wvc2AHBqIMM;->f$0:Lcom/android/server/PackageWatchdog;

    iget v1, p0, Lcom/android/server/-$$Lambda$PackageWatchdog$Ya4lYGbdDy3Dda20wvc2AHBqIMM;->f$1:I

    iget-object v2, p0, Lcom/android/server/-$$Lambda$PackageWatchdog$Ya4lYGbdDy3Dda20wvc2AHBqIMM;->f$2:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageWatchdog;->lambda$onPackageFailure$4$PackageWatchdog(ILjava/util/List;)V

    return-void
.end method
