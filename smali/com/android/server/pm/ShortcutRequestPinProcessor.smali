.class Lcom/android/server/pm/ShortcutRequestPinProcessor;
.super Ljava/lang/Object;
.source "ShortcutRequestPinProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/ShortcutRequestPinProcessor$PinShortcutRequestInner;,
        Lcom/android/server/pm/ShortcutRequestPinProcessor$PinAppWidgetRequestInner;,
        Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ShortcutService"


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final mService:Lcom/android/server/pm/ShortcutService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/ShortcutService;Ljava/lang/Object;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/pm/ShortcutService;
    .param p2, "lock"    # Ljava/lang/Object;

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    iput-object p1, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    .line 217
    iput-object p2, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mLock:Ljava/lang/Object;

    .line 218
    return-void
.end method

.method private requestPinShortcutLocked(Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;Landroid/util/Pair;)Landroid/content/pm/LauncherApps$PinItemRequest;
    .locals 24
    .param p1, "inShortcut"    # Landroid/content/pm/ShortcutInfo;
    .param p2, "resultIntentOriginal"    # Landroid/content/IntentSender;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ShortcutInfo;",
            "Landroid/content/IntentSender;",
            "Landroid/util/Pair<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/content/pm/LauncherApps$PinItemRequest;"
        }
    .end annotation

    .line 300
    .local p3, "confirmActivity":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/ComponentName;Ljava/lang/Integer;>;"
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p3

    iget-object v0, v10, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    .line 301
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v2

    .line 300
    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v13

    .line 303
    .local v13, "ps":Lcom/android/server/pm/ShortcutPackage;
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v14

    .line 304
    .local v14, "existing":Landroid/content/pm/ShortcutInfo;
    const/4 v0, 0x0

    const/4 v15, 0x1

    if-eqz v14, :cond_0

    move v1, v15

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    move/from16 v16, v1

    .line 305
    .local v16, "existsAlready":Z
    if-eqz v16, :cond_1

    invoke-virtual {v14}, Landroid/content/pm/ShortcutInfo;->isVisibleToPublisher()Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v15

    :cond_1
    move/from16 v17, v0

    .line 316
    .local v17, "existingIsVisible":Z
    iget-object v0, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 317
    .local v9, "launcherPackage":Ljava/lang/String;
    iget-object v0, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 319
    .local v8, "launcherUserId":I
    move-object/from16 v0, p2

    .line 321
    .local v0, "resultIntentToSend":Landroid/content/IntentSender;
    if-eqz v16, :cond_4

    .line 322
    invoke-direct {v10, v14}, Lcom/android/server/pm/ShortcutRequestPinProcessor;->validateExistingShortcut(Landroid/content/pm/ShortcutInfo;)V

    .line 324
    iget-object v1, v10, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    .line 325
    invoke-virtual {v14}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v2

    .line 324
    invoke-virtual {v1, v9, v2, v8}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v1

    .line 325
    invoke-virtual {v1, v14}, Lcom/android/server/pm/ShortcutLauncher;->hasPinned(Landroid/content/pm/ShortcutInfo;)Z

    move-result v1

    .line 326
    .local v1, "isAlreadyPinned":Z
    if-eqz v1, :cond_2

    .line 329
    const/4 v2, 0x0

    move-object/from16 v7, p2

    invoke-virtual {v10, v7, v2}, Lcom/android/server/pm/ShortcutRequestPinProcessor;->sendResultIntent(Landroid/content/IntentSender;Landroid/content/Intent;)V

    .line 332
    const/4 v0, 0x0

    goto :goto_1

    .line 326
    :cond_2
    move-object/from16 v7, p2

    .line 337
    :goto_1
    const/16 v2, 0x1b

    invoke-virtual {v14, v2}, Landroid/content/pm/ShortcutInfo;->clone(I)Landroid/content/pm/ShortcutInfo;

    move-result-object v2

    .line 339
    .local v2, "shortcutForLauncher":Landroid/content/pm/ShortcutInfo;
    if-nez v1, :cond_3

    .line 341
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 343
    .end local v1    # "isAlreadyPinned":Z
    :cond_3
    move-object/from16 v18, v0

    move-object/from16 v19, v2

    goto :goto_2

    .line 347
    .end local v2    # "shortcutForLauncher":Landroid/content/pm/ShortcutInfo;
    :cond_4
    move-object/from16 v7, p2

    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_5

    .line 348
    iget-object v1, v10, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    .line 349
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v3

    .line 348
    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectGetDefaultMainActivity(Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/content/pm/ShortcutInfo;->setActivity(Landroid/content/ComponentName;)V

    .line 353
    :cond_5
    iget-object v1, v10, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, v11}, Lcom/android/server/pm/ShortcutService;->validateShortcutForPinRequest(Landroid/content/pm/ShortcutInfo;)V

    .line 356
    iget-object v1, v10, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    .line 357
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v3

    .line 356
    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectGetResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/content/pm/ShortcutInfo;->resolveResourceStrings(Landroid/content/res/Resources;)V

    .line 362
    const/16 v1, 0x1a

    invoke-virtual {v11, v1}, Landroid/content/pm/ShortcutInfo;->clone(I)Landroid/content/pm/ShortcutInfo;

    move-result-object v2

    move-object/from16 v18, v0

    move-object/from16 v19, v2

    .line 370
    .end local v0    # "resultIntentToSend":Landroid/content/IntentSender;
    .local v18, "resultIntentToSend":Landroid/content/IntentSender;
    .local v19, "shortcutForLauncher":Landroid/content/pm/ShortcutInfo;
    :goto_2
    new-instance v20, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinShortcutRequestInner;

    iget-object v0, v10, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    .line 373
    invoke-virtual {v0, v9, v8}, Lcom/android/server/pm/ShortcutService;->injectGetPackageUid(Ljava/lang/String;I)I

    move-result v21

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v19

    move-object/from16 v4, v18

    move-object v5, v9

    move v6, v8

    move/from16 v7, v21

    move/from16 v21, v8

    .end local v8    # "launcherUserId":I
    .local v21, "launcherUserId":I
    move/from16 v8, v16

    move-object/from16 v23, v9

    .end local v9    # "launcherPackage":Ljava/lang/String;
    .local v23, "launcherPackage":Ljava/lang/String;
    move-object/from16 v9, v22

    invoke-direct/range {v0 .. v9}, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinShortcutRequestInner;-><init>(Lcom/android/server/pm/ShortcutRequestPinProcessor;Landroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;Ljava/lang/String;IIZLcom/android/server/pm/ShortcutRequestPinProcessor$1;)V

    .line 376
    .local v0, "inner":Lcom/android/server/pm/ShortcutRequestPinProcessor$PinShortcutRequestInner;
    new-instance v1, Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-direct {v1, v0, v15}, Landroid/content/pm/LauncherApps$PinItemRequest;-><init>(Landroid/content/pm/IPinItemRequest;I)V

    return-object v1
