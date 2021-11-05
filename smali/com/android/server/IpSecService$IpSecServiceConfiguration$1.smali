.class Lcom/android/server/IpSecService$IpSecServiceConfiguration$1;
.super Ljava/lang/Object;
.source "IpSecService.java"

# interfaces
.implements Lcom/android/server/IpSecService$IpSecServiceConfiguration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/IpSecService$IpSecServiceConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNetdInstance()Landroid/net/INetd;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 137
    invoke-static {}, Landroid/net/util/NetdService;->getInstance()Landroid/net/INetd;

    move-result-object v0

    .line 138
    .local v0, "netd":Landroid/net/INetd;
    if-eqz v0, :cond_0

    .line 141
    return-object v0

    .line 139
    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "Failed to Get Netd Instance"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
