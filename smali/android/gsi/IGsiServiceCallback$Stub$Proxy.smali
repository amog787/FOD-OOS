.class Landroid/gsi/IGsiServiceCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IGsiServiceCallback.java"

# interfaces
.implements Landroid/gsi/IGsiServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/gsi/IGsiServiceCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/gsi/IGsiServiceCallback;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Landroid/gsi/IGsiServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 77
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 80
    iget-object v0, p0, Landroid/gsi/IGsiServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 84
    const-string v0, "android.gsi.IGsiServiceCallback"

    return-object v0
.end method

.method public onResult(I)V
    .locals 4
    .param p1, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 90
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.gsi.IGsiServiceCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget-object v1, p0, Landroid/gsi/IGsiServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 93
    .local v1, "_status":Z
    if-nez v1, :cond_0

    invoke-static {}, Landroid/gsi/IGsiServiceCallback$Stub;->getDefaultImpl()Landroid/gsi/IGsiServiceCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 94
    invoke-static {}, Landroid/gsi/IGsiServiceCallback$Stub;->getDefaultImpl()Landroid/gsi/IGsiServiceCallback;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/gsi/IGsiServiceCallback;->onResult(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 95
    return-void

    .line 99
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 100
    nop

    .line 101
    return-void

    .line 99
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 100
    throw v1
.end method
