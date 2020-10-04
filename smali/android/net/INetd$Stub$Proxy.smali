.class Landroid/net/INetd$Stub$Proxy;
.super Ljava/lang/Object;
.source "INetd.java"

# interfaces
.implements Landroid/net/INetd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetd$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/net/INetd;


# instance fields
.field private mCachedVersion:I

.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 1641
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1644
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/INetd$Stub$Proxy;->mCachedVersion:I

    .line 1642
    iput-object p1, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 1643
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 1647
    iget-object v0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public bandwidthAddNaughtyApp(I)V
    .locals 5
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2723
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2724
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2726
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2727
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2728
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x32

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2729
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2730
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->bandwidthAddNaughtyApp(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2736
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2737
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2731
    return-void

    .line 2733
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2736
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2737
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2738
    nop

    .line 2739
    return-void

    .line 2736
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2737
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public bandwidthAddNiceApp(I)V
    .locals 5
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2761
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2762
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2764
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2765
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2766
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x34

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2767
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2768
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->bandwidthAddNiceApp(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2774
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2775
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2769
    return-void

    .line 2771
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2774
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2775
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2776
    nop

    .line 2777
    return-void

    .line 2774
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2775
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public bandwidthEnableDataSaver(Z)Z
    .locals 6
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1698
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1699
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1702
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1703
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1704
    iget-object v4, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x3

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    .line 1705
    .local v4, "_status":Z
    if-nez v4, :cond_1

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1706
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/INetd;->bandwidthEnableDataSaver(Z)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1712
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1713
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1706
    return v2

    .line 1708
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1709
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 1712
    .end local v4    # "_status":Z
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1713
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1714
    nop

    .line 1715
    return v2

    .line 1712
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1713
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public bandwidthRemoveInterfaceAlert(Ljava/lang/String;)V
    .locals 5
    .param p1, "ifName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2685
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2686
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2688
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2689
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2690
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x30

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2691
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2692
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->bandwidthRemoveInterfaceAlert(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2698
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2699
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2693
    return-void

    .line 2695
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2698
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2699
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2700
    nop

    .line 2701
    return-void

    .line 2698
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2699
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public bandwidthRemoveInterfaceQuota(Ljava/lang/String;)V
    .locals 5
    .param p1, "ifName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2646
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2647
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2649
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2650
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2651
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2652
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2653
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->bandwidthRemoveInterfaceQuota(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2659
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2660
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2654
    return-void

    .line 2656
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2659
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2660
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2661
    nop

    .line 2662
    return-void

    .line 2659
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2660
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public bandwidthRemoveNaughtyApp(I)V
    .locals 5
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2742
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2743
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2745
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2746
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2747
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x33

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2748
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2749
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->bandwidthRemoveNaughtyApp(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2755
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2756
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2750
    return-void

    .line 2752
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2755
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2756
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2757
    nop

    .line 2758
    return-void

    .line 2755
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2756
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public bandwidthRemoveNiceApp(I)V
    .locals 5
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2780
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2781
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2783
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2784
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2785
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x35

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2786
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2787
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->bandwidthRemoveNiceApp(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2793
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2794
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2788
    return-void

    .line 2790
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2793
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2794
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2795
    nop

    .line 2796
    return-void

    .line 2793
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2794
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public bandwidthSetGlobalAlert(J)V
    .locals 5
    .param p1, "bytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2704
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2705
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2707
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2708
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 2709
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x31

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2710
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2711
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->bandwidthSetGlobalAlert(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2717
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2718
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2712
    return-void

    .line 2714
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2717
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2718
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2719
    nop

    .line 2720
    return-void

    .line 2717
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2718
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public bandwidthSetInterfaceAlert(Ljava/lang/String;J)V
    .locals 5
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "bytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2665
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2666
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2668
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2669
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2670
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 2671
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2672
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2673
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Landroid/net/INetd;->bandwidthSetInterfaceAlert(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2679
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2680
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2674
    return-void

    .line 2676
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2679
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2680
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2681
    nop

    .line 2682
    return-void

    .line 2679
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2680
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public bandwidthSetInterfaceQuota(Ljava/lang/String;J)V
    .locals 5
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "bytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2626
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2627
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2629
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2630
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2631
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 2632
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2633
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2634
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Landroid/net/INetd;->bandwidthSetInterfaceQuota(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2640
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2641
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2635
    return-void

    .line 2637
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2640
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2641
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2642
    nop

    .line 2643
    return-void

    .line 2640
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2641
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public clatdStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "nat64Prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2467
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2468
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2471
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2472
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2473
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2474
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x25

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2475
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2476
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->clatdStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2482
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2483
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2476
    return-object v3

    .line 2478
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2479
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 2482
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2483
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2484
    nop

    .line 2485
    return-object v2

    .line 2482
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2483
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public clatdStop(Ljava/lang/String;)V
    .locals 5
    .param p1, "ifName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2489
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2490
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2492
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2493
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2494
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x26

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2495
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2496
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->clatdStop(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2502
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2503
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2497
    return-void

    .line 2499
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2502
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2503
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2504
    nop

    .line 2505
    return-void

    .line 2502
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2503
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public destroySockets(II)Z
    .locals 5
    .param p1, "uid"    # I
    .param p2, "socketType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3771
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3772
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3775
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3776
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3777
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3778
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x66

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3779
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3780
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->destroySockets(II)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3786
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3787
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3780
    return v3

    .line 3782
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3783
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 3786
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3787
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3788
    nop

    .line 3789
    return v2

    .line 3786
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3787
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public firewallAddUidInterfaceRules(Ljava/lang/String;[I)V
    .locals 5
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "uids"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3548
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3549
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3551
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3552
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3553
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3554
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3555
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3556
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->firewallAddUidInterfaceRules(Ljava/lang/String;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3562
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3563
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3557
    return-void

    .line 3559
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3562
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3563
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3564
    nop

    .line 3565
    return-void

    .line 3562
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3563
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public firewallEnableChildChain(IZ)V
    .locals 5
    .param p1, "childChain"    # I
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3299
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3300
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3302
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3303
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3304
    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3305
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4f

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3306
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3307
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->firewallEnableChildChain(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3313
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3314
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3308
    return-void

    .line 3310
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3313
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3314
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3315
    nop

    .line 3316
    return-void

    .line 3313
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3314
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public firewallRemoveUidInterfaceRules([I)V
    .locals 5
    .param p1, "uids"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3568
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3569
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3571
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3572
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3573
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3574
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3575
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->firewallRemoveUidInterfaceRules([I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3581
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3582
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3576
    return-void

    .line 3578
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3581
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3582
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3583
    nop

    .line 3584
    return-void

    .line 3581
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3582
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public firewallReplaceUidChain(Ljava/lang/String;Z[I)Z
    .locals 6
    .param p1, "chainName"    # Ljava/lang/String;
    .param p2, "isWhitelist"    # Z
    .param p3, "uids"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1675
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1676
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1679
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1680
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1681
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1682
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1683
    iget-object v4, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x2

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    .line 1684
    .local v4, "_status":Z
    if-nez v4, :cond_1

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1685
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroid/net/INetd;->firewallReplaceUidChain(Ljava/lang/String;Z[I)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1691
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1692
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1685
    return v2

    .line 1687
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1688
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 1691
    .end local v4    # "_status":Z
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1692
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1693
    nop

    .line 1694
    return v2

    .line 1691
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1692
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public firewallSetFirewallType(I)V
    .locals 5
    .param p1, "firewalltype"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3239
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3240
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3242
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3243
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3244
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3245
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3246
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->firewallSetFirewallType(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3252
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3253
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3247
    return-void

    .line 3249
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3252
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3253
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3254
    nop

    .line 3255
    return-void

    .line 3252
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3253
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public firewallSetInterfaceRule(Ljava/lang/String;I)V
    .locals 5
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "firewallRule"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3258
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3259
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3261
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3262
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3263
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3264
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3265
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3266
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->firewallSetInterfaceRule(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3272
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3273
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3267
    return-void

    .line 3269
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3272
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3273
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3274
    nop

    .line 3275
    return-void

    .line 3272
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3273
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public firewallSetUidRule(III)V
    .locals 5
    .param p1, "childChain"    # I
    .param p2, "uid"    # I
    .param p3, "firewallRule"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3278
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3279
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3281
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3282
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3283
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3284
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3285
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3286
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3287
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Landroid/net/INetd;->firewallSetUidRule(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3293
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3294
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3288
    return-void

    .line 3290
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3293
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3294
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3295
    nop

    .line 3296
    return-void

    .line 3293
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3294
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 1651
    const-string v0, "android.net.INetd"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3813
    iget v0, p0, Landroid/net/INetd$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3814
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3815
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3817
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3818
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3819
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3820
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/INetd$Stub$Proxy;->mCachedVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3822
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3823
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3824
    goto :goto_0

    .line 3822
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3823
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 3826
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_0
    :goto_0
    iget v0, p0, Landroid/net/INetd$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public getOemNetd()Landroid/os/IBinder;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3605
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3606
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3609
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3610
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3611
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3612
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/INetd;->getOemNetd()Landroid/os/IBinder;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3618
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3619
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3612
    return-object v3

    .line 3614
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3615
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 3618
    .local v2, "_result":Landroid/os/IBinder;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3619
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3620
    nop

    .line 3621
    return-object v2

    .line 3618
    .end local v2    # "_result":Landroid/os/IBinder;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3619
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getProcSysNet(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "ipversion"    # I
    .param p2, "which"    # I
    .param p3, "ifname"    # Ljava/lang/String;
    .param p4, "parameter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1980
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1981
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1984
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1985
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1986
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1987
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1988
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1989
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1990
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1991
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/net/INetd;->getProcSysNet(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1997
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1998
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1991
    return-object v3

    .line 1993
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1994
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 1997
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1998
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1999
    nop

    .line 2000
    return-object v2

    .line 1997
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1998
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public idletimerAddInterface(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "timeout"    # I
    .param p3, "classLabel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2405
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2406
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2408
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2409
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2410
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2411
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2412
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x22

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2413
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2414
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Landroid/net/INetd;->idletimerAddInterface(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2420
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2421
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2415
    return-void

    .line 2417
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2420
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2421
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2422
    nop

    .line 2423
    return-void

    .line 2420
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2421
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public idletimerRemoveInterface(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "timeout"    # I
    .param p3, "classLabel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2426
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2427
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2429
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2430
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2431
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2432
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2433
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x23

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2434
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2435
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Landroid/net/INetd;->idletimerRemoveInterface(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2441
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2442
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2436
    return-void

    .line 2438
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2441
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2442
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2443
    nop

    .line 2444
    return-void

    .line 2441
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2442
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public interfaceAddAddress(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "addrString"    # Ljava/lang/String;
    .param p3, "prefixLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1938
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1939
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1941
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1942
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1943
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1944
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1945
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1946
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1947
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Landroid/net/INetd;->interfaceAddAddress(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1953
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1954
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1948
    return-void

    .line 1950
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1953
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1954
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1955
    nop

    .line 1956
    return-void

    .line 1953
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1954
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public interfaceClearAddrs(Ljava/lang/String;)V
    .locals 5
    .param p1, "ifName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3410
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3411
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3413
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3414
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3415
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x54

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3416
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3417
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->interfaceClearAddrs(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3423
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3424
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3418
    return-void

    .line 3420
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3423
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3424
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3425
    nop

    .line 3426
    return-void

    .line 3423
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3424
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public interfaceDelAddress(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "addrString"    # Ljava/lang/String;
    .param p3, "prefixLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1959
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1960
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1962
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1963
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1964
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1965
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1966
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1967
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1968
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Landroid/net/INetd;->interfaceDelAddress(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1974
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1975
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1969
    return-void

    .line 1971
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1974
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1975
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1976
    nop

    .line 1977
    return-void

    .line 1974
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1975
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public interfaceGetCfg(Ljava/lang/String;)Landroid/net/InterfaceConfigurationParcel;
    .locals 5
    .param p1, "ifName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3339
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3340
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3343
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3344
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3345
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x51

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3346
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3347
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->interfaceGetCfg(Ljava/lang/String;)Landroid/net/InterfaceConfigurationParcel;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3358
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3359
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3347
    return-object v3

    .line 3349
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3350
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 3351
    sget-object v3, Landroid/net/InterfaceConfigurationParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/InterfaceConfigurationParcel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v3, "_result":Landroid/net/InterfaceConfigurationParcel;
    goto :goto_0

    .line 3354
    .end local v3    # "_result":Landroid/net/InterfaceConfigurationParcel;
    :cond_1
    const/4 v3, 0x0

    .line 3358
    .end local v2    # "_status":Z
    .restart local v3    # "_result":Landroid/net/InterfaceConfigurationParcel;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3359
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3360
    nop

    .line 3361
    return-object v3

    .line 3358
    .end local v3    # "_result":Landroid/net/InterfaceConfigurationParcel;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3359
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public interfaceGetList()[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3319
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3320
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3323
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3324
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x50

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3325
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3326
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/INetd;->interfaceGetList()[Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3332
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3333
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3326
    return-object v3

    .line 3328
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3329
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 3332
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3333
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3334
    nop

    .line 3335
    return-object v2

    .line 3332
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3333
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public interfaceSetCfg(Landroid/net/InterfaceConfigurationParcel;)V
    .locals 5
    .param p1, "cfg"    # Landroid/net/InterfaceConfigurationParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3365
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3366
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3368
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3369
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 3370
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3371
    invoke-virtual {p1, v0, v2}, Landroid/net/InterfaceConfigurationParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 3374
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3376
    :goto_0
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x52

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3377
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3378
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->interfaceSetCfg(Landroid/net/InterfaceConfigurationParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3384
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3385
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3379
    return-void

    .line 3381
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3384
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3385
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3386
    nop

    .line 3387
    return-void

    .line 3384
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3385
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public interfaceSetEnableIPv6(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3429
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3430
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3432
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3433
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3434
    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3435
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x55

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3436
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3437
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->interfaceSetEnableIPv6(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3443
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3444
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3438
    return-void

    .line 3440
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3443
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3444
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3445
    nop

    .line 3446
    return-void

    .line 3443
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3444
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public interfaceSetIPv6PrivacyExtensions(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3390
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3391
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3393
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3394
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3395
    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3396
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x53

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3397
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3398
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->interfaceSetIPv6PrivacyExtensions(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3404
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3405
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3399
    return-void

    .line 3401
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3404
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3405
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3406
    nop

    .line 3407
    return-void

    .line 3404
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3405
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public interfaceSetMtu(Ljava/lang/String;I)V
    .locals 5
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "mtu"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3449
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3450
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3452
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3453
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3454
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3455
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x56

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3456
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3457
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->interfaceSetMtu(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3463
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3464
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3458
    return-void

    .line 3460
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3463
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3464
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3465
    nop

    .line 3466
    return-void

    .line 3463
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3464
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public ipSecAddSecurityAssociation(IILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;[BILjava/lang/String;[BILjava/lang/String;[BIIIII)V
    .locals 25
    .param p1, "transformId"    # I
    .param p2, "mode"    # I
    .param p3, "sourceAddress"    # Ljava/lang/String;
    .param p4, "destinationAddress"    # Ljava/lang/String;
    .param p5, "underlyingNetId"    # I
    .param p6, "spi"    # I
    .param p7, "markValue"    # I
    .param p8, "markMask"    # I
    .param p9, "authAlgo"    # Ljava/lang/String;
    .param p10, "authKey"    # [B
    .param p11, "authTruncBits"    # I
    .param p12, "cryptAlgo"    # Ljava/lang/String;
    .param p13, "cryptKey"    # [B
    .param p14, "cryptTruncBits"    # I
    .param p15, "aeadAlgo"    # Ljava/lang/String;
    .param p16, "aeadKey"    # [B
    .param p17, "aeadIcvBits"    # I
    .param p18, "encapType"    # I
    .param p19, "encapLocalPort"    # I
    .param p20, "encapRemotePort"    # I
    .param p21, "interfaceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2077
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2078
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2080
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "android.net.INetd"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2081
    move/from16 v15, p1

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 2082
    move/from16 v14, p2

    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 2083
    move-object/from16 v13, p3

    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2084
    move-object/from16 v12, p4

    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2085
    move/from16 v11, p5

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 2086
    move/from16 v10, p6

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 2087
    move/from16 v9, p7

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 2088
    move/from16 v8, p8

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2089
    move-object/from16 v7, p9

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2090
    move-object/from16 v6, p10

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2091
    move/from16 v5, p11

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2092
    move-object/from16 v4, p12

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2093
    move-object/from16 v3, p13

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2094
    move/from16 v15, p14

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 2095
    move-object/from16 v15, p15

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2096
    move-object/from16 v15, p16

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2097
    move/from16 v15, p17

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 2098
    move/from16 v15, p18

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 2099
    move/from16 v15, p19

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 2100
    move/from16 v15, p20

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 2101
    move/from16 v15, p21

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 2102
    move-object/from16 v15, p0

    iget-object v0, v15, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 2103
    .local v0, "_status":Z
    if-nez v0, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2104
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move/from16 v14, p11

    move-object/from16 v15, p12

    move-object/from16 v16, p13

    move/from16 v17, p14

    move-object/from16 v18, p15

    move-object/from16 v19, p16

    move/from16 v20, p17

    move/from16 v21, p18

    move/from16 v22, p19

    move/from16 v23, p20

    move/from16 v24, p21

    invoke-interface/range {v3 .. v24}, Landroid/net/INetd;->ipSecAddSecurityAssociation(IILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;[BILjava/lang/String;[BILjava/lang/String;[BIIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2110
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2111
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2105
    return-void

    .line 2107
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2110
    .end local v0    # "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2111
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2112
    nop

    .line 2113
    return-void

    .line 2110
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2111
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public ipSecAddSecurityPolicy(IIILjava/lang/String;Ljava/lang/String;IIII)V
    .locals 16
    .param p1, "transformId"    # I
    .param p2, "selAddrFamily"    # I
    .param p3, "direction"    # I
    .param p4, "tmplSrcAddress"    # Ljava/lang/String;
    .param p5, "tmplDstAddress"    # Ljava/lang/String;
    .param p6, "spi"    # I
    .param p7, "markValue"    # I
    .param p8, "markMask"    # I
    .param p9, "interfaceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2196
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2197
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2199
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "android.net.INetd"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 2200
    move/from16 v13, p1

    :try_start_1
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2201
    move/from16 v14, p2

    :try_start_2
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2202
    move/from16 v15, p3

    :try_start_3
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 2203
    move-object/from16 v12, p4

    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2204
    move-object/from16 v11, p5

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2205
    move/from16 v10, p6

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 2206
    move/from16 v9, p7

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 2207
    move/from16 v8, p8

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2208
    move/from16 v7, p9

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2209
    move-object/from16 v6, p0

    iget-object v0, v6, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 2210
    .local v0, "_status":Z
    if-nez v0, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2211
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-interface/range {v3 .. v12}, Landroid/net/INetd;->ipSecAddSecurityPolicy(IIILjava/lang/String;Ljava/lang/String;IIII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2217
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2218
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2212
    return-void

    .line 2214
    :cond_0
    :try_start_4
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2217
    .end local v0    # "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2218
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2219
    nop

    .line 2220
    return-void

    .line 2217
    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v0

    goto :goto_0

    :catchall_3
    move-exception v0

    move/from16 v13, p1

    :goto_0
    move/from16 v14, p2

    :goto_1
    move/from16 v15, p3

    :goto_2
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2218
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public ipSecAddTunnelInterface(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 16
    .param p1, "deviceName"    # Ljava/lang/String;
    .param p2, "localAddress"    # Ljava/lang/String;
    .param p3, "remoteAddress"    # Ljava/lang/String;
    .param p4, "iKey"    # I
    .param p5, "oKey"    # I
    .param p6, "interfaceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2274
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2275
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2277
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "android.net.INetd"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 2278
    move-object/from16 v10, p1

    :try_start_1
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 2279
    move-object/from16 v11, p2

    :try_start_2
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 2280
    move-object/from16 v12, p3

    :try_start_3
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 2281
    move/from16 v13, p4

    :try_start_4
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2282
    move/from16 v14, p5

    :try_start_5
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2283
    move/from16 v15, p6

    :try_start_6
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 2284
    move-object/from16 v9, p0

    iget-object v0, v9, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 2285
    .local v0, "_status":Z
    if-nez v0, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2286
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-interface/range {v3 .. v9}, Landroid/net/INetd;->ipSecAddTunnelInterface(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2292
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2293
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2287
    return-void

    .line 2289
    :cond_0
    :try_start_7
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2292
    .end local v0    # "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2293
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2294
    nop

    .line 2295
    return-void

    .line 2292
    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_3

    :catchall_3
    move-exception v0

    goto :goto_2

    :catchall_4
    move-exception v0

    goto :goto_1

    :catchall_5
    move-exception v0

    goto :goto_0

    :catchall_6
    move-exception v0

    move-object/from16 v10, p1

    :goto_0
    move-object/from16 v11, p2

    :goto_1
    move-object/from16 v12, p3

    :goto_2
    move/from16 v13, p4

    :goto_3
    move/from16 v14, p5

    :goto_4
    move/from16 v15, p6

    :goto_5
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2293
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public ipSecAllocateSpi(ILjava/lang/String;Ljava/lang/String;I)I
    .locals 5
    .param p1, "transformId"    # I
    .param p2, "sourceAddress"    # Ljava/lang/String;
    .param p3, "destinationAddress"    # Ljava/lang/String;
    .param p4, "spi"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2053
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2054
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2057
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2058
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2059
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2060
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2061
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2062
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2063
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2064
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/net/INetd;->ipSecAllocateSpi(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2070
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2071
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2064
    return v3

    .line 2066
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2067
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 2070
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2071
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2072
    nop

    .line 2073
    return v2

    .line 2070
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2071
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public ipSecApplyTransportModeTransform(Landroid/os/ParcelFileDescriptor;IILjava/lang/String;Ljava/lang/String;I)V
    .locals 16
    .param p1, "socket"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "transformId"    # I
    .param p3, "direction"    # I
    .param p4, "sourceAddress"    # Ljava/lang/String;
    .param p5, "destinationAddress"    # Ljava/lang/String;
    .param p6, "spi"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2141
    move-object/from16 v8, p1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    .line 2142
    .local v9, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v10

    .line 2144
    .local v10, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "android.net.INetd"

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2145
    const/4 v0, 0x0

    if-eqz v8, :cond_0

    .line 2146
    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2147
    invoke-virtual {v8, v9, v0}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 2150
    :cond_0
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 2152
    :goto_0
    move/from16 v11, p2

    :try_start_1
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 2153
    move/from16 v12, p3

    :try_start_2
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 2154
    move-object/from16 v13, p4

    :try_start_3
    invoke-virtual {v9, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2155
    move-object/from16 v14, p5

    :try_start_4
    invoke-virtual {v9, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2156
    move/from16 v15, p6

    :try_start_5
    invoke-virtual {v9, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 2157
    move-object/from16 v7, p0

    iget-object v1, v7, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x17

    invoke-interface {v1, v2, v9, v10, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 2158
    .local v0, "_status":Z
    if-nez v0, :cond_1

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2159
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v1

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-interface/range {v1 .. v7}, Landroid/net/INetd;->ipSecApplyTransportModeTransform(Landroid/os/ParcelFileDescriptor;IILjava/lang/String;Ljava/lang/String;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2165
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    .line 2166
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 2160
    return-void

    .line 2162
    :cond_1
    :try_start_6
    invoke-virtual {v10}, Landroid/os/Parcel;->readException()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2165
    .end local v0    # "_status":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    .line 2166
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 2167
    nop

    .line 2168
    return-void

    .line 2165
    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_3

    :catchall_3
    move-exception v0

    goto :goto_2

    :catchall_4
    move-exception v0

    goto :goto_1

    :catchall_5
    move-exception v0

    move/from16 v11, p2

    :goto_1
    move/from16 v12, p3

    :goto_2
    move-object/from16 v13, p4

    :goto_3
    move-object/from16 v14, p5

    :goto_4
    move/from16 v15, p6

    :goto_5
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    .line 2166
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public ipSecDeleteSecurityAssociation(ILjava/lang/String;Ljava/lang/String;IIII)V
    .locals 16
    .param p1, "transformId"    # I
    .param p2, "sourceAddress"    # Ljava/lang/String;
    .param p3, "destinationAddress"    # Ljava/lang/String;
    .param p4, "spi"    # I
    .param p5, "markValue"    # I
    .param p6, "markMask"    # I
    .param p7, "interfaceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2116
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2117
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2119
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "android.net.INetd"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 2120
    move/from16 v11, p1

    :try_start_1
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 2121
    move-object/from16 v12, p2

    :try_start_2
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 2122
    move-object/from16 v13, p3

    :try_start_3
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2123
    move/from16 v14, p4

    :try_start_4
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2124
    move/from16 v15, p5

    :try_start_5
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 2125
    move/from16 v10, p6

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 2126
    move/from16 v9, p7

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 2127
    move-object/from16 v8, p0

    iget-object v0, v8, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 2128
    .local v0, "_status":Z
    if-nez v0, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2129
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-interface/range {v3 .. v10}, Landroid/net/INetd;->ipSecDeleteSecurityAssociation(ILjava/lang/String;Ljava/lang/String;IIII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2135
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2136
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2130
    return-void

    .line 2132
    :cond_0
    :try_start_6
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2135
    .end local v0    # "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2136
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2137
    nop

    .line 2138
    return-void

    .line 2135
    :catchall_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_2

    :catchall_3
    move-exception v0

    goto :goto_1

    :catchall_4
    move-exception v0

    goto :goto_0

    :catchall_5
    move-exception v0

    move/from16 v11, p1

    :goto_0
    move-object/from16 v12, p2

    :goto_1
    move-object/from16 v13, p3

    :goto_2
    move/from16 v14, p4

    :goto_3
    move/from16 v15, p5

    :goto_4
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2136
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public ipSecDeleteSecurityPolicy(IIIIII)V
    .locals 16
    .param p1, "transformId"    # I
    .param p2, "selAddrFamily"    # I
    .param p3, "direction"    # I
    .param p4, "markValue"    # I
    .param p5, "markMask"    # I
    .param p6, "interfaceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2250
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2251
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2253
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "android.net.INetd"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 2254
    move/from16 v10, p1

    :try_start_1
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 2255
    move/from16 v11, p2

    :try_start_2
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 2256
    move/from16 v12, p3

    :try_start_3
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 2257
    move/from16 v13, p4

    :try_start_4
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2258
    move/from16 v14, p5

    :try_start_5
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2259
    move/from16 v15, p6

    :try_start_6
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 2260
    move-object/from16 v9, p0

    iget-object v0, v9, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 2261
    .local v0, "_status":Z
    if-nez v0, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2262
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-interface/range {v3 .. v9}, Landroid/net/INetd;->ipSecDeleteSecurityPolicy(IIIIII)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2268
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2269
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2263
    return-void

    .line 2265
    :cond_0
    :try_start_7
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2268
    .end local v0    # "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2269
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2270
    nop

    .line 2271
    return-void

    .line 2268
    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_3

    :catchall_3
    move-exception v0

    goto :goto_2

    :catchall_4
    move-exception v0

    goto :goto_1

    :catchall_5
    move-exception v0

    goto :goto_0

    :catchall_6
    move-exception v0

    move/from16 v10, p1

    :goto_0
    move/from16 v11, p2

    :goto_1
    move/from16 v12, p3

    :goto_2
    move/from16 v13, p4

    :goto_3
    move/from16 v14, p5

    :goto_4
    move/from16 v15, p6

    :goto_5
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2269
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public ipSecRemoveTransportModeTransform(Landroid/os/ParcelFileDescriptor;)V
    .locals 5
    .param p1, "socket"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2171
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2172
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2174
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2175
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 2176
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2177
    invoke-virtual {p1, v0, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 2180
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2182
    :goto_0
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x18

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2183
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2184
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->ipSecRemoveTransportModeTransform(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2190
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2191
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2185
    return-void

    .line 2187
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2190
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2191
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2192
    nop

    .line 2193
    return-void

    .line 2190
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2191
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public ipSecRemoveTunnelInterface(Ljava/lang/String;)V
    .locals 5
    .param p1, "deviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2322
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2323
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2325
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2326
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2327
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2328
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2329
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->ipSecRemoveTunnelInterface(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2335
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2336
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2330
    return-void

    .line 2332
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2335
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2336
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2337
    nop

    .line 2338
    return-void

    .line 2335
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2336
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public ipSecSetEncapSocketOwner(Landroid/os/ParcelFileDescriptor;I)V
    .locals 5
    .param p1, "socket"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "newUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2027
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2028
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2030
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2031
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 2032
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2033
    invoke-virtual {p1, v0, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 2036
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2038
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2039
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x13

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2040
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2041
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->ipSecSetEncapSocketOwner(Landroid/os/ParcelFileDescriptor;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2047
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2048
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2042
    return-void

    .line 2044
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2047
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2048
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2049
    nop

    .line 2050
    return-void

    .line 2047
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2048
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public ipSecUpdateSecurityPolicy(IIILjava/lang/String;Ljava/lang/String;IIII)V
    .locals 16
    .param p1, "transformId"    # I
    .param p2, "selAddrFamily"    # I
    .param p3, "direction"    # I
    .param p4, "tmplSrcAddress"    # Ljava/lang/String;
    .param p5, "tmplDstAddress"    # Ljava/lang/String;
    .param p6, "spi"    # I
    .param p7, "markValue"    # I
    .param p8, "markMask"    # I
    .param p9, "interfaceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2223
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2224
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2226
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "android.net.INetd"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 2227
    move/from16 v13, p1

    :try_start_1
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2228
    move/from16 v14, p2

    :try_start_2
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2229
    move/from16 v15, p3

    :try_start_3
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 2230
    move-object/from16 v12, p4

    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2231
    move-object/from16 v11, p5

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2232
    move/from16 v10, p6

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 2233
    move/from16 v9, p7

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 2234
    move/from16 v8, p8

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2235
    move/from16 v7, p9

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2236
    move-object/from16 v6, p0

    iget-object v0, v6, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 2237
    .local v0, "_status":Z
    if-nez v0, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2238
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-interface/range {v3 .. v12}, Landroid/net/INetd;->ipSecUpdateSecurityPolicy(IIILjava/lang/String;Ljava/lang/String;IIII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2244
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2245
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2239
    return-void

    .line 2241
    :cond_0
    :try_start_4
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2244
    .end local v0    # "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2245
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2246
    nop

    .line 2247
    return-void

    .line 2244
    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v0

    goto :goto_0

    :catchall_3
    move-exception v0

    move/from16 v13, p1

    :goto_0
    move/from16 v14, p2

    :goto_1
    move/from16 v15, p3

    :goto_2
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2245
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public ipSecUpdateTunnelInterface(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 16
    .param p1, "deviceName"    # Ljava/lang/String;
    .param p2, "localAddress"    # Ljava/lang/String;
    .param p3, "remoteAddress"    # Ljava/lang/String;
    .param p4, "iKey"    # I
    .param p5, "oKey"    # I
    .param p6, "interfaceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2298
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2299
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2301
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "android.net.INetd"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 2302
    move-object/from16 v10, p1

    :try_start_1
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 2303
    move-object/from16 v11, p2

    :try_start_2
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 2304
    move-object/from16 v12, p3

    :try_start_3
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 2305
    move/from16 v13, p4

    :try_start_4
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2306
    move/from16 v14, p5

    :try_start_5
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2307
    move/from16 v15, p6

    :try_start_6
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 2308
    move-object/from16 v9, p0

    iget-object v0, v9, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 2309
    .local v0, "_status":Z
    if-nez v0, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2310
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-interface/range {v3 .. v9}, Landroid/net/INetd;->ipSecUpdateTunnelInterface(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2316
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2317
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2311
    return-void

    .line 2313
    :cond_0
    :try_start_7
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2316
    .end local v0    # "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2317
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2318
    nop

    .line 2319
    return-void

    .line 2316
    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_3

    :catchall_3
    move-exception v0

    goto :goto_2

    :catchall_4
    move-exception v0

    goto :goto_1

    :catchall_5
    move-exception v0

    goto :goto_0

    :catchall_6
    move-exception v0

    move-object/from16 v10, p1

    :goto_0
    move-object/from16 v11, p2

    :goto_1
    move-object/from16 v12, p3

    :goto_2
    move/from16 v13, p4

    :goto_3
    move/from16 v14, p5

    :goto_4
    move/from16 v15, p6

    :goto_5
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2317
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public ipfwdAddInterfaceForward(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "fromIface"    # Ljava/lang/String;
    .param p2, "toIface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2586
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2587
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2589
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2590
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2591
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2592
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2593
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2594
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->ipfwdAddInterfaceForward(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2600
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2601
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2595
    return-void

    .line 2597
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2600
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2601
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2602
    nop

    .line 2603
    return-void

    .line 2600
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2601
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public ipfwdDisableForwarding(Ljava/lang/String;)V
    .locals 5
    .param p1, "requester"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2567
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2568
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2570
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2571
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2572
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2573
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2574
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->ipfwdDisableForwarding(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2580
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2581
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2575
    return-void

    .line 2577
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2580
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2581
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2582
    nop

    .line 2583
    return-void

    .line 2580
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2581
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public ipfwdEnableForwarding(Ljava/lang/String;)V
    .locals 5
    .param p1, "requester"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2548
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2549
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2551
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2552
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2553
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x29

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2554
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2555
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->ipfwdEnableForwarding(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2561
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2562
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2556
    return-void

    .line 2558
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2561
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2562
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2563
    nop

    .line 2564
    return-void

    .line 2561
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2562
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public ipfwdEnabled()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2508
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2509
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2512
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2513
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x27

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2514
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2515
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/INetd;->ipfwdEnabled()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2521
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2522
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2515
    return v3

    .line 2517
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2518
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 2521
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2522
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2523
    nop

    .line 2524
    return v2

    .line 2521
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2522
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public ipfwdGetRequesterList()[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2528
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2529
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2532
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2533
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x28

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2534
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2535
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/INetd;->ipfwdGetRequesterList()[Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2541
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2542
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2535
    return-object v3

    .line 2537
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2538
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 2541
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2542
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2543
    nop

    .line 2544
    return-object v2

    .line 2541
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2542
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public ipfwdRemoveInterfaceForward(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "fromIface"    # Ljava/lang/String;
    .param p2, "toIface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2606
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2607
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2609
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2610
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2611
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2612
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2613
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2614
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->ipfwdRemoveInterfaceForward(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2620
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2621
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2615
    return-void

    .line 2617
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2620
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2621
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2622
    nop

    .line 2623
    return-void

    .line 2620
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2621
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public isAlive()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1655
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1656
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1659
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1660
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1661
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1662
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/INetd;->isAlive()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1668
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1669
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1662
    return v3

    .line 1664
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1665
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_1

    move v3, v4

    :cond_1
    move v2, v3

    .line 1668
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1669
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1670
    nop

    .line 1671
    return v2

    .line 1668
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1669
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public networkAddInterface(ILjava/lang/String;)V
    .locals 5
    .param p1, "netId"    # I
    .param p2, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1778
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1779
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1781
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1782
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1783
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1784
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1785
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1786
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->networkAddInterface(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1792
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1793
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1787
    return-void

    .line 1789
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1792
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1793
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1794
    nop

    .line 1795
    return-void

    .line 1792
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1793
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public networkAddLegacyRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10
    .param p1, "netId"    # I
    .param p2, "ifName"    # Ljava/lang/String;
    .param p3, "destination"    # Ljava/lang/String;
    .param p4, "nextHop"    # Ljava/lang/String;
    .param p5, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2998
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2999
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3001
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3002
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3003
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3004
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3005
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3006
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3007
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x40

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3008
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3009
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v4

    move v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move v9, p5

    invoke-interface/range {v4 .. v9}, Landroid/net/INetd;->networkAddLegacyRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3015
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3016
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3010
    return-void

    .line 3012
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3015
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3016
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3017
    nop

    .line 3018
    return-void

    .line 3015
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3016
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public networkAddRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "netId"    # I
    .param p2, "ifName"    # Ljava/lang/String;
    .param p3, "destination"    # Ljava/lang/String;
    .param p4, "nextHop"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2954
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2955
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2957
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2958
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2959
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2960
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2961
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2962
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2963
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2964
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/net/INetd;->networkAddRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2970
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2971
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2965
    return-void

    .line 2967
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2970
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2971
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2972
    nop

    .line 2973
    return-void

    .line 2970
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2971
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public networkAddUidRanges(I[Landroid/net/UidRangeParcel;)V
    .locals 5
    .param p1, "netId"    # I
    .param p2, "uidRanges"    # [Landroid/net/UidRangeParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1818
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1819
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1821
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1822
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1823
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1824
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1825
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1826
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->networkAddUidRanges(I[Landroid/net/UidRangeParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1832
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1833
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1827
    return-void

    .line 1829
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1832
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1833
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1834
    nop

    .line 1835
    return-void

    .line 1832
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1833
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public networkCanProtect(I)Z
    .locals 5
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3218
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3219
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3222
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3223
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3224
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3225
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3226
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->networkCanProtect(I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3232
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3233
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3226
    return v3

    .line 3228
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3229
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 3232
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3233
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3234
    nop

    .line 3235
    return v2

    .line 3232
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3233
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public networkClearDefault()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3083
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3084
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3086
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3087
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x44

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3088
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3089
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/INetd;->networkClearDefault()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3095
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3096
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3090
    return-void

    .line 3092
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3095
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3096
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3097
    nop

    .line 3098
    return-void

    .line 3095
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3096
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public networkClearPermissionForUser([I)V
    .locals 5
    .param p1, "uids"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3141
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3142
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3144
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3145
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3146
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x47

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3147
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3148
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->networkClearPermissionForUser([I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3154
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3155
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3149
    return-void

    .line 3151
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3154
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3155
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3156
    nop

    .line 3157
    return-void

    .line 3154
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3155
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public networkCreatePhysical(II)V
    .locals 5
    .param p1, "netId"    # I
    .param p2, "permission"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1719
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1720
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1722
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1723
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1724
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1725
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1726
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1727
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->networkCreatePhysical(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1733
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1734
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1728
    return-void

    .line 1730
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1733
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1734
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1735
    nop

    .line 1736
    return-void

    .line 1733
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1734
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public networkCreateVpn(IZ)V
    .locals 5
    .param p1, "netId"    # I
    .param p2, "secure"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1739
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1740
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1742
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1743
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1744
    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1745
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1746
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1747
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->networkCreateVpn(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1753
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1754
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1748
    return-void

    .line 1750
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1753
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1754
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1755
    nop

    .line 1756
    return-void

    .line 1753
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1754
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public networkDestroy(I)V
    .locals 5
    .param p1, "netId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1759
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1760
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1762
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1763
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1764
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1765
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1766
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->networkDestroy(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1772
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1773
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1767
    return-void

    .line 1769
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1772
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1773
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1774
    nop

    .line 1775
    return-void

    .line 1772
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1773
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public networkGetDefault()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3044
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3045
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3048
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3049
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x42

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3050
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3051
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/INetd;->networkGetDefault()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3057
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3058
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3051
    return v3

    .line 3053
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3054
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 3057
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3058
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3059
    nop

    .line 3060
    return v2

    .line 3057
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3058
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public networkRejectNonSecureVpn(Z[Landroid/net/UidRangeParcel;)V
    .locals 5
    .param p1, "add"    # Z
    .param p2, "uidRanges"    # [Landroid/net/UidRangeParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1858
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1859
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1861
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1862
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1863
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1864
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1865
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1866
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->networkRejectNonSecureVpn(Z[Landroid/net/UidRangeParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1872
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1873
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1867
    return-void

    .line 1869
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1872
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1873
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1874
    nop

    .line 1875
    return-void

    .line 1872
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1873
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public networkRemoveInterface(ILjava/lang/String;)V
    .locals 5
    .param p1, "netId"    # I
    .param p2, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1798
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1799
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1801
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1802
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1803
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1804
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1805
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1806
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->networkRemoveInterface(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1812
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1813
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1807
    return-void

    .line 1809
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1812
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1813
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1814
    nop

    .line 1815
    return-void

    .line 1812
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1813
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public networkRemoveLegacyRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10
    .param p1, "netId"    # I
    .param p2, "ifName"    # Ljava/lang/String;
    .param p3, "destination"    # Ljava/lang/String;
    .param p4, "nextHop"    # Ljava/lang/String;
    .param p5, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3021
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3022
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3024
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3025
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3026
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3027
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3028
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3029
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3030
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x41

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3031
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3032
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v4

    move v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move v9, p5

    invoke-interface/range {v4 .. v9}, Landroid/net/INetd;->networkRemoveLegacyRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3038
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3039
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3033
    return-void

    .line 3035
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3038
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3039
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3040
    nop

    .line 3041
    return-void

    .line 3038
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3039
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public networkRemoveRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "netId"    # I
    .param p2, "ifName"    # Ljava/lang/String;
    .param p3, "destination"    # Ljava/lang/String;
    .param p4, "nextHop"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2976
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2977
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2979
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2980
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2981
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2982
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2983
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2984
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2985
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2986
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/net/INetd;->networkRemoveRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2992
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2993
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2987
    return-void

    .line 2989
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2992
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2993
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2994
    nop

    .line 2995
    return-void

    .line 2992
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2993
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public networkRemoveUidRanges(I[Landroid/net/UidRangeParcel;)V
    .locals 5
    .param p1, "netId"    # I
    .param p2, "uidRanges"    # [Landroid/net/UidRangeParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1838
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1839
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1841
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1842
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1843
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1844
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1845
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1846
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->networkRemoveUidRanges(I[Landroid/net/UidRangeParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1852
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1853
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1847
    return-void

    .line 1849
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1852
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1853
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1854
    nop

    .line 1855
    return-void

    .line 1852
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1853
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public networkSetDefault(I)V
    .locals 5
    .param p1, "netId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3064
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3065
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3067
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3068
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3069
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x43

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3070
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3071
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->networkSetDefault(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3077
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3078
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3072
    return-void

    .line 3074
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3077
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3078
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3079
    nop

    .line 3080
    return-void

    .line 3077
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3078
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public networkSetPermissionForNetwork(II)V
    .locals 5
    .param p1, "netId"    # I
    .param p2, "permission"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3101
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3102
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3104
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3105
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3106
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3107
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x45

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3108
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3109
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->networkSetPermissionForNetwork(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3115
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3116
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3110
    return-void

    .line 3112
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3115
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3116
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3117
    nop

    .line 3118
    return-void

    .line 3115
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3116
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public networkSetPermissionForUser(I[I)V
    .locals 5
    .param p1, "permission"    # I
    .param p2, "uids"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3121
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3122
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3124
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3125
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3126
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3127
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x46

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3128
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3129
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->networkSetPermissionForUser(I[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3135
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3136
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3130
    return-void

    .line 3132
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3135
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3136
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3137
    nop

    .line 3138
    return-void

    .line 3135
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3136
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public networkSetProtectAllow(I)V
    .locals 5
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3180
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3181
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3183
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3184
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3185
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x49

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3186
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3187
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->networkSetProtectAllow(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3193
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3194
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3188
    return-void

    .line 3190
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3193
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3194
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3195
    nop

    .line 3196
    return-void

    .line 3193
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3194
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public networkSetProtectDeny(I)V
    .locals 5
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3199
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3200
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3202
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3203
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3204
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3205
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3206
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->networkSetProtectDeny(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3212
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3213
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3207
    return-void

    .line 3209
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3212
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3213
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3214
    nop

    .line 3215
    return-void

    .line 3212
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3213
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public opExecuteIPtableCmd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "dstPort"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3793
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3794
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3796
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3797
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3798
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3799
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x67

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3800
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3801
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->opExecuteIPtableCmd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3807
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3808
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3802
    return-void

    .line 3804
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3807
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3808
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3809
    nop

    .line 3810
    return-void

    .line 3807
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3808
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public registerUnsolicitedEventListener(Landroid/net/INetdUnsolicitedEventListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/net/INetdUnsolicitedEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3529
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3530
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3532
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3533
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/net/INetdUnsolicitedEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3534
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3535
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3536
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->registerUnsolicitedEventListener(Landroid/net/INetdUnsolicitedEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3542
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3543
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3537
    return-void

    .line 3539
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3542
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3543
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3544
    nop

    .line 3545
    return-void

    .line 3542
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3543
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public resetPortForwardRules()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3666
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3667
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3669
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3670
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x61

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3671
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3672
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/INetd;->resetPortForwardRules()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3678
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3679
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3673
    return-void

    .line 3675
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3678
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3679
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3680
    nop

    .line 3681
    return-void

    .line 3678
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3679
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setIPv6AddrGenMode(Ljava/lang/String;I)V
    .locals 5
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2385
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2386
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2388
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2389
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2390
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2391
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2392
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2393
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->setIPv6AddrGenMode(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2399
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2400
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2394
    return-void

    .line 2396
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2399
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2400
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2401
    nop

    .line 2402
    return-void

    .line 2399
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2400
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setOPSlaDisable()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3704
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3705
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3708
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3709
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x63

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3710
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3711
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/INetd;->setOPSlaDisable()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3717
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3718
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3711
    return v3

    .line 3713
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3714
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 3717
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3718
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3719
    nop

    .line 3720
    return v2

    .line 3717
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3718
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setOPSlaEnable()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3684
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3685
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3688
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3689
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x62

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3690
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3691
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/INetd;->setOPSlaEnable()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3697
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3698
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3691
    return v3

    .line 3693
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3694
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 3697
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3698
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3699
    nop

    .line 3700
    return v2

    .line 3697
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3698
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setOPSlaIfaceDown(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "netowrkType"    # Ljava/lang/String;
    .param p2, "ifaceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3749
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3750
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3753
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3754
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3755
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3756
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x65

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3757
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3758
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->setOPSlaIfaceDown(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3764
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3765
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3758
    return v3

    .line 3760
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3761
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 3764
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3765
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3766
    nop

    .line 3767
    return v2

    .line 3764
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3765
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setOPSlaIfaceUp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 15
    .param p1, "netowrkType"    # Ljava/lang/String;
    .param p2, "ifaceName"    # Ljava/lang/String;
    .param p3, "ipAddr"    # Ljava/lang/String;
    .param p4, "ipMask"    # Ljava/lang/String;
    .param p5, "dns"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3724
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3725
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3728
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "android.net.INetd"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 3729
    move-object/from16 v9, p1

    :try_start_1
    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 3730
    move-object/from16 v10, p2

    :try_start_2
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 3731
    move-object/from16 v11, p3

    :try_start_3
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 3732
    move-object/from16 v12, p4

    :try_start_4
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 3733
    move-object/from16 v13, p5

    :try_start_5
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3734
    move-object v14, p0

    :try_start_6
    iget-object v0, v14, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x64

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 3735
    .local v0, "_status":Z
    if-nez v0, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3736
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-interface/range {v3 .. v8}, Landroid/net/INetd;->setOPSlaIfaceUp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3742
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3743
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3736
    return v3

    .line 3738
    :cond_0
    :try_start_7
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3739
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v0, v4

    .line 3742
    .local v0, "_result":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3743
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3744
    nop

    .line 3745
    return v0

    .line 3742
    .end local v0    # "_result":Z
    :catchall_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v14, p0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v14, p0

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v14, p0

    goto :goto_2

    :catchall_4
    move-exception v0

    move-object v14, p0

    goto :goto_1

    :catchall_5
    move-exception v0

    move-object v14, p0

    goto :goto_0

    :catchall_6
    move-exception v0

    move-object v14, p0

    move-object/from16 v9, p1

    :goto_0
    move-object/from16 v10, p2

    :goto_1
    move-object/from16 v11, p3

    :goto_2
    move-object/from16 v12, p4

    :goto_3
    move-object/from16 v13, p5

    :goto_4
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3743
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public setPortForwardRules(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "action"    # Z
    .param p2, "proto"    # Ljava/lang/String;
    .param p3, "fromPort"    # Ljava/lang/String;
    .param p4, "toPort"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3644
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3645
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3647
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3648
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3649
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3650
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3651
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3652
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x60

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3653
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3654
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/net/INetd;->setPortForwardRules(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3660
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3661
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3655
    return-void

    .line 3657
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3660
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3661
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3662
    nop

    .line 3663
    return-void

    .line 3660
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3661
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setProcSysNet(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "ipversion"    # I
    .param p2, "which"    # I
    .param p3, "ifname"    # Ljava/lang/String;
    .param p4, "parameter"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2004
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2005
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2007
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2008
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2009
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2010
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2011
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2012
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2013
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2014
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2015
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v4

    move v5, p1

    move v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-interface/range {v4 .. v9}, Landroid/net/INetd;->setProcSysNet(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2021
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2022
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2016
    return-void

    .line 2018
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2021
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2022
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2023
    nop

    .line 2024
    return-void

    .line 2021
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2022
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setTcpRWmemorySize(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "rmemValues"    # Ljava/lang/String;
    .param p2, "wmemValues"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3509
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3510
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3512
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3513
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3514
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3515
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x59

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3516
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3517
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->setTcpRWmemorySize(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3523
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3524
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3518
    return-void

    .line 3520
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3523
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3524
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3525
    nop

    .line 3526
    return-void

    .line 3523
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3524
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setTcpTimestamps(Ljava/lang/String;)V
    .locals 5
    .param p1, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3625
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3626
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3628
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3629
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3630
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3631
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3632
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->setTcpTimestamps(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3638
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3639
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3633
    return-void

    .line 3635
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3638
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3639
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3640
    nop

    .line 3641
    return-void

    .line 3638
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3639
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public socketDestroy([Landroid/net/UidRangeParcel;[I)V
    .locals 5
    .param p1, "uidRanges"    # [Landroid/net/UidRangeParcel;
    .param p2, "exemptUids"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1878
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1879
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1881
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1882
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1883
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1884
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1885
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1886
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->socketDestroy([Landroid/net/UidRangeParcel;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1892
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1893
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1887
    return-void

    .line 1889
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1892
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1893
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1894
    nop

    .line 1895
    return-void

    .line 1892
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1893
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public strictUidCleartextPenalty(II)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "policyPenalty"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2447
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2448
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2450
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2451
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2452
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2453
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x24

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2454
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2455
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->strictUidCleartextPenalty(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2461
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2462
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2456
    return-void

    .line 2458
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2461
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2462
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2463
    nop

    .line 2464
    return-void

    .line 2461
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2462
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public tetherAddForward(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "intIface"    # Ljava/lang/String;
    .param p2, "extIface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3469
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3470
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3472
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3473
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3474
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3475
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x57

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3476
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3477
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->tetherAddForward(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3483
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3484
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3478
    return-void

    .line 3480
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3483
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3484
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3485
    nop

    .line 3486
    return-void

    .line 3483
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3484
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public tetherApplyDnsInterfaces()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1898
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1899
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1902
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1903
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1904
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1905
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/INetd;->tetherApplyDnsInterfaces()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1911
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1912
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1905
    return v3

    .line 1907
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1908
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 1911
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1912
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1913
    nop

    .line 1914
    return v2

    .line 1911
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1912
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public tetherDnsList()[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2934
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2935
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2938
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2939
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2940
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2941
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/INetd;->tetherDnsList()[Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2947
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2948
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2941
    return-object v3

    .line 2943
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2944
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 2947
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2948
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2949
    nop

    .line 2950
    return-object v2

    .line 2947
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2948
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public tetherDnsSet(I[Ljava/lang/String;)V
    .locals 5
    .param p1, "netId"    # I
    .param p2, "dnsAddrs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2914
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2915
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2917
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2918
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2919
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2920
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2921
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2922
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->tetherDnsSet(I[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2928
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2929
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2923
    return-void

    .line 2925
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2928
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2929
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2930
    nop

    .line 2931
    return-void

    .line 2928
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2929
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public tetherGetStats()[Landroid/net/TetherStatsParcel;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1918
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1919
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1922
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1923
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1924
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1925
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/INetd;->tetherGetStats()[Landroid/net/TetherStatsParcel;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1931
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1932
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1925
    return-object v3

    .line 1927
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1928
    sget-object v3, Landroid/net/TetherStatsParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/net/TetherStatsParcel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 1931
    .local v2, "_result":[Landroid/net/TetherStatsParcel;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1932
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1933
    nop

    .line 1934
    return-object v2

    .line 1931
    .end local v2    # "_result":[Landroid/net/TetherStatsParcel;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1932
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public tetherInterfaceAdd(Ljava/lang/String;)V
    .locals 5
    .param p1, "ifName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2856
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2857
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2859
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2860
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2861
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x39

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2862
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2863
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->tetherInterfaceAdd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2869
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2870
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2864
    return-void

    .line 2866
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2869
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2870
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2871
    nop

    .line 2872
    return-void

    .line 2869
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2870
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public tetherInterfaceList()[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2894
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2895
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2898
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2899
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2900
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2901
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/INetd;->tetherInterfaceList()[Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2907
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2908
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2901
    return-object v3

    .line 2903
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2904
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 2907
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2908
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2909
    nop

    .line 2910
    return-object v2

    .line 2907
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2908
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public tetherInterfaceRemove(Ljava/lang/String;)V
    .locals 5
    .param p1, "ifName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2875
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2876
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2878
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2879
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2880
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2881
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2882
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->tetherInterfaceRemove(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2888
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2889
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2883
    return-void

    .line 2885
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2888
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2889
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2890
    nop

    .line 2891
    return-void

    .line 2888
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2889
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public tetherIsEnabled()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2836
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2837
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2840
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2841
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x38

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2842
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2843
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/INetd;->tetherIsEnabled()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2849
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2850
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2843
    return v3

    .line 2845
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2846
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 2849
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2850
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2851
    nop

    .line 2852
    return v2

    .line 2849
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2850
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public tetherRemoveForward(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "intIface"    # Ljava/lang/String;
    .param p2, "extIface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3489
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3490
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3492
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3493
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3494
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3495
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x58

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3496
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3497
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->tetherRemoveForward(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3503
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3504
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3498
    return-void

    .line 3500
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3503
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3504
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3505
    nop

    .line 3506
    return-void

    .line 3503
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3504
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public tetherStart([Ljava/lang/String;)V
    .locals 5
    .param p1, "dhcpRanges"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2799
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2800
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2802
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2803
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2804
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x36

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2805
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2806
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->tetherStart([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2812
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2813
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2807
    return-void

    .line 2809
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2812
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2813
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2814
    nop

    .line 2815
    return-void

    .line 2812
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2813
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public tetherStop()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2818
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2819
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2821
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2822
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x37

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2823
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2824
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/INetd;->tetherStop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2830
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2831
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2825
    return-void

    .line 2827
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2830
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2831
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2832
    nop

    .line 2833
    return-void

    .line 2830
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2831
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public trafficSetNetPermForUids(I[I)V
    .locals 5
    .param p1, "permission"    # I
    .param p2, "uids"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3160
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3161
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3163
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3164
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3165
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3166
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x48

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3167
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3168
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->trafficSetNetPermForUids(I[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3174
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3169
    return-void

    .line 3171
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3174
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3176
    nop

    .line 3177
    return-void

    .line 3174
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public trafficSwapActiveStatsMap()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3587
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3588
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3590
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3591
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3592
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3593
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/INetd;->trafficSwapActiveStatsMap()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3599
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3600
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3594
    return-void

    .line 3596
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3599
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3600
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3601
    nop

    .line 3602
    return-void

    .line 3599
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3600
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public wakeupAddInterface(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 5
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "mark"    # I
    .param p4, "mask"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2341
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2342
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2344
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2345
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2346
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2347
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2348
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2349
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2350
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2351
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/net/INetd;->wakeupAddInterface(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2357
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2358
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2352
    return-void

    .line 2354
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2357
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2358
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2359
    nop

    .line 2360
    return-void

    .line 2357
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2358
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public wakeupDelInterface(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 5
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "mark"    # I
    .param p4, "mask"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2363
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2364
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2366
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2367
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2368
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2369
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2370
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2371
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2372
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2373
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/net/INetd;->wakeupDelInterface(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2379
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2380
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2374
    return-void

    .line 2376
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2379
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2380
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2381
    nop

    .line 2382
    return-void

    .line 2379
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2380
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
