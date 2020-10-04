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

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    iput-object p1, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    .line 215
    iput-object p2, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mLock:Ljava/lang/Object;

    .line 216
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

    .line 298
    .local p3, "confirmActivity":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/ComponentName;Ljava/lang/Integer;>;"
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p3

    iget-object v0, v10, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    .line 299
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v2

    .line 298
    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v13

    .line 301
    .local v13, "ps":Lcom/android/server/pm/ShortcutPackage;
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v14

    .line 302
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

    .line 303
    .local v16, "existsAlready":Z
    if-eqz v16, :cond_1

    invoke-virtual {v14}, Landroid/content/pm/ShortcutInfo;->isVisibleToPublisher()Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v15

    :cond_1
    move/from16 v17, v0

    .line 314
    .local v17, "existingIsVisible":Z
    iget-object v0, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 315
    .local v9, "launcherPackage":Ljava/lang/String;
    iget-object v0, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 317
    .local v8, "launcherUserId":I
    move-object/from16 v0, p2

    .line 319
    .local v0, "resultIntentToSend":Landroid/content/IntentSender;
    if-eqz v16, :cond_4

    .line 320
    invoke-direct {v10, v14}, Lcom/android/server/pm/ShortcutRequestPinProcessor;->validateExistingShortcut(Landroid/content/pm/ShortcutInfo;)V

    .line 322
    iget-object v1, v10, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    .line 323
    invoke-virtual {v14}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v2

    .line 322
    invoke-virtual {v1, v9, v2, v8}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v1

    .line 323
    invoke-virtual {v1, v14}, Lcom/android/server/pm/ShortcutLauncher;->hasPinned(Landroid/content/pm/ShortcutInfo;)Z

    move-result v1

    .line 324
    .local v1, "isAlreadyPinned":Z
    if-eqz v1, :cond_2

    .line 327
    const/4 v2, 0x0

    move-object/from16 v7, p2

    invoke-virtual {v10, v7, v2}, Lcom/android/server/pm/ShortcutRequestPinProcessor;->sendResultIntent(Landroid/content/IntentSender;Landroid/content/Intent;)V

    .line 330
    const/4 v0, 0x0

    goto :goto_1

    .line 324
    :cond_2
    move-object/from16 v7, p2

    .line 335
    :goto_1
    const/16 v2, 0x1b

    invoke-virtual {v14, v2}, Landroid/content/pm/ShortcutInfo;->clone(I)Landroid/content/pm/ShortcutInfo;

    move-result-object v2

    .line 337
    .local v2, "shortcutForLauncher":Landroid/content/pm/ShortcutInfo;
    if-nez v1, :cond_3

    .line 339
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 341
    .end local v1    # "isAlreadyPinned":Z
    :cond_3
    move-object/from16 v19, v0

    move-object/from16 v18, v2

    goto :goto_2

    .line 345
    .end local v2    # "shortcutForLauncher":Landroid/content/pm/ShortcutInfo;
    :cond_4
    move-object/from16 v7, p2

    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_5

    .line 346
    iget-object v1, v10, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    .line 347
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v3

    .line 346
    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectGetDefaultMainActivity(Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/content/pm/ShortcutInfo;->setActivity(Landroid/content/ComponentName;)V

    .line 351
    :cond_5
    iget-object v1, v10, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, v11}, Lcom/android/server/pm/ShortcutService;->validateShortcutForPinRequest(Landroid/content/pm/ShortcutInfo;)V

    .line 354
    iget-object v1, v10, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    .line 355
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v3

    .line 354
    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectGetResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/content/pm/ShortcutInfo;->resolveResourceStrings(Landroid/content/res/Resources;)V

    .line 360
    const/16 v1, 0x1a

    invoke-virtual {v11, v1}, Landroid/content/pm/ShortcutInfo;->clone(I)Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    move-object/from16 v19, v0

    move-object/from16 v18, v1

    .line 368
    .end local v0    # "resultIntentToSend":Landroid/content/IntentSender;
    .local v18, "shortcutForLauncher":Landroid/content/pm/ShortcutInfo;
    .local v19, "resultIntentToSend":Landroid/content/IntentSender;
    :goto_2
    new-instance v20, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinShortcutRequestInner;

    iget-object v0, v10, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    .line 371
    invoke-virtual {v0, v9, v8}, Lcom/android/server/pm/ShortcutService;->injectGetPackageUid(Ljava/lang/String;I)I

    move-result v21

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v18

    move-object/from16 v4, v19

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

    .line 374
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

    .line 387
    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    .line 388
    const-string v1, "android.content.pm.action.CONFIRM_PIN_SHORTCUT"

    goto :goto_0

    .line 389
    :cond_0
    const-string v1, "android.content.pm.action.CONFIRM_PIN_APPWIDGET"

    :goto_0
    nop

    .line 392
    .local v1, "action":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 393
    .local v2, "confirmIntent":Landroid/content/Intent;
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 394
    const-string v3, "android.content.pm.extra.PIN_ITEM_REQUEST"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 395
    const v3, 0x10008000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 397
    iget-object v3, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v3

    .line 399
    .local v3, "token":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    iget-object v5, v5, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    .line 400
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    .line 399
    invoke-virtual {v5, v2, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 405
    iget-object v5, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v5, v3, v4}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 406
    nop

    .line 407
    return v0

    .line 405
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 401
    :catch_0
    move-exception v0

    .line 402
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

    .line 403
    const/4 v5, 0x0

    .line 405
    iget-object v6, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v6, v3, v4}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 403
    return v5

    .line 405
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_1
    iget-object v5, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v5, v3, v4}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    throw v0
