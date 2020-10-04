.class public Landroid/net/IIpMemoryStoreCallbacks$Default;
.super Ljava/lang/Object;
.source "IIpMemoryStoreCallbacks.java"

# interfaces
.implements Landroid/net/IIpMemoryStoreCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IIpMemoryStoreCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 22
    const/4 v0, -0x1

    return v0
.end method

.method public onIpMemoryStoreFetched(Landroid/net/IIpMemoryStore;)V
    .locals 0
    .param p1, "ipMemoryStore"    # Landroid/net/IIpMemoryStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method