.end method

.method private startRequestConfirmActivity(Landroid/content/ComponentName;ILandroid/content/pm/LauncherApps$PinItemRequest;I)Z
    .locals 8
    .param p1, "activity"    # Landroid/content/ComponentName;
    .param p2, "launcherUserId"    # I
    .param p3, "request"    # Landroid/content/pm/LauncherApps$PinItemRequest;
    .param p4, "requestType"    # I

    .line 389
    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    .line 390
    const-string v1, "android.content.pm.action.CONFIRM_PIN_SHORTCUT"

    goto :goto_0

    .line 391
    :cond_0
    const-string v1, "android.content.pm.action.CONFIRM_PIN_APPWIDGET"

    :goto_0
    nop

    .line 394
    .local v1, "action":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 395
    .local v2, "confirmIntent":Landroid/content/Intent;
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 396
    const-string v3, "android.content.pm.extra.PIN_ITEM_REQUEST"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 397
    const v3, 0x10008000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 399
    iget-object v3, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v3

    .line 401
    .local v3, "token":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    iget-object v5, v5, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    .line 402
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    .line 401
    invoke-virtual {v5, v2, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    iget-object v5, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v5, v3, v4}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 408
    nop

    .line 409
    return v0

    .line 407
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 403
    :catch_0
    move-exception v0

    .line 404
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string v5, "ShortcutService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to start activity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 405
    const/4 v5, 0x0

    .line 407
    iget-object v6, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v6, v3, v4}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 405
    return v5

    .line 407
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_1
    iget-object v5, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v5, v3, v4}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 408
    throw v0
