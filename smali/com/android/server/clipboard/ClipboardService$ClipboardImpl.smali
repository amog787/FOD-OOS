.class Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;
.super Landroid/content/IClipboard$Stub;
.source "ClipboardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/clipboard/ClipboardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClipboardImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/clipboard/ClipboardService;


# direct methods
.method private constructor <init>(Lcom/android/server/clipboard/ClipboardService;)V
    .locals 0

    .line 346
    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-direct {p0}, Landroid/content/IClipboard$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/clipboard/ClipboardService;Lcom/android/server/clipboard/ClipboardService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/clipboard/ClipboardService;
    .param p2, "x1"    # Lcom/android/server/clipboard/ClipboardService$1;

    .line 346
    invoke-direct {p0, p1}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;-><init>(Lcom/android/server/clipboard/ClipboardService;)V

    return-void
.end method


# virtual methods
.method public addPrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;Ljava/lang/String;I)V
    .locals 5
    .param p1, "listener"    # Landroid/content/IOnPrimaryClipChangedListener;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 440
    monitor-enter p0

    .line 441
    :try_start_0
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0, p2, p3}, Lcom/android/server/clipboard/ClipboardService;->access$300(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I

    move-result v0

    .line 442
    .local v0, "intendingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 443
    .local v1, "intendingUserId":I
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v2, v1}, Lcom/android/server/clipboard/ClipboardService;->access$100(Lcom/android/server/clipboard/ClipboardService;I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    new-instance v3, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;

    iget-object v4, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-direct {v3, v4, v0, p2}, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;-><init>(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;)V

    invoke-virtual {v2, p1, v3}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 445
    nop

    .end local v0    # "intendingUid":I
    .end local v1    # "intendingUserId":I
    monitor-exit p0

    .line 446
    return-void

    .line 445
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearPrimaryClip(Ljava/lang/String;I)V
    .locals 4
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 380
    monitor-enter p0

    .line 381
    :try_start_0
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->access$300(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I

    move-result v0

    .line 382
    .local v0, "intendingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 383
    .local v1, "intendingUserId":I
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    const/16 v3, 0x1e

    invoke-static {v2, v3, p1, v0, v1}, Lcom/android/server/clipboard/ClipboardService;->access$400(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 385
    monitor-exit p0

    return-void

    .line 387
    :cond_0
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternal(Landroid/content/ClipData;I)V

    .line 388
    .end local v0    # "intendingUid":I
    .end local v1    # "intendingUserId":I
    monitor-exit p0

    .line 389
    return-void

    .line 388
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPrimaryClip(Ljava/lang/String;I)Landroid/content/ClipData;
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 393
    monitor-enter p0

    .line 394
    :try_start_0
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->access$300(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I

    move-result v0

    .line 395
    .local v0, "intendingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 396
    .local v1, "intendingUserId":I
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    const/16 v3, 0x1d

    invoke-static {v2, v3, p1, v0, v1}, Lcom/android/server/clipboard/ClipboardService;->access$400(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 398
    invoke-static {v2, v1}, Lcom/android/server/clipboard/ClipboardService;->access$600(Lcom/android/server/clipboard/ClipboardService;I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 401
    :cond_0
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v2, v0, p1}, Lcom/android/server/clipboard/ClipboardService;->access$700(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;)V

    .line 402
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v2, v1}, Lcom/android/server/clipboard/ClipboardService;->access$100(Lcom/android/server/clipboard/ClipboardService;I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    monitor-exit p0

    return-object v2

    .line 399
    :cond_1
    :goto_0
    const/4 v2, 0x0

    monitor-exit p0

    return-object v2

    .line 403
    .end local v0    # "intendingUid":I
    .end local v1    # "intendingUserId":I
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPrimaryClipDescription(Ljava/lang/String;I)Landroid/content/ClipDescription;
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 409
    monitor-enter p0

    .line 410
    :try_start_0
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->access$300(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I

    move-result v0

    .line 411
    .local v0, "intendingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 412
    .local v1, "intendingUserId":I
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    const/16 v3, 0x1d

    invoke-static {v2, v3, p1, v0, v1}, Lcom/android/server/clipboard/ClipboardService;->access$400(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;II)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 414
    invoke-static {v2, v1}, Lcom/android/server/clipboard/ClipboardService;->access$600(Lcom/android/server/clipboard/ClipboardService;I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 417
    :cond_0
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v2, v1}, Lcom/android/server/clipboard/ClipboardService;->access$100(Lcom/android/server/clipboard/ClipboardService;I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v2

    .line 418
    .local v2, "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    iget-object v4, v2, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v4, :cond_1

    .line 419
    iget-object v3, v2, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v3}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v3

    goto :goto_0

    :cond_1
    nop

    :goto_0
    monitor-exit p0

    .line 418
    return-object v3

    .line 415
    .end local v2    # "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    :cond_2
    :goto_1
    monitor-exit p0

    return-object v3

    .line 420
    .end local v0    # "intendingUid":I
    .end local v1    # "intendingUserId":I
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hasClipboardText(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 459
    monitor-enter p0

    .line 460
    :try_start_0
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->access$300(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I

    move-result v0

    .line 461
    .local v0, "intendingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 462
    .local v1, "intendingUserId":I
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    const/16 v3, 0x1d

    invoke-static {v2, v3, p1, v0, v1}, Lcom/android/server/clipboard/ClipboardService;->access$400(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;II)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 464
    invoke-static {v2, v1}, Lcom/android/server/clipboard/ClipboardService;->access$600(Lcom/android/server/clipboard/ClipboardService;I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 467
    :cond_0
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v2, v1}, Lcom/android/server/clipboard/ClipboardService;->access$100(Lcom/android/server/clipboard/ClipboardService;I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v2

    .line 468
    .local v2, "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    iget-object v4, v2, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v4, :cond_2

    .line 469
    iget-object v4, v2, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v4, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 470
    .local v4, "text":Ljava/lang/CharSequence;
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_1

    const/4 v3, 0x1

    :cond_1
    monitor-exit p0

    return v3

    .line 472
    .end local v4    # "text":Ljava/lang/CharSequence;
    :cond_2
    monitor-exit p0

    return v3

    .line 465
    .end local v2    # "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    :cond_3
    :goto_0
    monitor-exit p0

    return v3

    .line 473
    .end local v0    # "intendingUid":I
    .end local v1    # "intendingUserId":I
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hasPrimaryClip(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 425
    monitor-enter p0

    .line 426
    :try_start_0
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->access$300(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I

    move-result v0

    .line 427
    .local v0, "intendingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 428
    .local v1, "intendingUserId":I
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    const/16 v3, 0x1d

    invoke-static {v2, v3, p1, v0, v1}, Lcom/android/server/clipboard/ClipboardService;->access$400(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;II)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 430
    invoke-static {v2, v1}, Lcom/android/server/clipboard/ClipboardService;->access$600(Lcom/android/server/clipboard/ClipboardService;I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 433
    :cond_0
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v2, v1}, Lcom/android/server/clipboard/ClipboardService;->access$100(Lcom/android/server/clipboard/ClipboardService;I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    :cond_1
    monitor-exit p0

    return v3

    .line 431
    :cond_2
    :goto_0
    monitor-exit p0

    return v3

    .line 434
    .end local v0    # "intendingUid":I
    .end local v1    # "intendingUserId":I
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 351
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/IClipboard$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 352
    :catch_0
    move-exception v0

    .line 353
    .local v0, "e":Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_0

    .line 354
    const-string v1, "clipboard"

    const-string v2, "Exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 356
    :cond_0
    throw v0
.end method

.method public removePrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;Ljava/lang/String;I)V
    .locals 2
    .param p1, "listener"    # Landroid/content/IOnPrimaryClipChangedListener;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 451
    monitor-enter p0

    .line 452
    :try_start_0
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0, p2, p3}, Lcom/android/server/clipboard/ClipboardService;->access$800(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I

    move-result v0

    .line 453
    .local v0, "intendingUserId":I
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v1, v0}, Lcom/android/server/clipboard/ClipboardService;->access$100(Lcom/android/server/clipboard/ClipboardService;I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 454
    nop

    .end local v0    # "intendingUserId":I
    monitor-exit p0

    .line 455
    return-void

    .line 454
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;I)V
    .locals 4
    .param p1, "clip"    # Landroid/content/ClipData;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 363
    monitor-enter p0

    .line 364
    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 367
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0, p2, p3}, Lcom/android/server/clipboard/ClipboardService;->access$300(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I

    move-result v0

    .line 368
    .local v0, "intendingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 369
    .local v1, "intendingUserId":I
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    const/16 v3, 0x1e

    invoke-static {v2, v3, p2, v0, v1}, Lcom/android/server/clipboard/ClipboardService;->access$400(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 371
    monitor-exit p0

    return-void

    .line 373
    :cond_0
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v2, p1, v0}, Lcom/android/server/clipboard/ClipboardService;->access$500(Lcom/android/server/clipboard/ClipboardService;Landroid/content/ClipData;I)V

    .line 374
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-virtual {v2, p1, v0}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternal(Landroid/content/ClipData;I)V

    .line 375
    .end local v0    # "intendingUid":I
    .end local v1    # "intendingUserId":I
    monitor-exit p0

    .line 376
    return-void

    .line 365
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No items"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;
    .end local p1    # "clip":Landroid/content/ClipData;
    .end local p2    # "callingPackage":Ljava/lang/String;
    .end local p3    # "userId":I
    throw v0

    .line 375
    .restart local p0    # "this":Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;
    .restart local p1    # "clip":Landroid/content/ClipData;
    .restart local p2    # "callingPackage":Ljava/lang/String;
    .restart local p3    # "userId":I
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
