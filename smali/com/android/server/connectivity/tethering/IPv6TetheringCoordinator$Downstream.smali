.class Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator$Downstream;
.super Ljava/lang/Object;
.source "IPv6TetheringCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Downstream"
.end annotation


# instance fields
.field public final ipServer:Landroid/net/ip/IpServer;

.field public final mode:I

.field public final subnetId:S


# direct methods
.method constructor <init>(Landroid/net/ip/IpServer;IS)V
    .locals 0
    .param p1, "ipServer"    # Landroid/net/ip/IpServer;
    .param p2, "mode"    # I
    .param p3, "subnetId"    # S

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator$Downstream;->ipServer:Landroid/net/ip/IpServer;

    .line 61
    iput p2, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator$Downstream;->mode:I

    .line 62
    iput-short p3, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator$Downstream;->subnetId:S

    .line 63
    return-void
.end method
