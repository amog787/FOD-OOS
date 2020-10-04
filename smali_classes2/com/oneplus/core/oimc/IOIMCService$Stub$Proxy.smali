.class Lcom/oneplus/core/oimc/IOIMCService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IOIMCService.java"

# interfaces
.implements Lcom/oneplus/core/oimc/IOIMCService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/core/oimc/IOIMCService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/oneplus/core/oimc/IOIMCService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput-object p1, p0, Lcom/oneplus/core/oimc/IOIMCService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 225
    return-void
.end method


# virtual methods
.method public addFuncRule(Lcom/oneplus/core/oimc/OIMCRule;I)V
    .locals 5
    .param p1, "rule"    # Lcom/oneplus/core/oimc/OIMCRule;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 236
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 237
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 239
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.oneplus.core.oimc.IOIMCService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 240
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 241
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    invoke-virtual {p1, v0, v3}, Lcom/oneplus/core/oimc/OIMCRule;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 245
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    iget-object v4, p0, Lcom/oneplus/core/oimc/IOIMCService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v4, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 249
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lcom/oneplus/core/oimc/IOIMCService$Stub;->getDefaultImpl()Lcom/oneplus/core/oimc/IOIMCService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 250
    invoke-static {}, Lcom/oneplus/core/oimc/IOIMCService$Stub;->getDefaultImpl()Lcom/oneplus/core/oimc/IOIMCService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/oneplus/core/oimc/IOIMCService;->addFuncRule(Lcom/oneplus/core/oimc/OIMCRule;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 257
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 251
    return-void

    .line 253
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 257
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 258
    nop

    .line 259
    return-void

    .line 256
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 257
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public addFuncRuleGlobal(Lcom/oneplus/core/oimc/OIMCRule;)V
    .locals 5
    .param p1, "rule"    # Lcom/oneplus/core/oimc/OIMCRule;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 288
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 289
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 291
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.oneplus.core.oimc.IOIMCService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 292
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 293
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    invoke-virtual {p1, v0, v2}, Lcom/oneplus/core/oimc/OIMCRule;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 297
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    :goto_0
    iget-object v3, p0, Lcom/oneplus/core/oimc/IOIMCService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 300
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lcom/oneplus/core/oimc/IOIMCService$Stub;->getDefaultImpl()Lcom/oneplus/core/oimc/IOIMCService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 301
    invoke-static {}, Lcom/oneplus/core/oimc/IOIMCService$Stub;->getDefaultImpl()Lcom/oneplus/core/oimc/IOIMCService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/oneplus/core/oimc/IOIMCService;->addFuncRuleGlobal(Lcom/oneplus/core/oimc/OIMCRule;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 308
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 302
    return-void

    .line 304
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 307
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 308
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 309
    nop

    .line 310
    return-void

    .line 307
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 308
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/oneplus/core/oimc/IOIMCService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 232
    const-string v0, "com.oneplus.core.oimc.IOIMCService"

    return-object v0
.end method

.method public getRemoteFuncConfig(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p1, "fName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 444
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 445
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 448
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.oneplus.core.oimc.IOIMCService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 449
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 450
    iget-object v2, p0, Lcom/oneplus/core/oimc/IOIMCService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 451
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/oneplus/core/oimc/IOIMCService$Stub;->getDefaultImpl()Lcom/oneplus/core/oimc/IOIMCService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 452
    invoke-static {}, Lcom/oneplus/core/oimc/IOIMCService$Stub;->getDefaultImpl()Lcom/oneplus/core/oimc/IOIMCService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/oneplus/core/oimc/IOIMCService;->getRemoteFuncConfig(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 459
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 452
    return-object v3

    .line 454
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 455
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 458
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 459
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 460
    nop

    .line 461
    return-object v2

    .line 458
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 459
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getRemoteFuncStatus(Ljava/lang/String;)I
    .locals 5
    .param p1, "fName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 423
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 424
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 427
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.oneplus.core.oimc.IOIMCService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 428
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 429
    iget-object v2, p0, Lcom/oneplus/core/oimc/IOIMCService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 430
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/oneplus/core/oimc/IOIMCService$Stub;->getDefaultImpl()Lcom/oneplus/core/oimc/IOIMCService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 431
    invoke-static {}, Lcom/oneplus/core/oimc/IOIMCService$Stub;->getDefaultImpl()Lcom/oneplus/core/oimc/IOIMCService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/oneplus/core/oimc/IOIMCService;->getRemoteFuncStatus(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 438
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 431
    return v3

    .line 433
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 434
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 437
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 438
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 439
    nop

    .line 440
    return v2

    .line 437
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 438
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public notifyModeChange(Ljava/lang/String;II)V
    .locals 5
    .param p1, "mode"    # Ljava/lang/String;
    .param p2, "change"    # I
    .param p3, "reserved"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 363
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 364
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 366
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.oneplus.core.oimc.IOIMCService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 367
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 368
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 369
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 370
    iget-object v2, p0, Lcom/oneplus/core/oimc/IOIMCService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 371
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/oneplus/core/oimc/IOIMCService$Stub;->getDefaultImpl()Lcom/oneplus/core/oimc/IOIMCService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 372
    invoke-static {}, Lcom/oneplus/core/oimc/IOIMCService$Stub;->getDefaultImpl()Lcom/oneplus/core/oimc/IOIMCService;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/oneplus/core/oimc/IOIMCService;->notifyModeChange(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 379
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 373
    return-void

    .line 375
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 378
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 379
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 380
    nop

    .line 381
    return-void

    .line 378
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 379
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public registerRemoteAction(Ljava/lang/String;Lcom/oneplus/core/oimc/IOIMCRemoteAction;)V
    .locals 5
    .param p1, "fName"    # Ljava/lang/String;
    .param p2, "action"    # Lcom/oneplus/core/oimc/IOIMCRemoteAction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 384
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 385
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 387
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.oneplus.core.oimc.IOIMCService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 388
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 389
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/oneplus/core/oimc/IOIMCRemoteAction;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 390
    iget-object v2, p0, Lcom/oneplus/core/oimc/IOIMCService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 391
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lcom/oneplus/core/oimc/IOIMCService$Stub;->getDefaultImpl()Lcom/oneplus/core/oimc/IOIMCService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 392
    invoke-static {}, Lcom/oneplus/core/oimc/IOIMCService$Stub;->getDefaultImpl()Lcom/oneplus/core/oimc/IOIMCService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/oneplus/core/oimc/IOIMCService;->registerRemoteAction(Ljava/lang/String;Lcom/oneplus/core/oimc/IOIMCRemoteAction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 399
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 393
    return-void

    .line 395
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 398
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 399
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 400
    nop

    .line 401
    return-void

    .line 398
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 399
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public removeFuncRule(Lcom/oneplus/core/oimc/OIMCRule;I)V
    .locals 5
    .param p1, "rule"    # Lcom/oneplus/core/oimc/OIMCRule;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 262
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 263
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 265
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.oneplus.core.oimc.IOIMCService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 266
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 267
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    invoke-virtual {p1, v0, v2}, Lcom/oneplus/core/oimc/OIMCRule;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 271
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 274
    iget-object v3, p0, Lcom/oneplus/core/oimc/IOIMCService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 275
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lcom/oneplus/core/oimc/IOIMCService$Stub;->getDefaultImpl()Lcom/oneplus/core/oimc/IOIMCService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 276
    invoke-static {}, Lcom/oneplus/core/oimc/IOIMCService$Stub;->getDefaultImpl()Lcom/oneplus/core/oimc/IOIMCService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/oneplus/core/oimc/IOIMCService;->removeFuncRule(Lcom/oneplus/core/oimc/OIMCRule;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 283
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 277
    return-void

    .line 279
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 282
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 283
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 284
    nop

    .line 285
    return-void

    .line 282
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 283
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public removeFuncRuleGlobal(Lcom/oneplus/core/oimc/OIMCRule;)V
    .locals 5
    .param p1, "rule"    # Lcom/oneplus/core/oimc/OIMCRule;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 313
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 314
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 316
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.oneplus.core.oimc.IOIMCService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 317
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 318
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    invoke-virtual {p1, v0, v2}, Lcom/oneplus/core/oimc/OIMCRule;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 322
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    :goto_0
    iget-object v3, p0, Lcom/oneplus/core/oimc/IOIMCService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 325
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lcom/oneplus/core/oimc/IOIMCService$Stub;->getDefaultImpl()Lcom/oneplus/core/oimc/IOIMCService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 326
    invoke-static {}, Lcom/oneplus/core/oimc/IOIMCService$Stub;->getDefaultImpl()Lcom/oneplus/core/oimc/IOIMCService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/oneplus/core/oimc/IOIMCService;->removeFuncRuleGlobal(Lcom/oneplus/core/oimc/OIMCRule;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 333
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 327
    return-void

    .line 329
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 332
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 333
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 334
    nop

    .line 335
    return-void

    .line 332
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 333
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public runRuleGlobal(Lcom/oneplus/core/oimc/OIMCRule;)V
    .locals 5
    .param p1, "rule"    # Lcom/oneplus/core/oimc/OIMCRule;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 338
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 339
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 341
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.oneplus.core.oimc.IOIMCService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 342
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 343
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 344
    invoke-virtual {p1, v0, v2}, Lcom/oneplus/core/oimc/OIMCRule;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 347
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    :goto_0
    iget-object v3, p0, Lcom/oneplus/core/oimc/IOIMCService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 350
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lcom/oneplus/core/oimc/IOIMCService$Stub;->getDefaultImpl()Lcom/oneplus/core/oimc/IOIMCService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 351
    invoke-static {}, Lcom/oneplus/core/oimc/IOIMCService$Stub;->getDefaultImpl()Lcom/oneplus/core/oimc/IOIMCService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/oneplus/core/oimc/IOIMCService;->runRuleGlobal(Lcom/oneplus/core/oimc/OIMCRule;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 358
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 352
    return-void

    .line 354
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 357
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 358
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 359
    nop

    .line 360
    return-void

    .line 357
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 358
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public unRegisterRemoteAction(Ljava/lang/String;)V
    .locals 5
    .param p1, "fName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 404
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 405
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 407
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.oneplus.core.oimc.IOIMCService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 408
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 409
    iget-object v2, p0, Lcom/oneplus/core/oimc/IOIMCService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 410
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/oneplus/core/oimc/IOIMCService$Stub;->getDefaultImpl()Lcom/oneplus/core/oimc/IOIMCService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 411
    invoke-static {}, Lcom/oneplus/core/oimc/IOIMCService$Stub;->getDefaultImpl()Lcom/oneplus/core/oimc/IOIMCService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/oneplus/core/oimc/IOIMCService;->unRegisterRemoteAction(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 418
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 412
    return-void

    .line 414
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 417
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 418
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 419
    nop

    .line 420
    return-void

    .line 417
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 418
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
