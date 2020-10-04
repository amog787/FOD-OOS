.class public final synthetic Lcom/android/server/-$$Lambda$TestNetworkService$jaBdxV1WIiJrgh0fXY_tPjFxN8I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/TestNetworkService;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:I

.field private final synthetic f$3:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/TestNetworkService;Ljava/lang/String;ILandroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$TestNetworkService$jaBdxV1WIiJrgh0fXY_tPjFxN8I;->f$0:Lcom/android/server/TestNetworkService;

    iput-object p2, p0, Lcom/android/server/-$$Lambda$TestNetworkService$jaBdxV1WIiJrgh0fXY_tPjFxN8I;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/-$$Lambda$TestNetworkService$jaBdxV1WIiJrgh0fXY_tPjFxN8I;->f$2:I

    iput-object p4, p0, Lcom/android/server/-$$Lambda$TestNetworkService$jaBdxV1WIiJrgh0fXY_tPjFxN8I;->f$3:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/-$$Lambda$TestNetworkService$jaBdxV1WIiJrgh0fXY_tPjFxN8I;->f$0:Lcom/android/server/TestNetworkService;

    iget-object v1, p0, Lcom/android/server/-$$Lambda$TestNetworkService$jaBdxV1WIiJrgh0fXY_tPjFxN8I;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/-$$Lambda$TestNetworkService$jaBdxV1WIiJrgh0fXY_tPjFxN8I;->f$2:I

    iget-object v3, p0, Lcom/android/server/-$$Lambda$TestNetworkService$jaBdxV1WIiJrgh0fXY_tPjFxN8I;->f$3:Landroid/os/IBinder;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/TestNetworkService;->lambda$setupTestNetwork$1$TestNetworkService(Ljava/lang/String;ILandroid/os/IBinder;)V

    return-void
.end method
