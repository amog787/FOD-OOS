.class final Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;
.super Ljava/lang/Object;
.source "MultiClientInputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OnWorkerThreadCallback"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mInputMethodInfoMap:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserToInputMethodInfoMap;

.field private final mUserDataMap:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserToInputMethodInfoMap;Landroid/os/Handler;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userDataMap"    # Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;
    .param p3, "inputMethodInfoMap"    # Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserToInputMethodInfoMap;
    .param p4, "handler"    # Landroid/os/Handler;

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput-object p1, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;->mContext:Landroid/content/Context;

    .line 246
    iput-object p2, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;->mUserDataMap:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;

    .line 247
    iput-object p3, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;->mInputMethodInfoMap:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserToInputMethodInfoMap;

    .line 248
    iput-object p4, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;->mHandler:Landroid/os/Handler;

    .line 249
    return-void
.end method

.method public static synthetic lambda$RXozRqnqnYcbtt5pr216uYhnGCc(Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;->tryBindInputMethodService(I)V

    return-void
.end method

.method private tryBindInputMethodService(I)V
    .locals 6
    .param p1, "userId"    # I

    .line 258
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;->mUserDataMap:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;

    invoke-virtual {v0, p1}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;->get(I)Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    move-result-object v0

    .line 259
    .local v0, "data":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    if-nez v0, :cond_0

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tryBindInputMethodService is called for an unknown user="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MultiClientInputMethodManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    return-void

    .line 264
    :cond_0
    iget-object v1, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;->access$300()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;->access$400(Landroid/content/Context;ILandroid/content/ComponentName;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v1

    .line 265
    .local v1, "imi":Landroid/view/inputmethod/InputMethodInfo;
    const/4 v2, 0x3

    if-nez v1, :cond_2

    .line 266
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Multi-client InputMethod is not found. component="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    invoke-static {}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;->access$300()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 266
    const-string v4, "MultiClientInputMethodManagerService"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v3, v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 269
    :try_start_0
    iget v4, v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mState:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    if-eq v4, v2, :cond_1

    const/4 v2, 0x6

    if-eq v4, v2, :cond_1

    goto :goto_0

    .line 275
    :cond_1
    iget-object v2, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;->mInputMethodInfoMap:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserToInputMethodInfoMap;

    invoke-virtual {v2, p1}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserToInputMethodInfoMap;->remove(I)V

    .line 278
    :goto_0
    monitor-exit v3

    .line 279
    return-void

    .line 278
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 282
    :cond_2
    iget-object v3, v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 283
    :try_start_1
    iget v4, v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mState:I

    packed-switch v4, :pswitch_data_0

    .line 296
    const-string v2, "MultiClientInputMethodManagerService"

    goto :goto_1

    .line 294
    :pswitch_0
    monitor-exit v3

    return-void

    .line 290
    :pswitch_1
    nop

    .line 299
    iput v2, v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mState:I

    .line 300
    iput-object v1, v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mCurrentInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    .line 301
    iget-object v2, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;->mInputMethodInfoMap:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserToInputMethodInfoMap;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserToInputMethodInfoMap;->put(ILandroid/view/inputmethod/InputMethodInfo;)V

    .line 302
    iget-object v2, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, p1}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->bindServiceLocked(Landroid/content/Context;I)Z

    move-result v2

    .line 303
    .local v2, "bindResult":Z
    if-nez v2, :cond_3

    .line 304
    const-string v4, "MultiClientInputMethodManagerService"

    const-string v5, "Failed to bind Multi-client InputMethod."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    monitor-exit v3

    return-void

    .line 307
    :cond_3
    const/4 v4, 0x4

    iput v4, v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mState:I

    .line 308
    .end local v2    # "bindResult":Z
    monitor-exit v3

    .line 309
    return-void

    .line 286
    :pswitch_2
    monitor-exit v3

    return-void

    .line 296
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    monitor-exit v3

    return-void

    .line 308
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method getHandler()Landroid/os/Handler;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method onBindingDied(Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;)V
    .locals 8
    .param p1, "data"    # Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    .line 445
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    .line 446
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    .line 447
    .local v0, "windowManagerInternal":Lcom/android/server/wm/WindowManagerInternal;
    iget-object v1, p1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 450
    :try_start_0
    iget-object v2, p1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mDisplayIdToImeWindowTokenMap:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    .line 451
    .local v2, "numTokens":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 452
    iget-object v4, p1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mDisplayIdToImeWindowTokenMap:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;

    .line 453
    .local v4, "info":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;
    iget-object v5, v4, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;->mToken:Landroid/os/Binder;

    const/4 v6, 0x0

    iget v7, v4, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;->mDisplayId:I

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/wm/WindowManagerInternal;->removeWindowToken(Landroid/os/IBinder;ZI)V

    .line 451
    .end local v4    # "info":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 455
    .end local v3    # "i":I
    :cond_0
    iget-object v3, p1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mDisplayIdToImeWindowTokenMap:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->clear()V

    .line 456
    iget v3, p1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mState:I

    const/4 v4, 0x4

    const/4 v5, 0x6

    if-eq v3, v4, :cond_2

    const/4 v4, 0x5

    if-eq v3, v4, :cond_2

    if-eq v3, v5, :cond_1

    .line 473
    const-string v3, "MultiClientInputMethodManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    monitor-exit v1

    return-void

    .line 459
    :cond_1
    monitor-exit v1

    return-void

    .line 463
    :cond_2
    iput v5, p1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mState:I

    .line 464
    const/4 v3, 0x0

    iput-object v3, p1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mCurrentInputMethod:Lcom/android/internal/inputmethod/IMultiClientInputMethod;

    .line 465
    invoke-virtual {p1}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->onInputMethodDisconnectedLocked()V

    .line 467
    iget-object v3, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;->mHandler:Landroid/os/Handler;

    sget-object v4, Lcom/android/server/inputmethod/-$$Lambda$MultiClientInputMethodManagerService$OnWorkerThreadCallback$RXozRqnqnYcbtt5pr216uYhnGCc;->INSTANCE:Lcom/android/server/inputmethod/-$$Lambda$MultiClientInputMethodManagerService$OnWorkerThreadCallback$RXozRqnqnYcbtt5pr216uYhnGCc;

    .line 469
    invoke-static {p1}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->access$500(Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 467
    invoke-static {v4, p0, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 470
    nop

    .line 476
    .end local v2    # "numTokens":I
    monitor-exit v1

    .line 477
    return-void

    .line 476
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method onBootPhase(I)V
    .locals 8
    .param p1, "phase"    # I

    .line 484
    const/16 v0, 0x226

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 499
    .local v0, "perDisplayFocusEnabled":Z
    if-nez v0, :cond_2

    .line 500
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 501
    .local v1, "extras":Landroid/os/Bundle;
    const/4 v2, 0x1

    const-string v3, "android.allowDuringSetup"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 502
    iget-object v3, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/NotificationManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    const/16 v4, 0x8

    new-instance v5, Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/android/internal/notification/SystemNotificationChannels;->VIRTUAL_KEYBOARD:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 506
    const-string v6, "config_perDisplayFocusEnabled is not true."

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    new-instance v6, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v6}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 508
    const-string v7, "Consider rebuilding the system image after enabling config_perDisplayFocusEnabled to make IME focus compatible with multi-client IME mode."

    invoke-virtual {v6, v7}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v6

    .line 507
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v5

    const v6, 0x10804d2

    .line 509
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    const-wide/16 v6, 0x0

    .line 510
    invoke-virtual {v5, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 511
    invoke-virtual {v5, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 512
    invoke-virtual {v5, v2}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 513
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 514
    const-string/jumbo v5, "sys"

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;->mContext:Landroid/content/Context;

    const v6, 0x106001c

    .line 515
    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 517
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 502
    const-string v6, "MultiClientInputMethodManagerService"

    invoke-virtual {v3, v6, v4, v2, v5}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 518
    .end local v1    # "extras":Landroid/os/Bundle;
    goto :goto_0

    .line 486
    .end local v0    # "perDisplayFocusEnabled":Z
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 487
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 488
    iget-object v1, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback$1;

    invoke-direct {v2, p0}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback$1;-><init>(Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;)V

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 494
    nop

    .line 522
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_2
    :goto_0
    return-void
.end method

.method onPackageAdded(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 529
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 530
    .local v0, "uri":Landroid/net/Uri;
    if-nez v0, :cond_0

    .line 531
    return-void

    .line 533
    :cond_0
    const-string v1, "android.intent.extra.UID"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 534
    return-void

    .line 536
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 537
    .local v2, "packageName":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;->access$300()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    .line 539
    invoke-static {}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;->access$300()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 542
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 543
    .local v1, "userId":I
    invoke-direct {p0, v1}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;->tryBindInputMethodService(I)V

    .line 544
    return-void

    .line 540
    .end local v1    # "userId":I
    :cond_3
    :goto_0
    return-void
.end method

.method onServiceConnected(Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;Lcom/android/internal/inputmethod/IMultiClientInputMethod;)V
    .locals 4
    .param p1, "data"    # Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    .param p2, "service"    # Lcom/android/internal/inputmethod/IMultiClientInputMethod;

    .line 384
    iget-object v0, p1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 385
    :try_start_0
    iget v1, p1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    .line 400
    const-string v1, "MultiClientInputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    monitor-exit v0

    return-void

    .line 388
    :cond_0
    monitor-exit v0

    return-void

    .line 391
    :cond_1
    const/4 v1, 0x5

    iput v1, p1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mState:I

    .line 392
    iput-object p2, p1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mCurrentInputMethod:Lcom/android/internal/inputmethod/IMultiClientInputMethod;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    :try_start_1
    iget-object v1, p1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mCurrentInputMethod:Lcom/android/internal/inputmethod/IMultiClientInputMethod;

    new-instance v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ImeCallbacks;

    invoke-direct {v2, p1}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ImeCallbacks;-><init>(Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;)V

    invoke-interface {v1, v2}, Lcom/android/internal/inputmethod/IMultiClientInputMethod;->initialize(Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 396
    goto :goto_0

    .line 395
    :catch_0
    move-exception v1

    .line 397
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->onInputMethodConnectedLocked()V

    .line 398
    nop

    .line 403
    monitor-exit v0

    .line 404
    return-void

    .line 403
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method onServiceDisconnected(Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;)V
    .locals 8
    .param p1, "data"    # Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    .line 411
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    .line 412
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    .line 413
    .local v0, "windowManagerInternal":Lcom/android/server/wm/WindowManagerInternal;
    iget-object v1, p1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 416
    :try_start_0
    iget-object v2, p1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mDisplayIdToImeWindowTokenMap:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    .line 417
    .local v2, "numTokens":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 418
    iget-object v4, p1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mDisplayIdToImeWindowTokenMap:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;

    .line 419
    .local v4, "info":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;
    iget-object v5, v4, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;->mToken:Landroid/os/Binder;

    const/4 v6, 0x0

    iget v7, v4, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;->mDisplayId:I

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/wm/WindowManagerInternal;->removeWindowToken(Landroid/os/IBinder;ZI)V

    .line 417
    .end local v4    # "info":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 421
    .end local v3    # "i":I
    :cond_0
    iget-object v3, p1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mDisplayIdToImeWindowTokenMap:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->clear()V

    .line 422
    iget v3, p1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mState:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    const/4 v5, 0x5

    if-eq v3, v5, :cond_2

    const/4 v4, 0x6

    if-eq v3, v4, :cond_1

    .line 434
    const-string v3, "MultiClientInputMethodManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    monitor-exit v1

    return-void

    .line 425
    :cond_1
    monitor-exit v1

    return-void

    .line 429
    :cond_2
    iput v4, p1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mState:I

    .line 430
    const/4 v3, 0x0

    iput-object v3, p1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mCurrentInputMethod:Lcom/android/internal/inputmethod/IMultiClientInputMethod;

    .line 431
    invoke-virtual {p1}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->onInputMethodDisconnectedLocked()V

    .line 432
    nop

    .line 437
    .end local v2    # "numTokens":I
    monitor-exit v1

    .line 438
    return-void

    .line 437
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method onStartUser(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 316
    new-instance v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2, p0}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;-><init>(ILandroid/view/inputmethod/InputMethodInfo;ILcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;)V

    .line 317
    .local v0, "data":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    iget-object v1, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;->mUserDataMap:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;->put(ILcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;)V

    .line 318
    return-void
.end method

.method onStopUser(I)V
    .locals 6
    .param p1, "userId"    # I

    .line 348
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;->mInputMethodInfoMap:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserToInputMethodInfoMap;

    invoke-virtual {v0, p1}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserToInputMethodInfoMap;->remove(I)V

    .line 349
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;->mUserDataMap:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;

    invoke-virtual {v0, p1}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;->removeReturnOld(I)Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    move-result-object v0

    .line 350
    .local v0, "data":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    if-nez v0, :cond_0

    .line 351
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStopUser is called for an unknown user="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MultiClientInputMethodManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    return-void

    .line 354
    :cond_0
    iget-object v1, v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 355
    :try_start_0
    iget v2, v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mState:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    const/4 v4, 0x6

    if-eq v2, v3, :cond_1

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    if-eq v2, v4, :cond_2

    .line 365
    const-string v2, "MultiClientInputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown state="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mState:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 363
    :cond_1
    nop

    .line 368
    :goto_0
    iget-object v2, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->unbindServiceLocked(Landroid/content/Context;)V

    .line 369
    iput v4, v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mState:I

    .line 370
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mCurrentInputMethod:Lcom/android/internal/inputmethod/IMultiClientInputMethod;

    .line 375
    invoke-virtual {v0}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->onInputMethodDisconnectedLocked()V

    .line 376
    monitor-exit v1

    .line 377
    return-void

    .line 360
    :cond_2
    monitor-exit v1

    return-void

    .line 376
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method onUnlockUser(I)V
    .locals 5
    .param p1, "userId"    # I

    .line 325
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;->mUserDataMap:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;

    invoke-virtual {v0, p1}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;->get(I)Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    move-result-object v0

    .line 326
    .local v0, "data":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    if-nez v0, :cond_0

    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUnlockUser is called for an unknown user="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MultiClientInputMethodManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    return-void

    .line 330
    :cond_0
    iget-object v1, v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 331
    :try_start_0
    iget v2, v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mState:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 337
    const-string v2, "MultiClientInputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 333
    :cond_1
    const/4 v2, 0x2

    iput v2, v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mState:I

    .line 334
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;->tryBindInputMethodService(I)V

    .line 335
    nop

    .line 340
    :goto_0
    monitor-exit v1

    .line 341
    return-void

    .line 340
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
