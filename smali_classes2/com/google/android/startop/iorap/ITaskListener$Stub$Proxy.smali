.class Lcom/google/android/startop/iorap/ITaskListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "ITaskListener.java"

# interfaces
.implements Lcom/google/android/startop/iorap/ITaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/startop/iorap/ITaskListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/google/android/startop/iorap/ITaskListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Lcom/google/android/startop/iorap/ITaskListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 117
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/google/android/startop/iorap/ITaskListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 124
    const-string v0, "com.google.android.startop.iorap.ITaskListener"

    return-object v0
.end method

.method public onComplete(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/TaskResult;)V
    .locals 5
    .param p1, "requestId"    # Lcom/google/android/startop/iorap/RequestId;
    .param p2, "result"    # Lcom/google/android/startop/iorap/TaskResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 157
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 159
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.google.android.startop.iorap.ITaskListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 160
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 161
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    invoke-virtual {p1, v0, v2}, Lcom/google/android/startop/iorap/RequestId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 165
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    :goto_0
    if-eqz p2, :cond_1

    .line 168
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    invoke-virtual {p2, v0, v2}, Lcom/google/android/startop/iorap/TaskResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 172
    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    :goto_1
    iget-object v2, p0, Lcom/google/android/startop/iorap/ITaskListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 175
    .local v1, "_status":Z
    if-nez v1, :cond_2

    invoke-static {}, Lcom/google/android/startop/iorap/ITaskListener$Stub;->getDefaultImpl()Lcom/google/android/startop/iorap/ITaskListener;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 176
    invoke-static {}, Lcom/google/android/startop/iorap/ITaskListener$Stub;->getDefaultImpl()Lcom/google/android/startop/iorap/ITaskListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/google/android/startop/iorap/ITaskListener;->onComplete(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/TaskResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 177
    return-void

    .line 181
    .end local v1    # "_status":Z
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 182
    nop

    .line 183
    return-void

    .line 181
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 182
    throw v1
.end method

.method public onProgress(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/TaskResult;)V
    .locals 4
    .param p1, "requestId"    # Lcom/google/android/startop/iorap/RequestId;
    .param p2, "result"    # Lcom/google/android/startop/iorap/TaskResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 128
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 130
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.google.android.startop.iorap.ITaskListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 131
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 132
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    invoke-virtual {p1, v0, v2}, Lcom/google/android/startop/iorap/RequestId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 136
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    :goto_0
    if-eqz p2, :cond_1

    .line 139
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    invoke-virtual {p2, v0, v2}, Lcom/google/android/startop/iorap/TaskResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 143
    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    :goto_1
    iget-object v2, p0, Lcom/google/android/startop/iorap/ITaskListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 146
    .local v1, "_status":Z
    if-nez v1, :cond_2

    invoke-static {}, Lcom/google/android/startop/iorap/ITaskListener$Stub;->getDefaultImpl()Lcom/google/android/startop/iorap/ITaskListener;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 147
    invoke-static {}, Lcom/google/android/startop/iorap/ITaskListener$Stub;->getDefaultImpl()Lcom/google/android/startop/iorap/ITaskListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/google/android/startop/iorap/ITaskListener;->onProgress(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/TaskResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 148
    return-void

    .line 152
    .end local v1    # "_status":Z
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 153
    nop

    .line 154
    return-void

    .line 152
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 153
    throw v1
.end method
