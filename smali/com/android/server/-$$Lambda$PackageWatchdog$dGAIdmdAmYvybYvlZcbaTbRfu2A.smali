.class public final synthetic Lcom/android/server/-$$Lambda$PackageWatchdog$dGAIdmdAmYvybYvlZcbaTbRfu2A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/PackageWatchdog;

.field private final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/PackageWatchdog;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$PackageWatchdog$dGAIdmdAmYvybYvlZcbaTbRfu2A;->f$0:Lcom/android/server/PackageWatchdog;

    iput-object p2, p0, Lcom/android/server/-$$Lambda$PackageWatchdog$dGAIdmdAmYvybYvlZcbaTbRfu2A;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/-$$Lambda$PackageWatchdog$dGAIdmdAmYvybYvlZcbaTbRfu2A;->f$0:Lcom/android/server/PackageWatchdog;

    iget-object v1, p0, Lcom/android/server/-$$Lambda$PackageWatchdog$dGAIdmdAmYvybYvlZcbaTbRfu2A;->f$1:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/server/PackageWatchdog;->lambda$onPackageFailure$3$PackageWatchdog(Ljava/util/List;)V

    return-void
.end method
