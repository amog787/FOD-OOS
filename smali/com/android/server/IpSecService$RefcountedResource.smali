.class public Lcom/android/server/IpSecService$RefcountedResource;
.super Ljava/lang/Object;
.source "IpSecService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/IpSecService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RefcountedResource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/android/server/IpSecService$IResource;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/IBinder$DeathRecipient;"
    }
.end annotation


# instance fields
.field mBinder:Landroid/os/IBinder;

.field private final mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/IpSecService$RefcountedResource;",
            ">;"
        }
    .end annotation
.end field

.field mRefCount:I

.field private final mResource:Lcom/android/server/IpSecService$IResource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/IpSecService;


# direct methods
.method varargs constructor <init>(Lcom/android/server/IpSecService;Lcom/android/server/IpSecService$IResource;Landroid/os/IBinder;[Lcom/android/server/IpSecService$RefcountedResource;)V
    .locals 6
    .param p1, "this$0"    # Lcom/android/server/IpSecService;
    .param p3, "binder"    # Landroid/os/IBinder;
    .param p4, "children"    # [Lcom/android/server/IpSecService$RefcountedResource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/IBinder;",
            "[",
            "Lcom/android/server/IpSecService$RefcountedResource;",
            ")V"
        }
    .end annotation

    .line 197
    .local p0, "this":Lcom/android/server/IpSecService$RefcountedResource;, "Lcom/android/server/IpSecService$RefcountedResource<TT;>;"
    .local p2, "resource":Lcom/android/server/IpSecService$IResource;, "TT;"
    iput-object p1, p0, Lcom/android/server/IpSecService$RefcountedResource;->this$0:Lcom/android/server/IpSecService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/IpSecService$RefcountedResource;->mRefCount:I

    .line 198
    monitor-enter p1

    .line 199
    :try_start_0
    iput-object p2, p0, Lcom/android/server/IpSecService$RefcountedResource;->mResource:Lcom/android/server/IpSecService$IResource;

    .line 200
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/IpSecService$RefcountedResource;->mChildren:Ljava/util/List;

    .line 201
    iput-object p3, p0, Lcom/android/server/IpSecService$RefcountedResource;->mBinder:Landroid/os/IBinder;

    .line 203
    array-length v1, p4

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p4, v3

    .line 204
    .local v4, "child":Lcom/android/server/IpSecService$RefcountedResource;
    iget-object v5, p0, Lcom/android/server/IpSecService$RefcountedResource;->mChildren:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    iget v5, v4, Lcom/android/server/IpSecService$RefcountedResource;->mRefCount:I

    add-int/2addr v5, v0

    iput v5, v4, Lcom/android/server/IpSecService$RefcountedResource;->mRefCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    .end local v4    # "child":Lcom/android/server/IpSecService$RefcountedResource;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 209
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/IpSecService$RefcountedResource;->mBinder:Landroid/os/IBinder;

    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 213
    goto :goto_1

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/IpSecService$RefcountedResource;->binderDied()V

    .line 212
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 214
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    monitor-exit p1

    .line 215
    return-void

    .line 214
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method


# virtual methods
.method public binderDied()V
    .locals 5

    .line 224
    .local p0, "this":Lcom/android/server/IpSecService$RefcountedResource;, "Lcom/android/server/IpSecService$RefcountedResource<TT;>;"
    iget-object v0, p0, Lcom/android/server/IpSecService$RefcountedResource;->this$0:Lcom/android/server/IpSecService;

    monitor-enter v0

    .line 226
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/IpSecService$RefcountedResource;->userRelease()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    goto :goto_0

    .line 230
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 227
    :catch_0
    move-exception v1

    .line 228
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "IpSecService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to release resource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit v0

    .line 231
    return-void

    .line 230
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getResource()Lcom/android/server/IpSecService$IResource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 234
    .local p0, "this":Lcom/android/server/IpSecService$RefcountedResource;, "Lcom/android/server/IpSecService$RefcountedResource<TT;>;"
    iget-object v0, p0, Lcom/android/server/IpSecService$RefcountedResource;->mResource:Lcom/android/server/IpSecService$IResource;

    return-object v0
.end method

.method public releaseReference()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "IpSecService.this"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 277
    .local p0, "this":Lcom/android/server/IpSecService$RefcountedResource;, "Lcom/android/server/IpSecService$RefcountedResource<TT;>;"
    iget v0, p0, Lcom/android/server/IpSecService$RefcountedResource;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/IpSecService$RefcountedResource;->mRefCount:I

    .line 279
    iget v0, p0, Lcom/android/server/IpSecService$RefcountedResource;->mRefCount:I

    if-lez v0, :cond_0

    .line 280
    return-void

    .line 281
    :cond_0
    if-ltz v0, :cond_2

    .line 287
    iget-object v0, p0, Lcom/android/server/IpSecService$RefcountedResource;->mResource:Lcom/android/server/IpSecService$IResource;

    invoke-interface {v0}, Lcom/android/server/IpSecService$IResource;->freeUnderlyingResources()V

    .line 290
    iget-object v0, p0, Lcom/android/server/IpSecService$RefcountedResource;->mChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/IpSecService$RefcountedResource;

    .line 291
    .local v1, "child":Lcom/android/server/IpSecService$RefcountedResource;, "Lcom/android/server/IpSecService$RefcountedResource<+Lcom/android/server/IpSecService$IResource;>;"
    invoke-virtual {v1}, Lcom/android/server/IpSecService$RefcountedResource;->releaseReference()V

    .line 292
    .end local v1    # "child":Lcom/android/server/IpSecService$RefcountedResource;, "Lcom/android/server/IpSecService$RefcountedResource<+Lcom/android/server/IpSecService$IResource;>;"
    goto :goto_0

    .line 297
    :cond_1
    iget v0, p0, Lcom/android/server/IpSecService$RefcountedResource;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/IpSecService$RefcountedResource;->mRefCount:I

    .line 298
    return-void

    .line 282
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid operation - resource has already been released."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 302
    .local p0, "this":Lcom/android/server/IpSecService$RefcountedResource;, "Lcom/android/server/IpSecService$RefcountedResource<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 303
    const-string/jumbo v1, "{mResource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/IpSecService$RefcountedResource;->mResource:Lcom/android/server/IpSecService$IResource;

    .line 304
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 305
    const-string v1, ", mRefCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/IpSecService$RefcountedResource;->mRefCount:I

    .line 306
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 307
    const-string v1, ", mChildren="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/IpSecService$RefcountedResource;->mChildren:Ljava/util/List;

    .line 308
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 309
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 302
    return-object v0
.end method

.method public userRelease()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "IpSecService.this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 252
    .local p0, "this":Lcom/android/server/IpSecService$RefcountedResource;, "Lcom/android/server/IpSecService$RefcountedResource<TT;>;"
    iget-object v0, p0, Lcom/android/server/IpSecService$RefcountedResource;->mBinder:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 253
    return-void

    .line 256
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/IpSecService$RefcountedResource;->mBinder:Landroid/os/IBinder;

    .line 259
    iget-object v0, p0, Lcom/android/server/IpSecService$RefcountedResource;->mResource:Lcom/android/server/IpSecService$IResource;

    invoke-interface {v0}, Lcom/android/server/IpSecService$IResource;->invalidate()V

    .line 261
    invoke-virtual {p0}, Lcom/android/server/IpSecService$RefcountedResource;->releaseReference()V

    .line 262
    return-void
.end method