.end method

.method private validateExistingShortcut(Landroid/content/pm/ShortcutInfo;)V
    .locals 3
    .param p1, "shortcutInfo"    # Landroid/content/pm/ShortcutInfo;

    .line 381
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

    .line 383
    return-void
.end method


# virtual methods
.method public createShortcutResultIntent(Landroid/content/pm/ShortcutInfo;I)Landroid/content/Intent;
    .locals 5
    .param p1, "inShortcut"    # Landroid/content/pm/ShortcutInfo;
    .param p2, "userId"    # I

    .line 275
    iget-object v0, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/ShortcutService;->getParentOrSelfUserId(I)I

    move-result v0

    .line 276
    .local v0, "launcherUserId":I
    iget-object v1, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/ShortcutService;->getDefaultLauncher(I)Landroid/content/ComponentName;

    move-result-object v1

    .line 277
    .local v1, "defaultLauncher":Landroid/content/ComponentName;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 278
    const-string v3, "ShortcutService"

    const-string v4, "Default launcher not found."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    return-object v2

    .line 284
    :cond_0
    iget-object v3, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v3, v0}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 287
    nop

    .line 288
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    .line 287
    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/pm/ShortcutRequestPinProcessor;->requestPinShortcutLocked(Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;Landroid/util/Pair;)Landroid/content/pm/LauncherApps$PinItemRequest;

    move-result-object v2

    .line 289
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

    .line 448
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v3, v2, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinShortcutRequestInner;->shortcutOriginal:Landroid/content/pm/ShortcutInfo;

    .line 449
    .local v3, "original":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v4

    .line 450
    .local v4, "appUserId":I
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v5

    .line 451
    .local v5, "appPackageName":Ljava/lang/String;
    iget v6, v2, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinShortcutRequestInner;->launcherUserId:I

    .line 452
    .local v6, "launcherUserId":I
    iget-object v7, v2, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinShortcutRequestInner;->launcherPackage:Ljava/lang/String;

    .line 453
    .local v7, "launcherPackage":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v8

    .line 455
    .local v8, "shortcutId":Ljava/lang/String;
    iget-object v9, v1, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 456
    :try_start_0
    iget-object v0, v1, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, v4}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    move-result v0

    const/4 v10, 0x0

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    iget v11, v2, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinShortcutRequestInner;->launcherUserId:I

    .line 457
    invoke-virtual {v0, v11}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 462
    :cond_0
    iget-object v0, v1, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, v7, v4, v6}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v0

    move-object v11, v0

    .line 464
    .local v11, "launcher":Lcom/android/server/pm/ShortcutLauncher;
    invoke-virtual {v11}, Lcom/android/server/pm/ShortcutLauncher;->attemptToRestoreIfNeededAndSave()V

    .line 465
    invoke-virtual {v11, v3}, Lcom/android/server/pm/ShortcutLauncher;->hasPinned(Landroid/content/pm/ShortcutInfo;)Z

    move-result v0

    const/4 v12, 0x1

    if-eqz v0, :cond_1

    .line 469
    monitor-exit v9

    return v12

    .line 472
    :cond_1
    iget-object v0, v1, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, v5, v4}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v0

    move-object v13, v0

    .line 474
    .local v13, "ps":Lcom/android/server/pm/ShortcutPackage;
    invoke-virtual {v13, v8}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v14, v0

    .line 478
    .local v14, "current":Landroid/content/pm/ShortcutInfo;
    if-nez v14, :cond_2

    .line 480
    :try_start_1
    iget-object v0, v1, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, v3}, Lcom/android/server/pm/ShortcutService;->validateShortcutForPinRequest(Landroid/content/pm/ShortcutInfo;)V

    goto :goto_0

    .line 482
    :cond_2
    invoke-direct {v1, v14}, Lcom/android/server/pm/ShortcutRequestPinProcessor;->validateExistingShortcut(Landroid/content/pm/ShortcutInfo;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 487
    :goto_0
    nop

    .line 491
    if-nez v14, :cond_4

    .line 498
    :try_start_2
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_3

    .line 499
    iget-object v0, v1, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, v5}, Lcom/android/server/pm/ShortcutService;->getDummyMainActivity(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/pm/ShortcutInfo;->setActivity(Landroid/content/ComponentName;)V

    .line 501
    :cond_3
    invoke-virtual {v13, v3}, Lcom/android/server/pm/ShortcutPackage;->addOrReplaceDynamicShortcut(Landroid/content/pm/ShortcutInfo;)V

    .line 509
    :cond_4
    invoke-virtual {v11, v5, v4, v8, v12}, Lcom/android/server/pm/ShortcutLauncher;->addPinnedShortcut(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 512
    if-nez v14, :cond_5

    .line 516
    invoke-virtual {v13, v8, v10}, Lcom/android/server/pm/ShortcutPackage;->deleteDynamicWithId(Ljava/lang/String;Z)Z

    .line 519
    :cond_5
    invoke-virtual {v13}, Lcom/android/server/pm/ShortcutPackage;->adjustRanks()V

    .line 520
    .end local v11    # "launcher":Lcom/android/server/pm/ShortcutLauncher;
    .end local v13    # "ps":Lcom/android/server/pm/ShortcutPackage;
    .end local v14    # "current":Landroid/content/pm/ShortcutInfo;
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 522
    iget-object v0, v1, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 523
    iget-object v0, v1, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, v5, v4}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Ljava/lang/String;I)V

    .line 525
    return v12

    .line 484
    .restart local v11    # "launcher":Lcom/android/server/pm/ShortcutLauncher;
    .restart local v13    # "ps":Lcom/android/server/pm/ShortcutPackage;
    .restart local v14    # "current":Landroid/content/pm/ShortcutInfo;
    :catch_0
    move-exception v0

    .line 485
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_3
    const-string v12, "ShortcutService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to pin shortcut: "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    monitor-exit v9

    const/4 v9, 0x0

    return v9

    .line 458
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v11    # "launcher":Lcom/android/server/pm/ShortcutLauncher;
    .end local v13    # "ps":Lcom/android/server/pm/ShortcutPackage;
    .end local v14    # "current":Landroid/content/pm/ShortcutInfo;
    :cond_6
    :goto_1
    const-string v0, "ShortcutService"

    const-string v10, "User is locked now."

    invoke-static {v0, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    monitor-exit v9

    const/4 v9, 0x0

    return v9

    .line 520
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method getRequestPinConfirmationActivity(II)Landroid/util/Pair;
    .locals 5
    .param p1, "callingUserId"    # I
    .param p2, "requestType"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Pair<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 419
    iget-object v0, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ShortcutService;->getParentOrSelfUserId(I)I

    move-result v0

    .line 420
    .local v0, "launcherUserId":I
    iget-object v1, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/ShortcutService;->getDefaultLauncher(I)Landroid/content/ComponentName;

    move-result-object v1

    .line 422
    .local v1, "defaultLauncher":Landroid/content/ComponentName;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 423
    const-string v3, "ShortcutService"

    const-string v4, "Default launcher not found."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    return-object v2

    .line 426
    :cond_0
    iget-object v3, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    .line 427
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 426
    invoke-virtual {v3, v4, v0, p2}, Lcom/android/server/pm/ShortcutService;->injectGetPinConfirmationActivity(Ljava/lang/String;II)Landroid/content/ComponentName;

    move-result-object v3

    .line 428
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

    .line 439
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

    .line 219
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

    .line 235
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    if-eqz v8, :cond_0

    .line 236
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    move v10, v0

    .line 237
    .local v10, "requestType":I
    nop

    .line 238
    move/from16 v11, p4

    invoke-virtual {v7, v11, v10}, Lcom/android/server/pm/ShortcutRequestPinProcessor;->getRequestPinConfirmationActivity(II)Landroid/util/Pair;

    move-result-object v12

    .line 241
    .local v12, "confirmActivity":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/ComponentName;Ljava/lang/Integer;>;"
    if-nez v12, :cond_1

    .line 242
    const-string v0, "ShortcutService"

    const-string v1, "Launcher doesn\'t support requestPinnedShortcut(). Shortcut not created."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const/4 v0, 0x0

    return v0

    .line 246
    :cond_1
    iget-object v0, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 250
    .local v13, "launcherUserId":I
    iget-object v0, v7, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, v13}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 254
    if-eqz v8, :cond_2

    .line 255
    move-object/from16 v14, p5

    invoke-direct {v7, v8, v14, v12}, Lcom/android/server/pm/ShortcutRequestPinProcessor;->requestPinShortcutLocked(Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;Landroid/util/Pair;)Landroid/content/pm/LauncherApps$PinItemRequest;

    move-result-object v0

    .local v0, "request":Landroid/content/pm/LauncherApps$PinItemRequest;
    goto :goto_1

    .line 257
    .end local v0    # "request":Landroid/content/pm/LauncherApps$PinItemRequest;
    :cond_2
    move-object/from16 v14, p5

    iget-object v0, v7, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    iget-object v1, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/content/ComponentName;

    .line 258
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 257
    invoke-virtual {v0, v1, v13}, Lcom/android/server/pm/ShortcutService;->injectGetPackageUid(Ljava/lang/String;I)I

    move-result v15

    .line 259
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

    .line 264
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

    .line 435
    iget-object v0, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/ShortcutService;->injectSendIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V

    .line 436
    return-void
.end method
