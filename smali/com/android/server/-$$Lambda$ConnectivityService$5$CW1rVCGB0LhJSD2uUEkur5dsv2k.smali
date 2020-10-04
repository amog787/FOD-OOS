.class public final synthetic Lcom/android/server/-$$Lambda$ConnectivityService$5$CW1rVCGB0LhJSD2uUEkur5dsv2k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/ConnectivityService$5;

.field private final synthetic f$1:I

.field private final synthetic f$2:Z

.field private final synthetic f$3:Ljava/lang/String;

.field private final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ConnectivityService$5;IZLjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$ConnectivityService$5$CW1rVCGB0LhJSD2uUEkur5dsv2k;->f$0:Lcom/android/server/ConnectivityService$5;

    iput p2, p0, Lcom/android/server/-$$Lambda$ConnectivityService$5$CW1rVCGB0LhJSD2uUEkur5dsv2k;->f$1:I

    iput-boolean p3, p0, Lcom/android/server/-$$Lambda$ConnectivityService$5$CW1rVCGB0LhJSD2uUEkur5dsv2k;->f$2:Z

    iput-object p4, p0, Lcom/android/server/-$$Lambda$ConnectivityService$5$CW1rVCGB0LhJSD2uUEkur5dsv2k;->f$3:Ljava/lang/String;

    iput p5, p0, Lcom/android/server/-$$Lambda$ConnectivityService$5$CW1rVCGB0LhJSD2uUEkur5dsv2k;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/-$$Lambda$ConnectivityService$5$CW1rVCGB0LhJSD2uUEkur5dsv2k;->f$0:Lcom/android/server/ConnectivityService$5;

    iget v1, p0, Lcom/android/server/-$$Lambda$ConnectivityService$5$CW1rVCGB0LhJSD2uUEkur5dsv2k;->f$1:I

    iget-boolean v2, p0, Lcom/android/server/-$$Lambda$ConnectivityService$5$CW1rVCGB0LhJSD2uUEkur5dsv2k;->f$2:Z

    iget-object v3, p0, Lcom/android/server/-$$Lambda$ConnectivityService$5$CW1rVCGB0LhJSD2uUEkur5dsv2k;->f$3:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/-$$Lambda$ConnectivityService$5$CW1rVCGB0LhJSD2uUEkur5dsv2k;->f$4:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/ConnectivityService$5;->lambda$onNat64PrefixEvent$0$ConnectivityService$5(IZLjava/lang/String;I)V

    return-void
.end method
