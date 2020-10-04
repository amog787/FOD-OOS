.class Landroid/os/IIdmap2$Stub$Proxy;
.super Ljava/lang/Object;
.source "IIdmap2.java"

# interfaces
.implements Landroid/os/IIdmap2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IIdmap2$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/os/IIdmap2;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p1, p0, Landroid/os/IIdmap2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 142
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 145
    iget-object v0, p0, Landroid/os/IIdmap2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public createIdmap(Ljava/lang/String;Ljava/lang/String;IZI)Ljava/lang/String;
    .locals 10
    .param p1, "targetApkPath"    # Ljava/lang/String;
    .param p2, "overlayApkPath"    # Ljava/lang/String;
    .param p3, "fulfilledPolicies"    # I
    .param p4, "enforceOverlayable"    # Z
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 221
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 222
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 225
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.os.IIdmap2"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    const/4 v2, 0x0

    if-eqz p4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    iget-object v3, p0, Landroid/os/IIdmap2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 232
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Landroid/os/IIdmap2$Stub;->getDefaultImpl()Landroid/os/IIdmap2;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 233
    invoke-static {}, Landroid/os/IIdmap2$Stub;->getDefaultImpl()Landroid/os/IIdmap2;

    move-result-object v4

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-interface/range {v4 .. v9}, Landroid/os/IIdmap2;->createIdmap(Ljava/lang/String;Ljava/lang/String;IZI)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 240
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 233
    return-object v3

    .line 235
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 236
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 239
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 240
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 241
    nop

    .line 242
    return-object v2

    .line 239
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 240
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getIdmapPath(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p1, "overlayApkPath"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 153
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 154
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 157
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.os.IIdmap2"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    iget-object v2, p0, Landroid/os/IIdmap2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 161
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/IIdmap2$Stub;->getDefaultImpl()Landroid/os/IIdmap2;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 162
    invoke-static {}, Landroid/os/IIdmap2$Stub;->getDefaultImpl()Landroid/os/IIdmap2;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/os/IIdmap2;->getIdmapPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 169
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 162
    return-object v3

    .line 164
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 165
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 168
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 169
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 170
    nop

    .line 171
    return-object v2

    .line 168
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 169
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 149
    const-string v0, "android.os.IIdmap2"

    return-object v0
.end method

.method public removeIdmap(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "overlayApkPath"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 175
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 176
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 179
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.os.IIdmap2"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    iget-object v2, p0, Landroid/os/IIdmap2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 183
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/IIdmap2$Stub;->getDefaultImpl()Landroid/os/IIdmap2;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 184
    invoke-static {}, Landroid/os/IIdmap2$Stub;->getDefaultImpl()Landroid/os/IIdmap2;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/os/IIdmap2;->removeIdmap(Ljava/lang/String;I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 191
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 184
    return v3

    .line 186
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 187
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 190
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 191
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 192
    nop

    .line 193
    return v2

    .line 190
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 191
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public verifyIdmap(Ljava/lang/String;IZI)Z
    .locals 6
    .param p1, "overlayApkPath"    # Ljava/lang/String;
    .param p2, "fulfilledPolicies"    # I
    .param p3, "enforceOverlayable"    # Z
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 197
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 198
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 201
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.os.IIdmap2"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    iget-object v4, p0, Landroid/os/IIdmap2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x3

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    .line 207
    .local v4, "_status":Z
    if-nez v4, :cond_1

    invoke-static {}, Landroid/os/IIdmap2$Stub;->getDefaultImpl()Landroid/os/IIdmap2;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 208
    invoke-static {}, Landroid/os/IIdmap2$Stub;->getDefaultImpl()Landroid/os/IIdmap2;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/os/IIdmap2;->verifyIdmap(Ljava/lang/String;IZI)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 215
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 208
    return v2

    .line 210
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 211
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 214
    .end local v4    # "_status":Z
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 215
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 216
    nop

    .line 217
    return v2

    .line 214
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 215
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