.end method

.method private validateExistingShortcut(Landroid/content/pm/ShortcutInfo;)V
    .locals 3
    .param p1, "shortcutInfo"    # Landroid/content/pm/ShortcutInfo;

    .line 383
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shortcut ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " already exists but disabled."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 385
    return-void
.end method


# virtual methods
.method public createShortcutResultIntent(Landroid/content/pm/ShortcutInfo;I)Landroid/content/Intent;
    .locals 5
    .param p1, "inShortcut"    # Landroid/content/pm/ShortcutInfo;
    .param p2, "userId"    # I

    .line 277
    iget-object v0, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/ShortcutService;->getParentOrSelfUserId(I)I

    move-result v0

    .line 278
    .local v0, "launcherUserId":I
    iget-object v1, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/ShortcutService;->getDefaultLauncher(I)Landroid/content/ComponentName;

    move-result-object v1

    .line 279
    .local v1, "defaultLauncher":Landroid/content/ComponentName;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 280
    const-string v3, "ShortcutService"

    const-string v4, "Default launcher not found."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return-object v2

    .line 286
    :cond_0
    iget-object v3, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v3, v0}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 289
    nop

    .line 290
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    .line 289
    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/pm/ShortcutRequestPinProcessor;->requestPinShortcutLocked(Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;Landroid/util/Pair;)Landroid/content/pm/LauncherApps$PinItemRequest;

    move-result-object v2

    .line 291
    .local v2, "request":Landroid/content/pm/LauncherApps$PinItemRequest;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "android.content.pm.extra.PIN_ITEM_REQUEST"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v3

    return-object v3
.end method

