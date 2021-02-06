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
.field private mCachedHash:Ljava/lang/String;

.field private mCachedVersion:I

.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 1696
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1699
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/INetd$Stub$Proxy;->mCachedVersion:I

    .line 1700
    const-string v0, "-1"

    iput-object v0, p0, Landroid/net/INetd$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 1697
    iput-object p1, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 1698
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 1703
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

    .line 2779
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2780
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2782
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2783
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2784
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x32

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2785
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2786
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->bandwidthAddNaughtyApp(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2792
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2793
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2787
    return-void

    .line 2789
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2792
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2793
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2794
    nop

    .line 2795
    return-void

    .line 2792
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2793
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2794
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

    .line 2817
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2818
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2820
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2821
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2822
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x34

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

    invoke-interface {v3, p1}, Landroid/net/INetd;->bandwidthAddNiceApp(I)V
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

    .line 2832
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

    .line 1754
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1755
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1758
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1759
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1760
    iget-object v4, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x3

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    .line 1761
    .local v4, "_status":Z
    if-nez v4, :cond_1

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1762
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/INetd;->bandwidthEnableDataSaver(Z)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1768
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1769
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1762
    return v2

    .line 1764
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1765
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 1768
    .end local v4    # "_status":Z
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1769
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1770
    nop

    .line 1771
    return v2

    .line 1768
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1769
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1770
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

    .line 2741
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2742
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2744
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2745
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2746
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x30

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2747
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2748
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->bandwidthRemoveInterfaceAlert(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2754
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2755
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2749
    return-void

    .line 2751
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2754
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2755
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2756
    nop

    .line 2757
    return-void

    .line 2754
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2755
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2756
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

    .line 2702
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2703
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2705
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2706
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2707
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2708
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2709
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->bandwidthRemoveInterfaceQuota(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2715
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2716
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2710
    return-void

    .line 2712
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2715
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2716
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2717
    nop

    .line 2718
    return-void

    .line 2715
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2716
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2717
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

    .line 2798
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2799
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2801
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2802
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2803
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x33

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2804
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2805
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->bandwidthRemoveNaughtyApp(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2811
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2812
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2806
    return-void

    .line 2808
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2811
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2812
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2813
    nop

    .line 2814
    return-void

    .line 2811
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2812
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2813
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

    .line 2836
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2837
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2839
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2840
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2841
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x35

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

    invoke-interface {v3, p1}, Landroid/net/INetd;->bandwidthRemoveNiceApp(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2849
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2850
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2844
    return-void

    .line 2846
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2849
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2850
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2851
    nop

    .line 2852
    return-void

    .line 2849
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2850
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2851
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

    .line 2760
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2761
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2763
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2764
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 2765
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x31

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2766
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2767
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->bandwidthSetGlobalAlert(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2773
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2774
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2768
    return-void

    .line 2770
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2773
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2774
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2775
    nop

    .line 2776
    return-void

    .line 2773
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2774
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2775
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

    .line 2721
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2722
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2724
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2725
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2726
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 2727
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2728
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2729
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Landroid/net/INetd;->bandwidthSetInterfaceAlert(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2735
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2736
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2730
    return-void

    .line 2732
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2735
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2736
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2737
    nop

    .line 2738
    return-void

    .line 2735
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2736
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2737
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

    .line 2682
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2683
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2685
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2686
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2687
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 2688
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2689
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2690
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Landroid/net/INetd;->bandwidthSetInterfaceQuota(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2696
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2697
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2691
    return-void

    .line 2693
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2696
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2697
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2698
    nop

    .line 2699
    return-void

    .line 2696
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2697
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2698
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

    .line 2523
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2524
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2527
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2528
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2529
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2530
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x25

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2531
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2532
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->clatdStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2538
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2539
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2532
    return-object v3

    .line 2534
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2535
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 2538
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2539
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2540
    nop

    .line 2541
    return-object v2

    .line 2538
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2539
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2540
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

    .line 2545
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2546
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2548
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2549
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2550
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x26

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2551
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2552
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->clatdStop(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2558
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2559
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2553
    return-void

    .line 2555
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2558
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2559
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2560
    nop

    .line 2561
    return-void

    .line 2558
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2559
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2560
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

    .line 3604
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3605
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3607
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3608
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3609
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3610
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5b

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

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->firewallAddUidInterfaceRules(Ljava/lang/String;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3618
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3619
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3613
    return-void

    .line 3615
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3618
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3619
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3620
    nop

    .line 3621
    return-void

    .line 3618
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3619
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3620
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

    .line 3355
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3356
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3358
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3359
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3360
    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3361
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4f

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3362
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3363
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->firewallEnableChildChain(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3369
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3370
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3364
    return-void

    .line 3366
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3369
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3370
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3371
    nop

    .line 3372
    return-void

    .line 3369
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3370
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3371
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

    .line 3624
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3625
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3627
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3628
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3629
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3630
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3631
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->firewallRemoveUidInterfaceRules([I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3637
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3638
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3632
    return-void

    .line 3634
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3637
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3638
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3639
    nop

    .line 3640
    return-void

    .line 3637
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3638
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3639
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

    .line 1731
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1732
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1735
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1736
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1737
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1738
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1739
    iget-object v4, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x2

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    .line 1740
    .local v4, "_status":Z
    if-nez v4, :cond_1

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1741
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroid/net/INetd;->firewallReplaceUidChain(Ljava/lang/String;Z[I)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1747
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1748
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1741
    return v2

    .line 1743
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1744
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 1747
    .end local v4    # "_status":Z
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1748
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1749
    nop

    .line 1750
    return v2

    .line 1747
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1748
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1749
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

    .line 3295
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3296
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3298
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3299
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3300
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3301
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3302
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->firewallSetFirewallType(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3308
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3309
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3303
    return-void

    .line 3305
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3308
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3309
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3310
    nop

    .line 3311
    return-void

    .line 3308
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3309
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3310
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

    .line 3314
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3315
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3317
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3318
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3319
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3320
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3321
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3322
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->firewallSetInterfaceRule(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3328
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3329
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3323
    return-void

    .line 3325
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3328
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3329
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3330
    nop

    .line 3331
    return-void

    .line 3328
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3329
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3330
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

    .line 3334
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3335
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3337
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3338
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3339
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3340
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3341
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3342
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3343
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Landroid/net/INetd;->firewallSetUidRule(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3349
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3350
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3344
    return-void

    .line 3346
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3349
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3350
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3351
    nop

    .line 3352
    return-void

    .line 3349
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3350
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3351
    throw v2
.end method

.method public getFwmarkForNetwork(I)Landroid/net/MarkMaskParcel;
    .locals 5
    .param p1, "netId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3706
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3707
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3710
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3711
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3712
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x60

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3713
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3714
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->getFwmarkForNetwork(I)Landroid/net/MarkMaskParcel;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3725
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3726
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3714
    return-object v3

    .line 3716
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3717
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 3718
    sget-object v3, Landroid/net/MarkMaskParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/MarkMaskParcel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v3, "_result":Landroid/net/MarkMaskParcel;
    goto :goto_0

    .line 3721
    .end local v3    # "_result":Landroid/net/MarkMaskParcel;
    :cond_1
    const/4 v3, 0x0

    .line 3725
    .end local v2    # "_status":Z
    .restart local v3    # "_result":Landroid/net/MarkMaskParcel;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3726
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3727
    nop

    .line 3728
    return-object v3

    .line 3725
    .end local v3    # "_result":Landroid/net/MarkMaskParcel;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3726
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3727
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 1707
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getInterfaceHash()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 3948
    :try_start_0
    const-string v0, "-1"

    iget-object v1, p0, Landroid/net/INetd$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3949
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3950
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3952
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_1
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3953
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3954
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 3955
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3956
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/INetd;->getInterfaceHash()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3962
    :try_start_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3963
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3956
    monitor-exit p0

    return-object v3

    .line 3959
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    :cond_0
    :try_start_3
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3960
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3962
    .end local v2    # "_status":Z
    :try_start_4
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3963
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3964
    goto :goto_0

    .line 3962
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3963
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3964
    throw v2

    .line 3966
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/net/INetd$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-object v0

    .line 3947
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getInterfaceVersion()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3926
    iget v0, p0, Landroid/net/INetd$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 3927
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3928
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3930
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3931
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3932
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 3933
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3934
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/INetd;->getInterfaceVersion()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3940
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3941
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3934
    return v3

    .line 3937
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3938
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/net/INetd$Stub$Proxy;->mCachedVersion:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3940
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3941
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3942
    goto :goto_0

    .line 3940
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3941
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3942
    throw v2

    .line 3944
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_1
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

    .line 3661
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3662
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3665
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3666
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3667
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3668
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/INetd;->getOemNetd()Landroid/os/IBinder;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3674
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3675
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3668
    return-object v3

    .line 3670
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3671
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 3674
    .local v2, "_result":Landroid/os/IBinder;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3675
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3676
    nop

    .line 3677
    return-object v2

    .line 3674
    .end local v2    # "_result":Landroid/os/IBinder;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3675
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3676
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

    .line 2036
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2037
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2040
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2041
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2042
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2043
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2044
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2045
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2046
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2047
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/net/INetd;->getProcSysNet(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2053
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2054
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2047
    return-object v3

    .line 2049
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2050
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 2053
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2054
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2055
    nop

    .line 2056
    return-object v2

    .line 2053
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2054
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2055
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

    .line 2461
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2462
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2464
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2465
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2466
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2467
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2468
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x22

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2469
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2470
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Landroid/net/INetd;->idletimerAddInterface(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2476
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2477
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2471
    return-void

    .line 2473
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2476
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2477
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2478
    nop

    .line 2479
    return-void

    .line 2476
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2477
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2478
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

    .line 2482
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2483
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2485
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2486
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2487
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2488
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2489
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x23

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2490
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2491
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Landroid/net/INetd;->idletimerRemoveInterface(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2497
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2498
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2492
    return-void

    .line 2494
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2497
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2498
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2499
    nop

    .line 2500
    return-void

    .line 2497
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2498
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2499
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

    .line 1994
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1995
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1997
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1998
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1999
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2000
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2001
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2002
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2003
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Landroid/net/INetd;->interfaceAddAddress(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2009
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2010
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2004
    return-void

    .line 2006
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2009
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2010
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2011
    nop

    .line 2012
    return-void

    .line 2009
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2010
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2011
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

    .line 3466
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3467
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3469
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3470
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3471
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x54

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3472
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3473
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->interfaceClearAddrs(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3479
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3480
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3474
    return-void

    .line 3476
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3479
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3480
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3481
    nop

    .line 3482
    return-void

    .line 3479
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3480
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3481
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

    .line 2015
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2016
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2018
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2019
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2020
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2021
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2022
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2023
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2024
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Landroid/net/INetd;->interfaceDelAddress(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2030
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2031
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2025
    return-void

    .line 2027
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2030
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2031
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2032
    nop

    .line 2033
    return-void

    .line 2030
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2031
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2032
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

    .line 3395
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3396
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3399
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3400
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3401
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x51

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3402
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3403
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->interfaceGetCfg(Ljava/lang/String;)Landroid/net/InterfaceConfigurationParcel;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3414
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3415
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3403
    return-object v3

    .line 3405
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3406
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 3407
    sget-object v3, Landroid/net/InterfaceConfigurationParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/InterfaceConfigurationParcel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v3, "_result":Landroid/net/InterfaceConfigurationParcel;
    goto :goto_0

    .line 3410
    .end local v3    # "_result":Landroid/net/InterfaceConfigurationParcel;
    :cond_1
    const/4 v3, 0x0

    .line 3414
    .end local v2    # "_status":Z
    .restart local v3    # "_result":Landroid/net/InterfaceConfigurationParcel;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3415
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3416
    nop

    .line 3417
    return-object v3

    .line 3414
    .end local v3    # "_result":Landroid/net/InterfaceConfigurationParcel;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3415
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3416
    throw v2
.end method

.method public interfaceGetList()[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3375
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3376
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3379
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3380
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x50

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3381
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3382
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/INetd;->interfaceGetList()[Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3388
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3389
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3382
    return-object v3

    .line 3384
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3385
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 3388
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3389
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3390
    nop

    .line 3391
    return-object v2

    .line 3388
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3389
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3390
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

    .line 3421
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3422
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3424
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3425
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 3426
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3427
    invoke-virtual {p1, v0, v2}, Landroid/net/InterfaceConfigurationParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 3430
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3432
    :goto_0
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x52

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3433
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3434
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->interfaceSetCfg(Landroid/net/InterfaceConfigurationParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3440
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3441
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3435
    return-void

    .line 3437
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3440
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3441
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3442
    nop

    .line 3443
    return-void

    .line 3440
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3441
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3442
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

    .line 3485
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3486
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3488
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3489
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3490
    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3491
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x55

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3492
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3493
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->interfaceSetEnableIPv6(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3499
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3500
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3494
    return-void

    .line 3496
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3499
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3500
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3501
    nop

    .line 3502
    return-void

    .line 3499
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3500
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3501
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

    .line 3446
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3447
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3449
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3450
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3451
    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3452
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x53

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3453
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3454
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->interfaceSetIPv6PrivacyExtensions(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3460
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3461
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3455
    return-void

    .line 3457
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3460
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3461
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3462
    nop

    .line 3463
    return-void

    .line 3460
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3461
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3462
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

    .line 3505
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3506
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3508
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3509
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3510
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3511
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x56

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3512
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3513
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->interfaceSetMtu(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3519
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3520
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3514
    return-void

    .line 3516
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3519
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3520
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3521
    nop

    .line 3522
    return-void

    .line 3519
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3520
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3521
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

    .line 2133
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2134
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2136
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2137
    move/from16 v15, p1

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 2138
    move/from16 v14, p2

    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 2139
    move-object/from16 v13, p3

    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2140
    move-object/from16 v12, p4

    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2141
    move/from16 v11, p5

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 2142
    move/from16 v10, p6

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 2143
    move/from16 v9, p7

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 2144
    move/from16 v8, p8

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2145
    move-object/from16 v7, p9

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2146
    move-object/from16 v6, p10

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2147
    move/from16 v5, p11

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2148
    move-object/from16 v4, p12

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2149
    move-object/from16 v3, p13

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2150
    move/from16 v15, p14

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 2151
    move-object/from16 v15, p15

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2152
    move-object/from16 v15, p16

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2153
    move/from16 v15, p17

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 2154
    move/from16 v15, p18

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 2155
    move/from16 v15, p19

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 2156
    move/from16 v15, p20

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 2157
    move/from16 v15, p21

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 2158
    move-object/from16 v15, p0

    iget-object v0, v15, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 2159
    .local v0, "_status":Z
    if-nez v0, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2160
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

    .line 2166
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2167
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2161
    return-void

    .line 2163
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2166
    .end local v0    # "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2167
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2168
    nop

    .line 2169
    return-void

    .line 2166
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2167
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2168
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

    .line 2252
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2253
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2255
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 2256
    move/from16 v13, p1

    :try_start_1
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2257
    move/from16 v14, p2

    :try_start_2
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2258
    move/from16 v15, p3

    :try_start_3
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 2259
    move-object/from16 v12, p4

    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2260
    move-object/from16 v11, p5

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2261
    move/from16 v10, p6

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 2262
    move/from16 v9, p7

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 2263
    move/from16 v8, p8

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2264
    move/from16 v7, p9

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2265
    move-object/from16 v6, p0

    iget-object v0, v6, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 2266
    .local v0, "_status":Z
    if-nez v0, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2267
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

    .line 2273
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2274
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2268
    return-void

    .line 2270
    :cond_0
    :try_start_4
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2273
    .end local v0    # "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2274
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2275
    nop

    .line 2276
    return-void

    .line 2273
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

    .line 2274
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2275
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

    .line 2330
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2331
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2333
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 2334
    move-object/from16 v10, p1

    :try_start_1
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 2335
    move-object/from16 v11, p2

    :try_start_2
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 2336
    move-object/from16 v12, p3

    :try_start_3
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 2337
    move/from16 v13, p4

    :try_start_4
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2338
    move/from16 v14, p5

    :try_start_5
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2339
    move/from16 v15, p6

    :try_start_6
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 2340
    move-object/from16 v9, p0

    iget-object v0, v9, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 2341
    .local v0, "_status":Z
    if-nez v0, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2342
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

    .line 2348
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2349
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2343
    return-void

    .line 2345
    :cond_0
    :try_start_7
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2348
    .end local v0    # "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2349
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2350
    nop

    .line 2351
    return-void

    .line 2348
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

    .line 2349
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2350
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

    .line 2109
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2110
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2113
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2114
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2115
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2116
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2117
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2118
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2119
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2120
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/net/INetd;->ipSecAllocateSpi(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2126
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2127
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2120
    return v3

    .line 2122
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2123
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 2126
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2127
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2128
    nop

    .line 2129
    return v2

    .line 2126
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2127
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2128
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

    .line 2197
    move-object/from16 v8, p1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    .line 2198
    .local v9, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v10

    .line 2200
    .local v10, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2201
    const/4 v0, 0x0

    if-eqz v8, :cond_0

    .line 2202
    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2203
    invoke-virtual {v8, v9, v0}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 2206
    :cond_0
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 2208
    :goto_0
    move/from16 v11, p2

    :try_start_1
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 2209
    move/from16 v12, p3

    :try_start_2
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 2210
    move-object/from16 v13, p4

    :try_start_3
    invoke-virtual {v9, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2211
    move-object/from16 v14, p5

    :try_start_4
    invoke-virtual {v9, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2212
    move/from16 v15, p6

    :try_start_5
    invoke-virtual {v9, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 2213
    move-object/from16 v7, p0

    iget-object v1, v7, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x17

    invoke-interface {v1, v2, v9, v10, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 2214
    .local v0, "_status":Z
    if-nez v0, :cond_1

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2215
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

    .line 2221
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    .line 2222
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 2216
    return-void

    .line 2218
    :cond_1
    :try_start_6
    invoke-virtual {v10}, Landroid/os/Parcel;->readException()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2221
    .end local v0    # "_status":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    .line 2222
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 2223
    nop

    .line 2224
    return-void

    .line 2221
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

    .line 2222
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 2223
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

    .line 2172
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2173
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2175
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 2176
    move/from16 v11, p1

    :try_start_1
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 2177
    move-object/from16 v12, p2

    :try_start_2
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 2178
    move-object/from16 v13, p3

    :try_start_3
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2179
    move/from16 v14, p4

    :try_start_4
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2180
    move/from16 v15, p5

    :try_start_5
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 2181
    move/from16 v10, p6

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 2182
    move/from16 v9, p7

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 2183
    move-object/from16 v8, p0

    iget-object v0, v8, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 2184
    .local v0, "_status":Z
    if-nez v0, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2185
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

    .line 2191
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2192
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2186
    return-void

    .line 2188
    :cond_0
    :try_start_6
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2191
    .end local v0    # "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2192
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2193
    nop

    .line 2194
    return-void

    .line 2191
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

    .line 2192
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2193
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

    .line 2306
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2307
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2309
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 2310
    move/from16 v10, p1

    :try_start_1
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 2311
    move/from16 v11, p2

    :try_start_2
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 2312
    move/from16 v12, p3

    :try_start_3
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 2313
    move/from16 v13, p4

    :try_start_4
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2314
    move/from16 v14, p5

    :try_start_5
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2315
    move/from16 v15, p6

    :try_start_6
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 2316
    move-object/from16 v9, p0

    iget-object v0, v9, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 2317
    .local v0, "_status":Z
    if-nez v0, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2318
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

    .line 2324
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2325
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2319
    return-void

    .line 2321
    :cond_0
    :try_start_7
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2324
    .end local v0    # "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2325
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2326
    nop

    .line 2327
    return-void

    .line 2324
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

    .line 2325
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2326
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

    .line 2227
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2228
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2230
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2231
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 2232
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2233
    invoke-virtual {p1, v0, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 2236
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2238
    :goto_0
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x18

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2239
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2240
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->ipSecRemoveTransportModeTransform(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2246
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2247
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2241
    return-void

    .line 2243
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2246
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2247
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2248
    nop

    .line 2249
    return-void

    .line 2246
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2247
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2248
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

    .line 2378
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2379
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2381
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2382
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2383
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2384
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2385
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->ipSecRemoveTunnelInterface(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2391
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2392
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2386
    return-void

    .line 2388
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2391
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2392
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2393
    nop

    .line 2394
    return-void

    .line 2391
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2392
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2393
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

    .line 2083
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2084
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2086
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2087
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 2088
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2089
    invoke-virtual {p1, v0, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 2092
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2094
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2095
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x13

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2096
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2097
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->ipSecSetEncapSocketOwner(Landroid/os/ParcelFileDescriptor;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2103
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2104
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2098
    return-void

    .line 2100
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2103
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2104
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2105
    nop

    .line 2106
    return-void

    .line 2103
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2104
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2105
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

    .line 2279
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2280
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2282
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 2283
    move/from16 v13, p1

    :try_start_1
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2284
    move/from16 v14, p2

    :try_start_2
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2285
    move/from16 v15, p3

    :try_start_3
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 2286
    move-object/from16 v12, p4

    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2287
    move-object/from16 v11, p5

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2288
    move/from16 v10, p6

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 2289
    move/from16 v9, p7

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 2290
    move/from16 v8, p8

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2291
    move/from16 v7, p9

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2292
    move-object/from16 v6, p0

    iget-object v0, v6, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 2293
    .local v0, "_status":Z
    if-nez v0, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2294
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

    .line 2300
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2301
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2295
    return-void

    .line 2297
    :cond_0
    :try_start_4
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2300
    .end local v0    # "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2301
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2302
    nop

    .line 2303
    return-void

    .line 2300
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

    .line 2301
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2302
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

    .line 2354
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2355
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2357
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 2358
    move-object/from16 v10, p1

    :try_start_1
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 2359
    move-object/from16 v11, p2

    :try_start_2
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 2360
    move-object/from16 v12, p3

    :try_start_3
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 2361
    move/from16 v13, p4

    :try_start_4
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2362
    move/from16 v14, p5

    :try_start_5
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2363
    move/from16 v15, p6

    :try_start_6
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 2364
    move-object/from16 v9, p0

    iget-object v0, v9, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 2365
    .local v0, "_status":Z
    if-nez v0, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2366
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

    .line 2372
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2373
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2367
    return-void

    .line 2369
    :cond_0
    :try_start_7
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2372
    .end local v0    # "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2373
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2374
    nop

    .line 2375
    return-void

    .line 2372
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

    .line 2373
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2374
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

    .line 2642
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2643
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2645
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2646
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2647
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2648
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2649
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2650
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->ipfwdAddInterfaceForward(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2656
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2657
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2651
    return-void

    .line 2653
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2656
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2657
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2658
    nop

    .line 2659
    return-void

    .line 2656
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2657
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2658
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

    .line 2623
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2624
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2626
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2627
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2628
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2629
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2630
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->ipfwdDisableForwarding(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2636
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2637
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2631
    return-void

    .line 2633
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2636
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2637
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2638
    nop

    .line 2639
    return-void

    .line 2636
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2637
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2638
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

    .line 2604
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2605
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2607
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2608
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2609
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x29

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2610
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2611
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->ipfwdEnableForwarding(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2617
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2618
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2612
    return-void

    .line 2614
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2617
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2618
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2619
    nop

    .line 2620
    return-void

    .line 2617
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2618
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2619
    throw v2
.end method

.method public ipfwdEnabled()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2564
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2565
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2568
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2569
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x27

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2570
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2571
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/INetd;->ipfwdEnabled()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2577
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2578
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2571
    return v3

    .line 2573
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2574
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 2577
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2578
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2579
    nop

    .line 2580
    return v2

    .line 2577
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2578
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2579
    throw v2
.end method

.method public ipfwdGetRequesterList()[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2584
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2585
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2588
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2589
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x28

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2590
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2591
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/INetd;->ipfwdGetRequesterList()[Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2597
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2598
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2591
    return-object v3

    .line 2593
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2594
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 2597
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2598
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2599
    nop

    .line 2600
    return-object v2

    .line 2597
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2598
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2599
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

    .line 2662
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2663
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2665
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2666
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2667
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2668
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2669
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2670
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->ipfwdRemoveInterfaceForward(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2676
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2677
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2671
    return-void

    .line 2673
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2676
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2677
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2678
    nop

    .line 2679
    return-void

    .line 2676
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2677
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2678
    throw v2
.end method

.method public isAlive()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1711
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1712
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1715
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1716
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1717
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1718
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/INetd;->isAlive()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1724
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1725
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1718
    return v3

    .line 1720
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1721
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_1

    move v3, v4

    :cond_1
    move v2, v3

    .line 1724
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1725
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1726
    nop

    .line 1727
    return v2

    .line 1724
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1725
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1726
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

    .line 1834
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1835
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1837
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1838
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1839
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1840
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1841
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1842
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->networkAddInterface(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1848
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1849
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1843
    return-void

    .line 1845
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1848
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1849
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1850
    nop

    .line 1851
    return-void

    .line 1848
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1849
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1850
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

    .line 3054
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3055
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3057
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3058
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3059
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3060
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3061
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3062
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3063
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x40

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3064
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3065
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

    .line 3071
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3072
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3066
    return-void

    .line 3068
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3071
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3072
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3073
    nop

    .line 3074
    return-void

    .line 3071
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3072
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3073
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

    .line 3010
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3011
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3013
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3014
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3015
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3016
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3017
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3018
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3019
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3020
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/net/INetd;->networkAddRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3026
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3027
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3021
    return-void

    .line 3023
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3026
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3027
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3028
    nop

    .line 3029
    return-void

    .line 3026
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3027
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3028
    throw v2
.end method

.method public networkAddRouteParcel(ILandroid/net/RouteInfoParcel;)V
    .locals 5
    .param p1, "netId"    # I
    .param p2, "routeInfo"    # Landroid/net/RouteInfoParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3732
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3733
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3735
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3736
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3737
    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 3738
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3739
    invoke-virtual {p2, v0, v2}, Landroid/net/RouteInfoParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 3742
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3744
    :goto_0
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x61

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3745
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3746
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->networkAddRouteParcel(ILandroid/net/RouteInfoParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3752
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3753
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3747
    return-void

    .line 3749
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3752
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3753
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3754
    nop

    .line 3755
    return-void

    .line 3752
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3753
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3754
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

    .line 1874
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1875
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1877
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1878
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1879
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1880
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1881
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1882
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->networkAddUidRanges(I[Landroid/net/UidRangeParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1888
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1889
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1883
    return-void

    .line 1885
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1888
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1889
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1890
    nop

    .line 1891
    return-void

    .line 1888
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1889
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1890
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

    .line 3274
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3275
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3278
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3279
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3280
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3281
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3282
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->networkCanProtect(I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3288
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3289
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3282
    return v3

    .line 3284
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3285
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 3288
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3289
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3290
    nop

    .line 3291
    return v2

    .line 3288
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3289
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3290
    throw v2
.end method

.method public networkClearDefault()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3139
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3140
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3142
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3143
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x44

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3144
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3145
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/INetd;->networkClearDefault()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3151
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3152
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3146
    return-void

    .line 3148
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3151
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3152
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3153
    nop

    .line 3154
    return-void

    .line 3151
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3152
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3153
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

    .line 3197
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3198
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3200
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3201
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3202
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x47

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3203
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3204
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->networkClearPermissionForUser([I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3210
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3211
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3205
    return-void

    .line 3207
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3210
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3211
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3212
    nop

    .line 3213
    return-void

    .line 3210
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3211
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3212
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

    .line 1775
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1776
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1778
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1779
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1780
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1781
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1782
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1783
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->networkCreatePhysical(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1789
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1790
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1784
    return-void

    .line 1786
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1789
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1790
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1791
    nop

    .line 1792
    return-void

    .line 1789
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1790
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1791
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

    .line 1795
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1796
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1798
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1799
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1800
    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1801
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1802
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1803
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->networkCreateVpn(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1809
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1810
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1804
    return-void

    .line 1806
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1809
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1810
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1811
    nop

    .line 1812
    return-void

    .line 1809
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1810
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1811
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

    .line 1815
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1816
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1818
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1819
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1820
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1821
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1822
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->networkDestroy(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1828
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1829
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1823
    return-void

    .line 1825
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1828
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1829
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1830
    nop

    .line 1831
    return-void

    .line 1828
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1829
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1830
    throw v2
.end method

.method public networkGetDefault()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3100
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3101
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3104
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3105
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x42

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3106
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3107
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/INetd;->networkGetDefault()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3113
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3107
    return v3

    .line 3109
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3110
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 3113
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3115
    nop

    .line 3116
    return v2

    .line 3113
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3115
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

    .line 1914
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1915
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1917
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1918
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1919
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1920
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1921
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1922
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->networkRejectNonSecureVpn(Z[Landroid/net/UidRangeParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1928
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1929
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1923
    return-void

    .line 1925
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1928
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1929
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1930
    nop

    .line 1931
    return-void

    .line 1928
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1929
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1930
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

    .line 1854
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1855
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1857
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1858
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1859
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1860
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1861
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1862
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->networkRemoveInterface(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1868
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1869
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1863
    return-void

    .line 1865
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1868
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1869
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1870
    nop

    .line 1871
    return-void

    .line 1868
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1869
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1870
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

    .line 3077
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3078
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3080
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3081
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3082
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3083
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3084
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3085
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3086
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x41

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3087
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3088
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

    .line 3094
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3095
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3089
    return-void

    .line 3091
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3094
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3095
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3096
    nop

    .line 3097
    return-void

    .line 3094
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3095
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3096
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

    .line 3032
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3033
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3035
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3036
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3037
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3038
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3039
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3040
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3041
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3042
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/net/INetd;->networkRemoveRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3048
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3049
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3043
    return-void

    .line 3045
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3048
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3049
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3050
    nop

    .line 3051
    return-void

    .line 3048
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3049
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3050
    throw v2
.end method

.method public networkRemoveRouteParcel(ILandroid/net/RouteInfoParcel;)V
    .locals 5
    .param p1, "netId"    # I
    .param p2, "routeInfo"    # Landroid/net/RouteInfoParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3784
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3785
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3787
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3788
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3789
    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 3790
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3791
    invoke-virtual {p2, v0, v2}, Landroid/net/RouteInfoParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 3794
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3796
    :goto_0
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x63

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3797
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3798
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->networkRemoveRouteParcel(ILandroid/net/RouteInfoParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3804
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3805
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3799
    return-void

    .line 3801
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3804
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3805
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3806
    nop

    .line 3807
    return-void

    .line 3804
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3805
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3806
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

    .line 1894
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1895
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1897
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1898
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1899
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1900
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1901
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1902
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->networkRemoveUidRanges(I[Landroid/net/UidRangeParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1908
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1909
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1903
    return-void

    .line 1905
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1908
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1909
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1910
    nop

    .line 1911
    return-void

    .line 1908
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1909
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1910
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

    .line 3120
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3121
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3123
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3124
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3125
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x43

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3126
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3127
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->networkSetDefault(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3133
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3134
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3128
    return-void

    .line 3130
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3133
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3134
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3135
    nop

    .line 3136
    return-void

    .line 3133
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3134
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3135
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

    .line 3157
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3158
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3160
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3161
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3162
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3163
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x45

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3164
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3165
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->networkSetPermissionForNetwork(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3171
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3172
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3166
    return-void

    .line 3168
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3171
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3172
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3173
    nop

    .line 3174
    return-void

    .line 3171
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3172
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3173
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

    .line 3177
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3178
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3180
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3181
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3182
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3183
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x46

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3184
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3185
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->networkSetPermissionForUser(I[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3191
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3192
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3186
    return-void

    .line 3188
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3191
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3192
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3193
    nop

    .line 3194
    return-void

    .line 3191
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3192
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3193
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

    .line 3236
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3237
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3239
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3240
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3241
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x49

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3242
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3243
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->networkSetProtectAllow(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3249
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3250
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3244
    return-void

    .line 3246
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3249
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3250
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3251
    nop

    .line 3252
    return-void

    .line 3249
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3250
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3251
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

    .line 3255
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3256
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3258
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3259
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3260
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3261
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3262
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->networkSetProtectDeny(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3268
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3269
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3263
    return-void

    .line 3265
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3268
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3269
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3270
    nop

    .line 3271
    return-void

    .line 3268
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3269
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3270
    throw v2
.end method

.method public networkUpdateRouteParcel(ILandroid/net/RouteInfoParcel;)V
    .locals 5
    .param p1, "netId"    # I
    .param p2, "routeInfo"    # Landroid/net/RouteInfoParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3758
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3759
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3761
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3762
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3763
    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 3764
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3765
    invoke-virtual {p2, v0, v2}, Landroid/net/RouteInfoParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 3768
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3770
    :goto_0
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x62

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3771
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3772
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->networkUpdateRouteParcel(ILandroid/net/RouteInfoParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3778
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3779
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3773
    return-void

    .line 3775
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3778
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3779
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3780
    nop

    .line 3781
    return-void

    .line 3778
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3779
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3780
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

    .line 3585
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3586
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3588
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3589
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/net/INetdUnsolicitedEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3590
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3591
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3592
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->registerUnsolicitedEventListener(Landroid/net/INetdUnsolicitedEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3598
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3599
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3593
    return-void

    .line 3595
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3598
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3599
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3600
    nop

    .line 3601
    return-void

    .line 3598
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3599
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3600
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

    .line 2441
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2442
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2444
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2445
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2446
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2447
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2448
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2449
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->setIPv6AddrGenMode(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2455
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2456
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2450
    return-void

    .line 2452
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2455
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2456
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2457
    nop

    .line 2458
    return-void

    .line 2455
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2456
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2457
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

    .line 2060
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2061
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2063
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2064
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2065
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2066
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2067
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2068
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2069
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2070
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2071
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

    .line 2077
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2078
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2072
    return-void

    .line 2074
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2077
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2078
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2079
    nop

    .line 2080
    return-void

    .line 2077
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2078
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2079
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

    .line 3565
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3566
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3568
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3569
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3570
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3571
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x59

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3572
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3573
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->setTcpRWmemorySize(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3579
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3580
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3574
    return-void

    .line 3576
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3579
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3580
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3581
    nop

    .line 3582
    return-void

    .line 3579
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3580
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3581
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

    .line 1934
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1935
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1937
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1938
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1939
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1940
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1941
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1942
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->socketDestroy([Landroid/net/UidRangeParcel;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1948
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1949
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1943
    return-void

    .line 1945
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1948
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1949
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1950
    nop

    .line 1951
    return-void

    .line 1948
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1949
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1950
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

    .line 2503
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2504
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2506
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2507
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2508
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2509
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x24

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2510
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2511
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->strictUidCleartextPenalty(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2517
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2518
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2512
    return-void

    .line 2514
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2517
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2518
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2519
    nop

    .line 2520
    return-void

    .line 2517
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2518
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2519
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

    .line 3525
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3526
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3528
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3529
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3530
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3531
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x57

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3532
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3533
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->tetherAddForward(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3539
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3540
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3534
    return-void

    .line 3536
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3539
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3540
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3541
    nop

    .line 3542
    return-void

    .line 3539
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3540
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3541
    throw v2
.end method

.method public tetherApplyDnsInterfaces()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1954
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1955
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1958
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1959
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1960
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1961
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/INetd;->tetherApplyDnsInterfaces()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1967
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1968
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1961
    return v3

    .line 1963
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1964
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 1967
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1968
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1969
    nop

    .line 1970
    return v2

    .line 1967
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1968
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1969
    throw v2
.end method

.method public tetherDnsList()[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2990
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2991
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2994
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2995
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2996
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2997
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/INetd;->tetherDnsList()[Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3003
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3004
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2997
    return-object v3

    .line 2999
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3000
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 3003
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3004
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3005
    nop

    .line 3006
    return-object v2

    .line 3003
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3004
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3005
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

    .line 2970
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2971
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2973
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2974
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2975
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2976
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2977
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2978
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->tetherDnsSet(I[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2984
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2985
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2979
    return-void

    .line 2981
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2984
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2985
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2986
    nop

    .line 2987
    return-void

    .line 2984
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2985
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2986
    throw v2
.end method

.method public tetherGetStats()[Landroid/net/TetherStatsParcel;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1974
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1975
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1978
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1979
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1980
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1981
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/INetd;->tetherGetStats()[Landroid/net/TetherStatsParcel;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1987
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1988
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1981
    return-object v3

    .line 1983
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1984
    sget-object v3, Landroid/net/TetherStatsParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/net/TetherStatsParcel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 1987
    .local v2, "_result":[Landroid/net/TetherStatsParcel;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1988
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1989
    nop

    .line 1990
    return-object v2

    .line 1987
    .end local v2    # "_result":[Landroid/net/TetherStatsParcel;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1988
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1989
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

    .line 2912
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2913
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2915
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2916
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2917
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x39

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2918
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2919
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->tetherInterfaceAdd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2925
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2926
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2920
    return-void

    .line 2922
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2925
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2926
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2927
    nop

    .line 2928
    return-void

    .line 2925
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2926
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2927
    throw v2
.end method

.method public tetherInterfaceList()[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2950
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2951
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2954
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2955
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2956
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2957
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/INetd;->tetherInterfaceList()[Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2963
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2964
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2957
    return-object v3

    .line 2959
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2960
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 2963
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2964
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2965
    nop

    .line 2966
    return-object v2

    .line 2963
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2964
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2965
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

    .line 2931
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2932
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2934
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2935
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2936
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2937
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2938
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->tetherInterfaceRemove(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2944
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2945
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2939
    return-void

    .line 2941
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2944
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2945
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2946
    nop

    .line 2947
    return-void

    .line 2944
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2945
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2946
    throw v2
.end method

.method public tetherIsEnabled()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2892
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2893
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2896
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2897
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x38

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2898
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2899
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/INetd;->tetherIsEnabled()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2905
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2906
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2899
    return v3

    .line 2901
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2902
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 2905
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2906
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2907
    nop

    .line 2908
    return v2

    .line 2905
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2906
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2907
    throw v2
.end method

.method public tetherOffloadGetAndClearStats(I)Landroid/net/TetherStatsParcel;
    .locals 5
    .param p1, "ifIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3900
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3901
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3904
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3905
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3906
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x68

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3907
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3908
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->tetherOffloadGetAndClearStats(I)Landroid/net/TetherStatsParcel;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3919
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3920
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3908
    return-object v3

    .line 3910
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3911
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 3912
    sget-object v3, Landroid/net/TetherStatsParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/TetherStatsParcel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v3, "_result":Landroid/net/TetherStatsParcel;
    goto :goto_0

    .line 3915
    .end local v3    # "_result":Landroid/net/TetherStatsParcel;
    :cond_1
    const/4 v3, 0x0

    .line 3919
    .end local v2    # "_status":Z
    .restart local v3    # "_result":Landroid/net/TetherStatsParcel;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3920
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3921
    nop

    .line 3922
    return-object v3

    .line 3919
    .end local v3    # "_result":Landroid/net/TetherStatsParcel;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3920
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3921
    throw v2
.end method

.method public tetherOffloadGetStats()[Landroid/net/TetherStatsParcel;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3860
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3861
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3864
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3865
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x66

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3866
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3867
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/INetd;->tetherOffloadGetStats()[Landroid/net/TetherStatsParcel;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3873
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3874
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3867
    return-object v3

    .line 3869
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3870
    sget-object v3, Landroid/net/TetherStatsParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/net/TetherStatsParcel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 3873
    .local v2, "_result":[Landroid/net/TetherStatsParcel;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3874
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3875
    nop

    .line 3876
    return-object v2

    .line 3873
    .end local v2    # "_result":[Landroid/net/TetherStatsParcel;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3874
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3875
    throw v2
.end method

.method public tetherOffloadRuleAdd(Landroid/net/TetherOffloadRuleParcel;)V
    .locals 5
    .param p1, "rule"    # Landroid/net/TetherOffloadRuleParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3810
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3811
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3813
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3814
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 3815
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3816
    invoke-virtual {p1, v0, v2}, Landroid/net/TetherOffloadRuleParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 3819
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3821
    :goto_0
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x64

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3822
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3823
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->tetherOffloadRuleAdd(Landroid/net/TetherOffloadRuleParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3829
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3830
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3824
    return-void

    .line 3826
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3829
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3830
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3831
    nop

    .line 3832
    return-void

    .line 3829
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3830
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3831
    throw v2
.end method

.method public tetherOffloadRuleRemove(Landroid/net/TetherOffloadRuleParcel;)V
    .locals 5
    .param p1, "rule"    # Landroid/net/TetherOffloadRuleParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3835
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3836
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3838
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3839
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 3840
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3841
    invoke-virtual {p1, v0, v2}, Landroid/net/TetherOffloadRuleParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 3844
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3846
    :goto_0
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x65

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3847
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3848
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->tetherOffloadRuleRemove(Landroid/net/TetherOffloadRuleParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3854
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3855
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3849
    return-void

    .line 3851
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3854
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3855
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3856
    nop

    .line 3857
    return-void

    .line 3854
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3855
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3856
    throw v2
.end method

.method public tetherOffloadSetInterfaceQuota(IJ)V
    .locals 5
    .param p1, "ifIndex"    # I
    .param p2, "quotaBytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3880
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3881
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3883
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3884
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3885
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 3886
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x67

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3887
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3888
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Landroid/net/INetd;->tetherOffloadSetInterfaceQuota(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3894
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3895
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3889
    return-void

    .line 3891
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3894
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3895
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3896
    nop

    .line 3897
    return-void

    .line 3894
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3895
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3896
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

    .line 3545
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3546
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3548
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3549
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3550
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3551
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x58

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3552
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3553
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->tetherRemoveForward(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3559
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3560
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3554
    return-void

    .line 3556
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3559
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3560
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3561
    nop

    .line 3562
    return-void

    .line 3559
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3560
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3561
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

    .line 2855
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2856
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2858
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2859
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2860
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x36

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2861
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2862
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->tetherStart([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2868
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2869
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2863
    return-void

    .line 2865
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2868
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2869
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2870
    nop

    .line 2871
    return-void

    .line 2868
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2869
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2870
    throw v2
.end method

.method public tetherStartWithConfiguration(Landroid/net/TetherConfigParcel;)V
    .locals 5
    .param p1, "config"    # Landroid/net/TetherConfigParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3681
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3682
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3684
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3685
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 3686
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3687
    invoke-virtual {p1, v0, v2}, Landroid/net/TetherConfigParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 3690
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3692
    :goto_0
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x5f

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3693
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3694
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->tetherStartWithConfiguration(Landroid/net/TetherConfigParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3700
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3701
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3695
    return-void

    .line 3697
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3700
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3701
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3702
    nop

    .line 3703
    return-void

    .line 3700
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3701
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3702
    throw v2
.end method

.method public tetherStop()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2874
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2875
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2877
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2878
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x37

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2879
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2880
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/INetd;->tetherStop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2886
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2887
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2881
    return-void

    .line 2883
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2886
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2887
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2888
    nop

    .line 2889
    return-void

    .line 2886
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2887
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2888
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

    .line 3216
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3217
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3219
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3220
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3221
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3222
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x48

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3223
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3224
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->trafficSetNetPermForUids(I[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3230
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3231
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3225
    return-void

    .line 3227
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3230
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3231
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3232
    nop

    .line 3233
    return-void

    .line 3230
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3231
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3232
    throw v2
.end method

.method public trafficSwapActiveStatsMap()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3643
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3644
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3646
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3647
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3648
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3649
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/INetd;->trafficSwapActiveStatsMap()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3655
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3656
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3650
    return-void

    .line 3652
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3655
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3656
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3657
    nop

    .line 3658
    return-void

    .line 3655
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3656
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3657
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

    .line 2397
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2398
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2400
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2401
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2402
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2403
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2404
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2405
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2406
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2407
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/net/INetd;->wakeupAddInterface(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2413
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2414
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2408
    return-void

    .line 2410
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2413
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2414
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2415
    nop

    .line 2416
    return-void

    .line 2413
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2414
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2415
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

    .line 2419
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2420
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2422
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2423
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2424
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2425
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2426
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2427
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2428
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2429
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/net/INetd;->wakeupDelInterface(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2435
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2436
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2430
    return-void

    .line 2432
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2435
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2436
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2437
    nop

    .line 2438
    return-void

    .line 2435
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2436
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2437
    throw v2
.end method
