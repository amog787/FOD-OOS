.class Landroid/os/IVold$Stub$Proxy;
.super Ljava/lang/Object;
.source "IVold.java"

# interfaces
.implements Landroid/os/IVold;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IVold$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/os/IVold;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 1014
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1015
    iput-object p1, p0, Landroid/os/IVold$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 1016
    return-void
.end method


# virtual methods
.method public abortChanges(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "retry"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2198
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2199
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2201
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.os.IVold"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2202
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2203
    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2204
    iget-object v3, p0, Landroid/os/IVold$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3c

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2205
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2206
    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/os/IVold;->abortChanges(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2212
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2213
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2207
    return-void

    .line 2209
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2212
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2213
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2214
    nop

    .line 2215
    return-void

    .line 2212
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2213
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public abortIdleMaint(Landroid/os/IVoldTaskListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/os/IVoldTaskListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1517
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1518
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1520
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.os.IVold"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1521
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/os/IVoldTaskListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1522
    iget-object v2, p0, Landroid/os/IVold$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1523
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1524
    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/os/IVold;->abortIdleMaint(Landroid/os/IVoldTaskListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1530
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1531
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1525
    return-void

    .line 1527
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1530
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1531
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1532
    nop

    .line 1533
    return-void

    .line 1530
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1531
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public addAppIds([Ljava/lang/String;[I)V
    .locals 5
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "appIds"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1177
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1178
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1180
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.os.IVold"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1181
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1182
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1183
    iget-object v2, p0, Landroid/os/IVold$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1184
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1185
    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/os/IVold;->addAppIds([Ljava/lang/String;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1191
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1192
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1186
    return-void

    .line 1188
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1191
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1192
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1193
    nop

    .line 1194
    return-void

    .line 1191
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1192
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public addSandboxIds([I[Ljava/lang/String;)V
    .locals 5
    .param p1, "appIds"    # [I
    .param p2, "sandboxIds"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1197
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1198
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1200
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.os.IVold"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1201
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1202
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1203
    iget-object v2, p0, Landroid/os/IVold$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1204
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1205
    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/os/IVold;->addSandboxIds([I[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1211
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1212
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1206
    return-void

    .line 1208
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1211
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1212
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1213
    nop

    .line 1214
    return-void

    .line 1211
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1212
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public addUserKeyAuth(IILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "userSerial"    # I
    .param p3, "token"    # Ljava/lang/String;
    .param p4, "secret"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1949
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1950
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1952
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.os.IVold"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1953
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1954
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1955
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1956
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1957
    iget-object v2, p0, Landroid/os/IVold$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x30

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1958
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1959
    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/os/IVold;->addUserKeyAuth(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1965
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1966
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1960
    return-void

    .line 1962
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1965
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1966
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1967
    nop

    .line 1968
    return-void

    .line 1965
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1966
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 1019
    iget-object v0, p0, Landroid/os/IVold$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public benchmark(Ljava/lang/String;Landroid/os/IVoldTaskListener;)V
    .locals 5
    .param p1, "volId"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/os/IVoldTaskListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1337
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1338
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1340
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.os.IVold"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1341
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1342
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/os/IVoldTaskListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1343
    iget-object v2, p0, Landroid/os/IVold$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1344
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1345
    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/os/IVold;->benchmark(Ljava/lang/String;Landroid/os/IVoldTaskListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1351
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1352
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1346
    return-void

    .line 1348
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1351
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1352
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1353
    nop

    .line 1354
    return-void

    .line 1351
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1352
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public checkEncryption(Ljava/lang/String;)V
    .locals 5
    .param p1, "volId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1357
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1358
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1360
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.os.IVold"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1361
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1362
    iget-object v2, p0, Landroid/os/IVold$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1363
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1364
    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/os/IVold;->checkEncryption(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1370
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1365
    return-void

    .line 1367
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1370
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1372
    nop

    .line 1373
    return-void

    .line 1370
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public clearUserKeyAuth(IILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "userSerial"    # I
    .param p3, "token"    # Ljava/lang/String;
    .param p4, "secret"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1971
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1972
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1974
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.os.IVold"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1975
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1976
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1977
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1978
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1979
    iget-object v2, p0, Landroid/os/IVold$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x31

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1980
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1981
    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/os/IVold;->clearUserKeyAuth(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1987
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1988
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1982
    return-void

    .line 1984
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1987
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1988
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1989
    nop

    .line 1990
    return-void

    .line 1987
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1988
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public commitChanges()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2218
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2219
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2221
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.os.IVold"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2222
    iget-object v2, p0, Landroid/os/IVold$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2223
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2224
    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/IVold;->commitChanges()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2230
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2231
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2225
    return-void

    .line 2227
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2230
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2231
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2232
    nop

    .line 2233
    return-void

    .line 2230
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2231
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public createObb(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p1, "sourcePath"    # Ljava/lang/String;
    .param p2, "sourceKey"    # Ljava/lang/String;
    .param p3, "ownerGid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1436
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1437
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1440
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.os.IVold"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1441
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1442
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1443
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1444
    iget-object v2, p0, Landroid/os/IVold$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1445
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1446
    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Landroid/os/IVold;->createObb(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1452
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1453
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1446
    return-object v3

    .line 1448
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1449
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 1452
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1453
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1454
    nop

    .line 1455
    return-object v2

    .line 1452
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1453
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public createStubVolume(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "sourcePath"    # Ljava/lang/String;
    .param p2, "mountPath"    # Ljava/lang/String;
    .param p3, "fsType"    # Ljava/lang/String;
    .param p4, "fsUuid"    # Ljava/lang/String;
    .param p5, "fsLabel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2371
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2372
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2375
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.os.IVold"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2376
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2377
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2378
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2379
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2380
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2381
    iget-object v2, p0, Landroid/os/IVold$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x45

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2382
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2383
    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v4

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-interface/range {v4 .. v9}, Landroid/os/IVold;->createStubVolume(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2389
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2390
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2383
    return-object v3

    .line 2385
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2386
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 2389
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2390
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2391
    nop

    .line 2392
    return-object v2

    .line 2389
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2390
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public createUserKey(IIZ)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "userSerial"    # I
    .param p3, "ephemeral"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1909
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1910
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1912
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.os.IVold"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1913
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1914
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1915
    const/4 v2, 0x0

    if-eqz p3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1916
    iget-object v3, p0, Landroid/os/IVold$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2e

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1917
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1918
    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Landroid/os/IVold;->createUserKey(IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1924
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1925
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1919
    return-void

    .line 1921
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1924
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1925
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1926
    nop

    .line 1927
    return-void

    .line 1924
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1925
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public destroyObb(Ljava/lang/String;)V
    .locals 5
    .param p1, "volId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1459
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1460
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1462
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.os.IVold"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1463
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1464
    iget-object v2, p0, Landroid/os/IVold$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1465
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1466
    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/os/IVold;->destroyObb(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1472
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1473
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1467
    return-void

    .line 1469
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1472
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1473
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1474
    nop

    .line 1475
    return-void

    .line 1472
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1473
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public destroySandboxForApp(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "sandboxId"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2118
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2119
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2121
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.os.IVold"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2122
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2123
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2124
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2125
    iget-object v2, p0, Landroid/os/IVold$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x38

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2126
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2127
    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Landroid/os/IVold;->destroySandboxForApp(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2133
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2134
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2128
    return-void

    .line 2130
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2133
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2134
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2135
    nop

    .line 2136
    return-void

    .line 2133
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2134
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public destroyStubVolume(Ljava/lang/String;)V
    .locals 5
    .param p1, "volId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2396
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2397
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2399
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.os.IVold"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2400
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2401
    iget-object v2, p0, Landroid/os/IVold$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x46

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2402
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2403
    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/os/IVold;->destroyStubVolume(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2409
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2410
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2404
    return-void

    .line 2406
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2409
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2410
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2411
    nop

    .line 2412
    return-void

    .line 2409
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2410
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public destroyUserKey(I)V
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1930
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1931
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1933
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.os.IVold"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1934
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1935
    iget-object v2, p0, Landroid/os/IVold$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1936
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1937
    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/os/IVold;->destroyUserKey(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1943
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1944
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1938
    return-void

    .line 1940
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1943
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1944
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1945
    nop

    .line 1946
    return-void

    .line 1943
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1944
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public destroyUserStorage(Ljava/lang/String;II)V
    .locals 5
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "storageFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2075
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2076
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2078
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.os.IVold"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2079
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2080
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2081
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2082
    iget-object v2, p0, Landroid/os/IVold$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x36

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2083
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2084
    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Landroid/os/IVold;->destroyUserStorage(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2090
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2091
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2085
    return-void

    .line 2087
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2090
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2091
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2092
    nop

    .line 2093
    return-void

    .line 2090
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2091
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public encryptFstab(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "blkDevice"    # Ljava/lang/String;
    .param p2, "mountPoint"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1889
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1890
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1892
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.os.IVold"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1893
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1894
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1895
    iget-object v2, p0, Landroid/os/IVold$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1896
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1897
    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/os/IVold;->encryptFstab(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1903
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1904
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1898
    return-void

    .line 1900
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1903
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1904
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1905
    nop

    .line 1906
    return-void

    .line 1903
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1904
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public fbeEnable()V
    .locals 5
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
    const-string v2, "android.os.IVold"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1799
    iget-object v2, p0, Landroid/os/IVold$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x28

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1800
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1801
    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/IVold;->fbeEnable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1807
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1808
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1802
    return-void

    .line 1804
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1807
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1808
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1809
    nop

    .line 1810
    return-void

    .line 1807
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1808
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public fdeChangePassword(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "passwordType"    # I
    .param p2, "currentPassword"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1656
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1657
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1659
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.os.IVold"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1660
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1661
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1662
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1663
    iget-object v2, p0, Landroid/os/IVold$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1664
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1665
    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Landroid/os/IVold;->fdeChangePassword(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1671
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1672
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1666
    return-void

    .line 1668
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1671
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1672
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1673
    nop

    .line 1674
    return-void

    .line 1671
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1672
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public fdeCheckPassword(Ljava/lang/String;)V
    .locals 5
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1578
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1579
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1581
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.os.IVold"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1582
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1583
    iget-object v2, p0, Landroid/os/IVold$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1584
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1585
    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/os/IVold;->fdeCheckPassword(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1591
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1592
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1586
    return-void

    .line 1588
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1591
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1592
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1593
    nop

    .line 1594
    return-void

    .line 1591
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1592
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public fdeClearPassword()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1777
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1778
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1780
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.os.IVold"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1781
    iget-object v2, p0, Landroid/os/IVold$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x27

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1782
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1783
    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/IVold;->fdeClearPassword()V
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

    throw v2
.end method

.method public fdeComplete()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1615
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1616
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1619
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.os.IVold"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1620
    iget-object v2, p0, Landroid/os/IVold$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1621
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1622
    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/IVold;->fdeComplete()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1628
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1629
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1622
    return v3

    .line 1624
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1625
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 1628
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1629
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1630
    nop

    .line 1631
    return v2

    .line 1628
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1629
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public fdeEnable(ILjava/lang/String;I)V
    .locals 5
    .param p1, "passwordType"    # I
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "encryptionFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1635
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1636
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1638
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.os.IVold"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1639
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1640
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1641
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1642
    iget-object v2, p0, Landroid/os/IVold$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1643
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1644
    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Landroid/os/IVold;->fdeEnable(ILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1650
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1651
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1645
    return-void

    .line 1647
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1650
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1651
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1652
    nop

    .line 1653
    return-void

    .line 1650
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1651
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public fdeGetField(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1696
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1697
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1700
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.os.IVold"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1701
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1702
    iget-object v2, p0, Landroid/os/IVold$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x23

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1703
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1704
    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/os/IVold;->fdeGetField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1710
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1711
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1704
    return-object v3

    .line 1706
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1707
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 1710
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1711
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1712
    nop

    .line 1713
    return-object v2

    .line 1710
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1711
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public fdeGetPassword()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1757
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1758
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1761
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.os.IVold"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1762
    iget-object v2, p0, Landroid/os/IVold$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x26

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1763
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1764
    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/IVold;->fdeGetPassword()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1770
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1771
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1764
    return-object v3

    .line 1766
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1767
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 1770
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1771
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1772
    nop

    .line 1773
    return-object v2

    .line 1770
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1771
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public fdeGetPasswordType()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1737
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1738
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1741
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.os.IVold"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1742
    iget-object v2, p0, Landroid/os/IVold$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x25

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1743
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1744
    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/IVold;->fdeGetPasswordType()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1750
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1751
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1744
    return v3

    .line 1746
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1747
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 1750
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1751
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1752
    nop

    .line 1753
    return v2

    .line 1750
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1751
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public fdeRestart()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1597
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1598
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1600
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.os.IVold"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1601
    iget-object v2, p0, Landroid/os/IVold$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1602
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1603
    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/IVold;->fdeRestart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1609
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1610
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1604
    return-void

    .line 1606
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1609
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1610
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1611
    nop

    .line 1612
    return-void

    .line 1609
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1610
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public fdeSetField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1717
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1718
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1720
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.os.IVold"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1721
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1722
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1723
    iget-object v2, p0, Landroid/os/IVold$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x24

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1724
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1725
    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/os/IVold;->fdeSetField(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1731
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1732
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1726
    return-void

    .line 1728
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1731
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1732
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1733
    nop

    .line 1734
    return-void

    .line 1731
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1732
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public fdeVerifyPassword(Ljava/lang/String;)V
    .locals 5
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1677
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1678
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1680
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.os.IVold"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1681
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1682
    iget-object v2, p0, Landroid/os/IVold$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x22

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1683
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1684
    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/os/IVold;->fdeVerifyPassword(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1690
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1691
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1685
    return-void

    .line 1687
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1690
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1691
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1692
    nop

    .line 1693
    return-void

    .line 1690
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1691
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public fixateNewestUserKeyAuth(I)V
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1993
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1994
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1996
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.os.IVold"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1997
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1998
    iget-object v2, p0, Landroid/os/IVold$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x32

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1999
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2000
    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/os/IVold;->fixateNewestUserKeyAuth(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2006
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2007
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2001
    return-void

    .line 2003
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2006
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2007
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2008
    nop

    .line 2009
    return-void

    .line 2006
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2007
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public forgetPartition(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "partGuid"    # Ljava/lang/String;
    .param p2, "fsUuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1257
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1258
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1260
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.os.IVold"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1261
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1262
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1263
    iget-object v2, p0, Landroid/os/IVold$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1264
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1265
    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/os/IVold;->forgetPartition(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1271
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1272
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1266
    return-void

    .line 1268
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1271
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1272
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1273
    nop

    .line 1274
    return-void

    .line 1271
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1272
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public format(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "volId"    # Ljava/lang/String;
    .param p2, "fsType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1317
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1318
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1320
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.os.IVold"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1321
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1322
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1323
    iget-object v2, p0, Landroid/os/IVold$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1324
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1325
    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/os/IVold;->format(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1331
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1332
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1326
    return-void

    .line 1328
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1331
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1332
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1333
    nop

    .line 1334
    return-void

    .line 1331
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1332
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public fstrim(ILandroid/os/IVoldTaskListener;)V
    .locals 5
    .param p1, "fstrimFlags"    # I
    .param p2, "listener"    # Landroid/os/IVoldTaskListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1478
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1479
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1481
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.os.IVold"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1482
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1483
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/os/IVoldTaskListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1484
    iget-object v2, p0, Landroid/os/IVold$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1485
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1486
    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/os/IVold;->fstrim(ILandroid/os/IVoldTaskListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1492
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1493
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1487
    return-void

    .line 1489
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1492
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1493
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1494
    nop

    .line 1495
    return-void

    .line 1492
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1493
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 1023
    const-string v0, "android.os.IVold"

    return-object v0
.end method

.method public initUser0()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1831
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1832
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1834
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.os.IVold"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1835
    iget-object v2, p0, Landroid/os/IVold$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1836
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1837
    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/IVold;->initUser0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1843
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1844
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1838
    return-void

    .line 1840
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1843
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1844
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1845
    nop

    .line 1846
    return-void

    .line 1843
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1844
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public isConvertibleToFbe()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1849
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1850
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1853
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.os.IVold"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1854
    iget-object v2, p0, Landroid/os/IVold$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1855
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1856
    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/IVold;->isConvertibleToFbe()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1862
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1863
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1856
    return v3

    .line 1858
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1859
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 1862
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1863
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1864
    nop

    .line 1865
    return v2

    .line 1862
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1863
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public lockUserKey(I)V
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2034
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2035
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2037
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.os.IVold"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2038
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2039
    iget-object v2, p0, Landroid/os/IVold$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x34

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2040
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2041
    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/os/IVold;->lockUserKey(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2047
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2048
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2042
    return-void

    .line 2044
    :cond_0
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

.method public markBootAttempt()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2293
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2294
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2296
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.os.IVold"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2297
    iget-object v2, p0, Landroid/os/IVold$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x41

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2298
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2299
    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/IVold;->markBootAttempt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2305
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2306
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2300
    return-void

    .line 2302
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2305
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2306
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2307
    nop

    .line 2308
    return-void

    .line 2305
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2306
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public mkdirs(Ljava/lang/String;)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1417
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1418
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1420
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.os.IVold"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1421
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1422
    iget-object v2, p0, Landroid/os/IVold$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1423
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1424
    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/os/IVold;->mkdirs(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1430
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1431
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1425
    return-void

    .line 1427
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1430
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1431
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1432
    nop

    .line 1433
    return-void

    .line 1430
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1431
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public monitor()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1046
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1047
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1049
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.os.IVold"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1050
    iget-object v2, p0, Landroid/os/IVold$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1051
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1052
    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/IVold;->monitor()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1058
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1059
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1053
    return-void

    .line 1055
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1058
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1059
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1060
    nop

    .line 1061
    return-void

    .line 1058
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1059
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public mount(Ljava/lang/String;II)V
    .locals 5
    .param p1, "volId"    # Ljava/lang/String;
    .param p2, "mountFlags"    # I
    .param p3, "mountUserId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1277
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1278
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1280
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.os.IVold"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1281
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1282
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1283
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1284
    iget-object v2, p0, Landroid/os/IVold$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1285
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1286
    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Landroid/os/IVold;->mount(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1292
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1293
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1287
    return-void

    .line 1289
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1292
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1293
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1294
    nop

    .line 1295
    return-void

    .line 1292
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1293
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public mountAppFuse(II)Ljava/io/FileDescriptor;
    .locals 5
    .param p1, "uid"    # I
    .param p2, "mountId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1536
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1537
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1540
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.os.IVold"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1541
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1542
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1543
    iget-object v2, p0, Landroid/os/IVold$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1544
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1545
    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/os/IVold;->mountAppFuse(II)Ljava/io/FileDescriptor;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1551
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1552
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1545
    return-object v3

    .line 1547
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1548
    invoke-virtual {v1}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 1551
    .local v2, "_result":Ljava/io/FileDescriptor;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1552
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1553
    nop

    .line 1554
    return-object v2

    .line 1551
    .end local v2    # "_result":Ljava/io/FileDescriptor;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1552
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public mountDefaultEncrypted()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1813
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1814
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1816
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.os.IVold"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1817
    iget-object v2, p0, Landroid/os/IVold$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x29

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1818
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1819
    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/IVold;->mountDefaultEncrypted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1825
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1826
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1820
    return-void

    .line 1822
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1825
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1826
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1827
    nop

    .line 1828
    return-void

    .line 1825
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1826
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public mountFstab(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "blkDevice"    # Ljava/lang/String;
    .param p2, "mountPoint"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1869
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1870
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1872
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.os.IVold"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1873
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1874
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1875
    iget-object v2, p0, Landroid/os/IVold$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1876
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1877
    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/os/IVold;->mountFstab(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1883
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1884
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1878
    return-void

    .line 1880
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1883
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1884
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1885
    nop

    .line 1886
    return-void

    .line 1883
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1884
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public moveStorage(Ljava/lang/String;Ljava/lang/String;Landroid/os/IVoldTaskListener;)V
    .locals 5
    .param p1, "fromVolId"    # Ljava/lang/String;
    .param p2, "toVolId"    # Ljava/lang/String;
    .param p3, "listener"    # Landroid/os/IVoldTaskListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1376
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1377
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1379
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.os.IVold"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1380
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1381
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1382
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/os/IVoldTaskListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1383
    iget-object v2, p0, Landroid/os/IVold$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1384
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1385
    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Landroid/os/IVold;->moveStorage(Ljava/lang/String;Ljava/lang/String;Landroid/os/IVoldTaskListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1391
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1392
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1386
    return-void

    .line 1388
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1391
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1392
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1393
    nop

    .line 1394
    return-void

    .line 1391
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1392
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public needsCheckpoint()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2158
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2159
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2162
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.os.IVold"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2163
    iget-object v2, p0, Landroid/os/IVold$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2164
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2165
    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/IVold;->needsCheckpoint()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2171
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2172
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2165
    return v3

    .line 2167
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2168
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 2171
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2172
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2173
    nop

    .line 2174
    return v2

    .line 2171
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2172
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public needsRollback()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2178
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2179
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2182
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.os.IVold"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2183
    iget-object v2, p0, Landroid/os/IVold$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2184
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2185
    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/IVold;->needsRollback()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2191
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2192
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2185
    return v3

    .line 2187
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2188
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 2191
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2192
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2193
    nop

    .line 2194
    return v2

    .line 2191
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2192
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public onSecureKeyguardStateChanged(Z)V
    .locals 5
    .param p1, "isShowing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1217
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1218
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1220
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.os.IVold"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1221
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1222
    iget-object v3, p0, Landroid/os/IVold$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1223
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1224
    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/os/IVold;->onSecureKeyguardStateChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1230
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1231
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1225
    return-void

    .line 1227
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1230
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1231
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1232
    nop

    .line 1233
    return-void

    .line 1230
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1231
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public onUserAdded(II)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "userSerial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1100
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1101
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1103
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.os.IVold"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1104
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1105
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1106
    iget-object v2, p0, Landroid/os/IVold$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1107
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1108
    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/os/IVold;->onUserAdded(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1114
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1115
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1109
    return-void

    .line 1111
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1114
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1115
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1116
    nop

    .line 1117
    return-void

    .line 1114
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1115
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public onUserRemoved(I)V
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1120
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1121
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1123
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.os.IVold"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1124
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1125
    iget-object v2, p0, Landroid/os/IVold$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1126
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1127
    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/os/IVold;->onUserRemoved(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1133
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1134
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1128
    return-void

    .line 1130
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1133
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1134
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1135
    nop

    .line 1136
    return-void

    .line 1133
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1134
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public onUserStarted(I)V
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1139
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1140
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1142
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.os.IVold"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1143
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1144
    iget-object v2, p0, Landroid/os/IVold$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1145
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1146
    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/os/IVold;->onUserStarted(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1152
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1153
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1147
    return-void

    .line 1149
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1152
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1153
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1154
    nop

    .line 1155
    return-void

    .line 1152
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1153
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public onUserStopped(I)V
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1158
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1159
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1161
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.os.IVold"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1162
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1163
    iget-object v2, p0, Landroid/os/IVold$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1164
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1165
    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/os/IVold;->onUserStopped(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1171
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1172
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1166
    return-void

    .line 1168
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1171
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1172
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1173
    nop

    .line 1174
    return-void

    .line 1171
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1172
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public openAppFuseFile(IIII)Ljava/io/FileDescriptor;
    .locals 5
    .param p1, "uid"    # I
    .param p2, "mountId"    # I
    .param p3, "fileId"    # I
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2415
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2416
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2419
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.os.IVold"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2420
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2421
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2422
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2423
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2424
    iget-object v2, p0, Landroid/os/IVold$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x47

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2425
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2426
    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/os/IVold;->openAppFuseFile(IIII)Ljava/io/FileDescriptor;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2432
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2433
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2426
    return-object v3

    .line 2428
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2429
    invoke-virtual {v1}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 2432
    .local v2, "_result":Ljava/io/FileDescriptor;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2433
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2434
    nop

    .line 2435
    return-object v2

    .line 2432
    .end local v2    # "_result":Ljava/io/FileDescriptor;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2433
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public partition(Ljava/lang/String;II)V
    .locals 5
    .param p1, "diskId"    # Ljava/lang/String;
    .param p2, "partitionType"    # I
    .param p3, "ratio"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1236
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1237
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1239
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.os.IVold"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1240
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1241
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1242
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1243
    iget-object v2, p0, Landroid/os/IVold$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1244
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1245
    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Landroid/os/IVold;->partition(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1251
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1252
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1246
    return-void

    .line 1248
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1251
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1252
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1253
    nop

    .line 1254
    return-void

    .line 1251
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1252
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public prepareCheckpoint()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2236
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2237
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2239
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.os.IVold"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2240
    iget-object v2, p0, Landroid/os/IVold$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2241
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2242
    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/IVold;->prepareCheckpoint()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2248
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2249
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2243
    return-void

    .line 2245
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2248
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2249
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2250
    nop

    .line 2251
    return-void

    .line 2248
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2249
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public prepareSandboxForApp(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appId"    # I
    .param p3, "sandboxId"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2096
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2097
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2099
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.os.IVold"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2100
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2101
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2102
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2103
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2104
    iget-object v2, p0, Landroid/os/IVold$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x37

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2105
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2106
    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/os/IVold;->prepareSandboxForApp(Ljava/lang/String;ILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2112
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2113
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2107
    return-void

    .line 2109
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2112
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2113
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2114
    nop

    .line 2115
    return-void

    .line 2112
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2113
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public prepareUserStorage(Ljava/lang/String;III)V
    .locals 5
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "userSerial"    # I
    .param p4, "storageFlags"    # I
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

    .line 2056
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.os.IVold"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2057
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2058
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2059
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2060
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2061
    iget-object v2, p0, Landroid/os/IVold$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x35

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2062
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2063
    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/os/IVold;->prepareUserStorage(Ljava/lang/String;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2069
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2070
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2064
    return-void

    .line 2066
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2069
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2070
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2071
    nop

    .line 2072
    return-void

    .line 2069
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2070
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public remountUid(II)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "remountMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1397
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1398
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1400
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.os.IVold"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1401
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1402
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1403
    iget-object v2, p0, Landroid/os/IVold$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1404
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1405
    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/os/IVold;->remountUid(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1411
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1412
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1406
    return-void

    .line 1408
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1411
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1412
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1413
    nop

    .line 1414
    return-void

    .line 1411
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1412
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public reset()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1064
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1065
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1067
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.os.IVold"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1068
    iget-object v2, p0, Landroid/os/IVold$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1069
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1070
    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/IVold;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1076
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1077
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1071
    return-void

    .line 1073
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1076
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1077
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1078
    nop

    .line 1079
    return-void

    .line 1076
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1077
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public restoreCheckpoint(Ljava/lang/String;)V
    .locals 5
    .param p1, "device"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2254
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2255
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2257
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.os.IVold"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2258
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2259
    iget-object v2, p0, Landroid/os/IVold$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2260
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2261
    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/os/IVold;->restoreCheckpoint(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2267
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2268
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2262
    return-void

    .line 2264
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2267
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2268
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2269
    nop

    .line 2270
    return-void

    .line 2267
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2268
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public restoreCheckpointPart(Ljava/lang/String;I)V
    .locals 5
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2273
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2274
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2276
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.os.IVold"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2277
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2278
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2279
    iget-object v2, p0, Landroid/os/IVold$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x40

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2280
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2281
    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/os/IVold;->restoreCheckpointPart(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2287
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2288
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2282
    return-void

    .line 2284
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2287
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2288
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2289
    nop

    .line 2290
    return-void

    .line 2287
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2288
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public runIdleMaint(Landroid/os/IVoldTaskListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/os/IVoldTaskListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1498
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1499
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1501
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.os.IVold"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1502
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/os/IVoldTaskListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1503
    iget-object v2, p0, Landroid/os/IVold$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1504
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1505
    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/os/IVold;->runIdleMaint(Landroid/os/IVoldTaskListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1511
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1512
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1506
    return-void

    .line 1508
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1511
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1512
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1513
    nop

    .line 1514
    return-void

    .line 1511
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1512
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setListener(Landroid/os/IVoldListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/os/IVoldListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1027
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1028
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1030
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.os.IVold"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1031
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/os/IVoldListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1032
    iget-object v2, p0, Landroid/os/IVold$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1033
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1034
    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/os/IVold;->setListener(Landroid/os/IVoldListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1040
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1041
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1035
    return-void

    .line 1037
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1040
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1041
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1042
    nop

    .line 1043
    return-void

    .line 1040
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1041
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public shutdown()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1082
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1083
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1085
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.os.IVold"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1086
    iget-object v2, p0, Landroid/os/IVold$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1087
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1088
    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/IVold;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1094
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1095
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1089
    return-void

    .line 1091
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1094
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1095
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1096
    nop

    .line 1097
    return-void

    .line 1094
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1095
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public startCheckpoint(I)V
    .locals 5
    .param p1, "retry"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2139
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2140
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2142
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.os.IVold"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2143
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2144
    iget-object v2, p0, Landroid/os/IVold$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x39

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2145
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2146
    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/os/IVold;->startCheckpoint(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2152
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2153
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2147
    return-void

    .line 2149
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2152
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2153
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2154
    nop

    .line 2155
    return-void

    .line 2152
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2153
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public supportsBlockCheckpoint()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2331
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2332
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2335
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.os.IVold"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2336
    iget-object v2, p0, Landroid/os/IVold$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x43

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2337
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2338
    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/IVold;->supportsBlockCheckpoint()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2344
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2345
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2338
    return v3

    .line 2340
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2341
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 2344
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2345
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2346
    nop

    .line 2347
    return v2

    .line 2344
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2345
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public supportsCheckpoint()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2311
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2312
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2315
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.os.IVold"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2316
    iget-object v2, p0, Landroid/os/IVold$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x42

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2317
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2318
    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/IVold;->supportsCheckpoint()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2324
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2325
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2318
    return v3

    .line 2320
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2321
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 2324
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2325
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2326
    nop

    .line 2327
    return v2

    .line 2324
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2325
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public supportsFileCheckpoint()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2351
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2352
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2355
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.os.IVold"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2356
    iget-object v2, p0, Landroid/os/IVold$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x44

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2357
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2358
    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/IVold;->supportsFileCheckpoint()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2364
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2365
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2358
    return v3

    .line 2360
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2361
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 2364
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2365
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2366
    nop

    .line 2367
    return v2

    .line 2364
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2365
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public unlockUserKey(IILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "userSerial"    # I
    .param p3, "token"    # Ljava/lang/String;
    .param p4, "secret"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2012
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2013
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2015
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.os.IVold"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2016
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2017
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2018
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2019
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2020
    iget-object v2, p0, Landroid/os/IVold$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x33

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2021
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2022
    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/os/IVold;->unlockUserKey(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2028
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2029
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2023
    return-void

    .line 2025
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2028
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2029
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2030
    nop

    .line 2031
    return-void

    .line 2028
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2029
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public unmount(Ljava/lang/String;)V
    .locals 5
    .param p1, "volId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1298
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1299
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1301
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.os.IVold"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1302
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1303
    iget-object v2, p0, Landroid/os/IVold$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1304
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1305
    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/os/IVold;->unmount(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1311
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1312
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1306
    return-void

    .line 1308
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1311
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1312
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1313
    nop

    .line 1314
    return-void

    .line 1311
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1312
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public unmountAppFuse(II)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "mountId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1558
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1559
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1561
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.os.IVold"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1562
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1563
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1564
    iget-object v2, p0, Landroid/os/IVold$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1565
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1566
    invoke-static {}, Landroid/os/IVold$Stub;->getDefaultImpl()Landroid/os/IVold;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/os/IVold;->unmountAppFuse(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1572
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1573
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1567
    return-void

    .line 1569
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1572
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1573
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1574
    nop

    .line 1575
    return-void

    .line 1572
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1573
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
