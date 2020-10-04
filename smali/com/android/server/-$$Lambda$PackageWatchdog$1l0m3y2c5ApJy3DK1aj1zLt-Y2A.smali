.class public final synthetic Lcom/android/server/-$$Lambda$PackageWatchdog$1l0m3y2c5ApJy3DK1aj1zLt-Y2A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/net/NetworkStackClient$NetworkStackHealthListener;


# instance fields
.field private final synthetic f$0:Lcom/android/server/PackageWatchdog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/PackageWatchdog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$PackageWatchdog$1l0m3y2c5ApJy3DK1aj1zLt-Y2A;->f$0:Lcom/android/server/PackageWatchdog;

    return-void
.end method


# virtual methods
.method public final onNetworkStackFailure(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/-$$Lambda$PackageWatchdog$1l0m3y2c5ApJy3DK1aj1zLt-Y2A;->f$0:Lcom/android/server/PackageWatchdog;

    invoke-virtual {v0, p1}, Lcom/android/server/PackageWatchdog;->lambda$registerNetworkStackHealthListener$6$PackageWatchdog(Ljava/lang/String;)V

    return-void
.end method