.method public directPinShortcut(Lcom/android/server/pm/ShortcutRequestPinProcessor$PinShortcutRequestInner;)Z
    .locals 16
    .param p1, "request"    # Lcom/android/server/pm/ShortcutRequestPinProcessor$PinShortcutRequestInner;

    .line 450
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v3, v2, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinShortcutRequestInner;->shortcutOriginal:Landroid/content/pm/ShortcutInfo;

    .line 451
    .local v3, "original":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v4

    .line 452
    .local v4, "appUserId":I
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v5

    .line 453
    .local v5, "appPackageName":Ljava/lang/String;
    iget v6, v2, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinShortcutRequestInner;->launcherUserId:I

    .line 454
    .local v6, "launcherUserId":I
    iget-object v7, v2, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinShortcutRequestInner;->launcherPackage:Ljava/lang/String;

    .line 455
    .local v7, "launcherPackage":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v8

    .line 457
    .local v8, "shortcutId":Ljava/lang/String;
    const/4 v9, 0x0

    .line 459
    .local v9, "changedShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    iget-object v10, v1, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 460
    :try_start_0
    iget-object v0, v1, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, v4}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    move-result v0

    const/4 v11, 0x0

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    iget v12, v2, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinShortcutRequestInner;->launcherUserId:I

    .line 461
    invoke-virtual {v0, v12}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 466
    :cond_0
    iget-object v0, v1, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, v7, v4, v6}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v0

    move-object v12, v0

    .line 468
    .local v12, "launcher":Lcom/android/server/pm/ShortcutLauncher;
    invoke-virtual {v12}, Lcom/android/server/pm/ShortcutLauncher;->attemptToRestoreIfNeededAndSave()V

    .line 469
    invoke-virtual {v12, v3}, Lcom/android/server/pm/ShortcutLauncher;->hasPinned(Landroid/content/pm/ShortcutInfo;)Z

    move-result v0

    const/4 v13, 0x1

    if-eqz v0, :cond_1

    .line 473
    monitor-exit v10

    return v13

    .line 476
    :cond_1
    iget-object v0, v1, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, v5, v4}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v0

    move-object v14, v0

    .line 478
    .local v14, "ps":Lcom/android/server/pm/ShortcutPackage;
    invoke-virtual {v14, v8}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v15, v0

    .line 482
    .local v15, "current":Landroid/content/pm/ShortcutInfo;
    if-nez v15, :cond_2

    .line 484
    :try_start_1
    iget-object v0, v1, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, v3}, Lcom/android/server/pm/ShortcutService;->validateShortcutForPinRequest(Landroid/content/pm/ShortcutInfo;)V

    goto :goto_0

    .line 486
    :cond_2
    invoke-direct {v1, v15}, Lcom/android/server/pm/ShortcutRequestPinProcessor;->validateExistingShortcut(Landroid/content/pm/ShortcutInfo;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 491
    :goto_0
    nop

    .line 495
    if-nez v15, :cond_4

    .line 502
    :try_start_2
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_3

    .line 503
    iget-object v0, v1, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, v5}, Lcom/android/server/pm/ShortcutService;->getDummyMainActivity(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/pm/ShortcutInfo;->setActivity(Landroid/content/ComponentName;)V

    .line 505
    :cond_3
    invoke-virtual {v14, v3}, Lcom/android/server/pm/ShortcutPackage;->addOrReplaceDynamicShortcut(Landroid/content/pm/ShortcutInfo;)Z

    .line 514
    :cond_4
    invoke-virtual {v12, v5, v4, v8, v13}, Lcom/android/server/pm/ShortcutLauncher;->addPinnedShortcut(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 517
    if-nez v15, :cond_5

    .line 521
    invoke-virtual {v14, v8, v11}, Lcom/android/server/pm/ShortcutPackage;->deleteDynamicWithId(Ljava/lang/String;Z)Landroid/content/pm/ShortcutInfo;

    .line 524
    :cond_5
    invoke-virtual {v14}, Lcom/android/server/pm/ShortcutPackage;->adjustRanks()V

    .line 526
    invoke-virtual {v14, v8}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object v9, v0

    .line 527
    .end local v12    # "launcher":Lcom/android/server/pm/ShortcutLauncher;
    .end local v14    # "ps":Lcom/android/server/pm/ShortcutPackage;
    .end local v15    # "current":Landroid/content/pm/ShortcutInfo;
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 529
    iget-object v0, v1, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 530
    iget-object v0, v1, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    const/4 v10, 0x0

    invoke-virtual {v0, v5, v4, v9, v10}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V

    .line 532
    return v13

    .line 488
    .restart local v12    # "launcher":Lcom/android/server/pm/ShortcutLauncher;
    .restart local v14    # "ps":Lcom/android/server/pm/ShortcutPackage;
    .restart local v15    # "current":Landroid/content/pm/ShortcutInfo;
    :catch_0
    move-exception v0

    .line 489
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_3
    const-string v13, "ShortcutService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to pin shortcut: "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    monitor-exit v10

    const/4 v1, 0x0

    return v1

    .line 462
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v12    # "launcher":Lcom/android/server/pm/ShortcutLauncher;
    .end local v14    # "ps":Lcom/android/server/pm/ShortcutPackage;
    .end local v15    # "current":Landroid/content/pm/ShortcutInfo;
    :cond_6
    :goto_1
    const-string v0, "ShortcutService"

    const-string v1, "User is locked now."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    monitor-exit v10

    const/4 v1, 0x0

    return v1

    .line 527
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method getRequestPinConfirmationActivity(II)Landroid/util/Pair;
    .locals 5
    .param p1, "callingUserId"    # I
    .param p2, "requestType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Pair<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 421
    iget-object v0, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ShortcutService;->getParentOrSelfUserId(I)I

    move-result v0

    .line 422
    .local v0, "launcherUserId":I
    iget-object v1, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/ShortcutService;->getDefaultLauncher(I)Landroid/content/ComponentName;

    move-result-object v1

    .line 424
    .local v1, "defaultLauncher":Landroid/content/ComponentName;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 425
    const-string v3, "ShortcutService"

    const-string v4, "Default launcher not found."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    return-object v2

    .line 428
    :cond_0
    iget-object v3, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    .line 429
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 428
    invoke-virtual {v3, v4, v0, p2}, Lcom/android/server/pm/ShortcutService;->injectGetPinConfirmationActivity(Ljava/lang/String;II)Landroid/content/ComponentName;

    move-result-object v3

    .line 430
    .local v3, "activity":Landroid/content/ComponentName;
    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    :goto_0
    return-object v2
.end method

.method public isCallerUid(I)Z
    .locals 1
    .param p1, "uid"    # I

    .line 441
    iget-object v0, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRequestPinItemSupported(II)Z
    .locals 1
    .param p1, "callingUserId"    # I
    .param p2, "requestType"    # I

    .line 221
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutRequestPinProcessor;->getRequestPinConfirmationActivity(II)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public requestPinItemLocked(Landroid/content/pm/ShortcutInfo;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;ILandroid/content/IntentSender;)Z
    .locals 17
    .param p1, "inShortcut"    # Landroid/content/pm/ShortcutInfo;
    .param p2, "inAppWidget"    # Landroid/appwidget/AppWidgetProviderInfo;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "userId"    # I
    .param p5, "resultIntent"    # Landroid/content/IntentSender;

    .line 237
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    if-eqz v8, :cond_0

    .line 238
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    move v10, v0

    .line 239
    .local v10, "requestType":I
    nop

    .line 240
    move/from16 v11, p4

    invoke-virtual {v7, v11, v10}, Lcom/android/server/pm/ShortcutRequestPinProcessor;->getRequestPinConfirmationActivity(II)Landroid/util/Pair;

    move-result-object v12

    .line 243
    .local v12, "confirmActivity":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/ComponentName;Ljava/lang/Integer;>;"
    if-nez v12, :cond_1

    .line 244
    const-string v0, "ShortcutService"

    const-string v1, "Launcher doesn\'t support requestPinnedShortcut(). Shortcut not created."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const/4 v0, 0x0

    return v0

    .line 248
    :cond_1
    iget-object v0, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 252
    .local v13, "launcherUserId":I
    iget-object v0, v7, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, v13}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 256
    if-eqz v8, :cond_2

    .line 257
    move-object/from16 v14, p5

    invoke-direct {v7, v8, v14, v12}, Lcom/android/server/pm/ShortcutRequestPinProcessor;->requestPinShortcutLocked(Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;Landroid/util/Pair;)Landroid/content/pm/LauncherApps$PinItemRequest;

    move-result-object v0

    .local v0, "request":Landroid/content/pm/LauncherApps$PinItemRequest;
    goto :goto_1

    .line 259
    .end local v0    # "request":Landroid/content/pm/LauncherApps$PinItemRequest;
    :cond_2
    move-object/from16 v14, p5

    iget-object v0, v7, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    iget-object v1, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/content/ComponentName;

    .line 260
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 259
    invoke-virtual {v0, v1, v13}, Lcom/android/server/pm/ShortcutService;->injectGetPackageUid(Ljava/lang/String;I)I

    move-result v15

    .line 261
    .local v15, "launcherUid":I
    new-instance v6, Landroid/content/pm/LauncherApps$PinItemRequest;

    new-instance v5, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinAppWidgetRequestInner;

    const/16 v16, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, p5

    move v3, v15

    move-object/from16 v4, p2

    move-object v9, v5

    move-object/from16 v5, p3

    move-object v8, v6

    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinAppWidgetRequestInner;-><init>(Lcom/android/server/pm/ShortcutRequestPinProcessor;Landroid/content/IntentSender;ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;Lcom/android/server/pm/ShortcutRequestPinProcessor$1;)V

    const/4 v0, 0x2

    invoke-direct {v8, v9, v0}, Landroid/content/pm/LauncherApps$PinItemRequest;-><init>(Landroid/content/pm/IPinItemRequest;I)V

    move-object v0, v8

    .line 266
    .end local v15    # "launcherUid":I
    .restart local v0    # "request":Landroid/content/pm/LauncherApps$PinItemRequest;
    :goto_1
    iget-object v1, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/content/ComponentName;

    invoke-direct {v7, v1, v13, v0, v10}, Lcom/android/server/pm/ShortcutRequestPinProcessor;->startRequestConfirmActivity(Landroid/content/ComponentName;ILandroid/content/pm/LauncherApps$PinItemRequest;I)Z

    move-result v1

    return v1
.end method

.method public sendResultIntent(Landroid/content/IntentSender;Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "extras"    # Landroid/content/Intent;

    .line 437
    iget-object v0, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/ShortcutService;->injectSendIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V

    .line 438
    return-void
.end method
