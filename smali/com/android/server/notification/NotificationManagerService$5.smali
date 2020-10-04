.class Lcom/android/server/notification/NotificationManagerService$5;
.super Landroid/content/BroadcastReceiver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 1352
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 39
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1355
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 1356
    .local v3, "action":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 1357
    return-void

    .line 1360
    :cond_0
    const/4 v0, 0x0

    .line 1361
    .local v0, "queryRestart":Z
    const/4 v4, 0x0

    .line 1362
    .local v4, "queryRemove":Z
    const/4 v5, 0x0

    .line 1363
    .local v5, "packageChanged":Z
    const/4 v6, 0x1

    .line 1364
    .local v6, "cancelNotifications":Z
    const/4 v7, 0x0

    .line 1365
    .local v7, "hideNotifications":Z
    const/4 v8, 0x0

    .line 1366
    .local v8, "unhideNotifications":Z
    const/16 v20, 0x5

    .line 1369
    .local v20, "reason":I
    const/4 v9, 0x0

    .line 1372
    .local v9, "unsuspended":Z
    const-string v10, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const-string v11, "android.intent.action.DISTRACTING_PACKAGES_CHANGED"

    const-string v12, "android.intent.action.PACKAGES_UNSUSPENDED"

    const-string v13, "android.intent.action.PACKAGES_SUSPENDED"

    const-string v14, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    const-string v15, "android.intent.action.PACKAGE_RESTARTED"

    if-nez v10, :cond_4

    .line 1373
    const-string v10, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    move v4, v10

    if-nez v10, :cond_3

    .line 1374
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 1375
    const-string v10, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    move v5, v10

    if-nez v10, :cond_2

    .line 1376
    const-string v10, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    move v0, v10

    if-nez v10, :cond_3

    .line 1377
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 1378
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 1379
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 1380
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_0

    :cond_1
    move/from16 v35, v4

    move/from16 v21, v5

    move/from16 v33, v8

    move/from16 v34, v9

    goto/16 :goto_11

    .line 1375
    :cond_2
    move/from16 v21, v5

    move v5, v0

    goto :goto_1

    .line 1381
    :cond_3
    :goto_0
    move/from16 v21, v5

    move v5, v0

    goto :goto_1

    .line 1372
    :cond_4
    move/from16 v21, v5

    move v5, v0

    .line 1381
    .end local v0    # "queryRestart":Z
    .local v5, "queryRestart":Z
    .local v21, "packageChanged":Z
    :goto_1
    const/4 v10, -0x1

    const-string v0, "android.intent.extra.user_handle"

    move/from16 v16, v6

    .end local v6    # "cancelNotifications":Z
    .local v16, "cancelNotifications":Z
    invoke-virtual {v2, v0, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 1383
    .local v6, "changeUserId":I
    const/16 v17, 0x0

    .line 1384
    .local v17, "pkgList":[Ljava/lang/String;
    const/16 v18, 0x0

    .line 1385
    .local v18, "uidList":[I
    const/4 v10, 0x0

    if-eqz v4, :cond_5

    .line 1386
    const-string v0, "android.intent.extra.REPLACING"

    invoke-virtual {v2, v0, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    move v0, v10

    :goto_2
    move/from16 v33, v0

    .line 1387
    .local v33, "removingPackage":Z
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    const-string v10, "NotificationService"

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v35, v4

    .end local v4    # "queryRemove":Z
    .local v35, "queryRemove":Z
    const-string v4, "action="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " removing="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, v33

    .end local v33    # "removingPackage":Z
    .local v4, "removingPackage":Z
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .end local v35    # "queryRemove":Z
    .local v4, "queryRemove":Z
    .restart local v33    # "removingPackage":Z
    :cond_6
    move/from16 v35, v4

    move/from16 v4, v33

    .line 1388
    .end local v33    # "removingPackage":Z
    .local v4, "removingPackage":Z
    .restart local v35    # "queryRemove":Z
    :goto_3
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v14, "android.intent.extra.changed_uid_list"

    move/from16 v22, v7

    .end local v7    # "hideNotifications":Z
    .local v22, "hideNotifications":Z
    const-string v7, "android.intent.extra.changed_package_list"

    if-eqz v0, :cond_7

    .line 1389
    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1390
    .end local v17    # "pkgList":[Ljava/lang/String;
    .local v0, "pkgList":[Ljava/lang/String;
    invoke-virtual {v2, v14}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v7

    move-object v14, v7

    move/from16 v33, v8

    move/from16 v34, v9

    move/from16 v7, v16

    move/from16 v8, v22

    const/16 v16, 0x0

    .end local v18    # "uidList":[I
    .local v7, "uidList":[I
    goto/16 :goto_a

    .line 1391
    .end local v0    # "pkgList":[Ljava/lang/String;
    .end local v7    # "uidList":[I
    .restart local v17    # "pkgList":[Ljava/lang/String;
    .restart local v18    # "uidList":[I
    :cond_7
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1392
    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1393
    .end local v17    # "pkgList":[Ljava/lang/String;
    .restart local v0    # "pkgList":[Ljava/lang/String;
    invoke-virtual {v2, v14}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v7

    .line 1394
    .end local v18    # "uidList":[I
    .restart local v7    # "uidList":[I
    const/4 v11, 0x0

    .line 1395
    .end local v16    # "cancelNotifications":Z
    .local v11, "cancelNotifications":Z
    const/4 v12, 0x1

    move-object v14, v7

    move/from16 v33, v8

    move/from16 v34, v9

    move v7, v11

    move v8, v12

    const/16 v16, 0x0

    .end local v22    # "hideNotifications":Z
    .local v12, "hideNotifications":Z
    goto/16 :goto_a

    .line 1396
    .end local v0    # "pkgList":[Ljava/lang/String;
    .end local v7    # "uidList":[I
    .end local v11    # "cancelNotifications":Z
    .end local v12    # "hideNotifications":Z
    .restart local v16    # "cancelNotifications":Z
    .restart local v17    # "pkgList":[Ljava/lang/String;
    .restart local v18    # "uidList":[I
    .restart local v22    # "hideNotifications":Z
    :cond_8
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1397
    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1398
    .end local v17    # "pkgList":[Ljava/lang/String;
    .restart local v0    # "pkgList":[Ljava/lang/String;
    invoke-virtual {v2, v14}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v7

    .line 1399
    .end local v18    # "uidList":[I
    .restart local v7    # "uidList":[I
    const/4 v11, 0x0

    .line 1400
    .end local v16    # "cancelNotifications":Z
    .restart local v11    # "cancelNotifications":Z
    const/4 v8, 0x1

    .line 1402
    const/4 v9, 0x1

    move-object v14, v7

    move/from16 v33, v8

    move/from16 v34, v9

    move v7, v11

    move/from16 v8, v22

    const/16 v16, 0x0

    goto/16 :goto_a

    .line 1404
    .end local v0    # "pkgList":[Ljava/lang/String;
    .end local v7    # "uidList":[I
    .end local v11    # "cancelNotifications":Z
    .restart local v16    # "cancelNotifications":Z
    .restart local v17    # "pkgList":[Ljava/lang/String;
    .restart local v18    # "uidList":[I
    :cond_9
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1405
    nop

    .line 1406
    const-string v0, "android.intent.extra.distraction_restrictions"

    const/4 v11, 0x0

    invoke-virtual {v2, v0, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1408
    .local v0, "distractionRestrictions":I
    and-int/lit8 v11, v0, 0x2

    if-eqz v11, :cond_a

    .line 1410
    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1411
    .end local v17    # "pkgList":[Ljava/lang/String;
    .local v7, "pkgList":[Ljava/lang/String;
    invoke-virtual {v2, v14}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v11

    .line 1412
    .end local v18    # "uidList":[I
    .local v11, "uidList":[I
    const/4 v12, 0x0

    .line 1413
    .end local v16    # "cancelNotifications":Z
    .local v12, "cancelNotifications":Z
    const/4 v13, 0x1

    move-object v0, v7

    move-object v7, v11

    .end local v22    # "hideNotifications":Z
    .local v13, "hideNotifications":Z
    goto :goto_4

    .line 1415
    .end local v7    # "pkgList":[Ljava/lang/String;
    .end local v11    # "uidList":[I
    .end local v12    # "cancelNotifications":Z
    .end local v13    # "hideNotifications":Z
    .restart local v16    # "cancelNotifications":Z
    .restart local v17    # "pkgList":[Ljava/lang/String;
    .restart local v18    # "uidList":[I
    .restart local v22    # "hideNotifications":Z
    :cond_a
    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1416
    .end local v17    # "pkgList":[Ljava/lang/String;
    .restart local v7    # "pkgList":[Ljava/lang/String;
    invoke-virtual {v2, v14}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v11

    .line 1417
    .end local v18    # "uidList":[I
    .restart local v11    # "uidList":[I
    const/4 v12, 0x0

    .line 1418
    .end local v16    # "cancelNotifications":Z
    .restart local v12    # "cancelNotifications":Z
    const/4 v8, 0x1

    move-object v0, v7

    move-object v7, v11

    move/from16 v13, v22

    .line 1421
    .end local v11    # "uidList":[I
    .end local v22    # "hideNotifications":Z
    .local v0, "pkgList":[Ljava/lang/String;
    .local v7, "uidList":[I
    .restart local v13    # "hideNotifications":Z
    :goto_4
    move-object v14, v7

    move/from16 v33, v8

    move/from16 v34, v9

    move v7, v12

    move v8, v13

    const/16 v16, 0x0

    goto/16 :goto_a

    .end local v0    # "pkgList":[Ljava/lang/String;
    .end local v7    # "uidList":[I
    .end local v12    # "cancelNotifications":Z
    .end local v13    # "hideNotifications":Z
    .restart local v16    # "cancelNotifications":Z
    .restart local v17    # "pkgList":[Ljava/lang/String;
    .restart local v18    # "uidList":[I
    .restart local v22    # "hideNotifications":Z
    :cond_b
    const-string v7, "android.intent.extra.UID"

    if-eqz v5, :cond_c

    .line 1422
    const-string v0, "android.intent.extra.PACKAGES"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1423
    .end local v17    # "pkgList":[Ljava/lang/String;
    .restart local v0    # "pkgList":[Ljava/lang/String;
    const/4 v11, 0x1

    new-array v12, v11, [I

    const/4 v11, -0x1

    invoke-virtual {v2, v7, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const/4 v11, 0x0

    aput v7, v12, v11

    move-object v7, v12

    move-object v14, v7

    move/from16 v33, v8

    move/from16 v34, v9

    move/from16 v7, v16

    move/from16 v8, v22

    const/16 v16, 0x0

    .end local v18    # "uidList":[I
    .restart local v7    # "uidList":[I
    goto :goto_a

    .line 1425
    .end local v0    # "pkgList":[Ljava/lang/String;
    .end local v7    # "uidList":[I
    .restart local v17    # "pkgList":[Ljava/lang/String;
    .restart local v18    # "uidList":[I
    :cond_c
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    .line 1426
    .local v11, "uri":Landroid/net/Uri;
    if-nez v11, :cond_d

    .line 1427
    return-void

    .line 1429
    :cond_d
    invoke-virtual {v11}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v12

    .line 1430
    .local v12, "pkgName":Ljava/lang/String;
    if-nez v12, :cond_e

    .line 1431
    return-void

    .line 1433
    :cond_e
    if-eqz v21, :cond_12

    .line 1436
    :try_start_0
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1500(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 1438
    const/4 v13, -0x1

    if-eq v6, v13, :cond_f

    move v13, v6

    goto :goto_5

    .line 1439
    :cond_f
    const/4 v13, 0x0

    .line 1436
    :goto_5
    invoke-interface {v0, v12, v13}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1440
    .local v0, "enabled":I
    const/4 v13, 0x1

    if-eq v0, v13, :cond_11

    if-nez v0, :cond_10

    goto :goto_6

    :cond_10
    move/from16 v13, v16

    goto :goto_7

    .line 1442
    :cond_11
    :goto_6
    const/4 v13, 0x0

    .line 1452
    .end local v0    # "enabled":I
    .end local v16    # "cancelNotifications":Z
    .local v13, "cancelNotifications":Z
    :goto_7
    goto :goto_9

    .line 1450
    .end local v13    # "cancelNotifications":Z
    .restart local v16    # "cancelNotifications":Z
    :catch_0
    move-exception v0

    goto :goto_8

    .line 1444
    :catch_1
    move-exception v0

    .line 1447
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-boolean v13, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v13, :cond_12

    .line 1448
    const-string v13, "Exception trying to look up app enabled setting"

    invoke-static {v10, v13, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1454
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_12
    :goto_8
    move/from16 v13, v16

    .end local v16    # "cancelNotifications":Z
    .restart local v13    # "cancelNotifications":Z
    :goto_9
    const/4 v14, 0x1

    new-array v0, v14, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v12, v0, v16

    .line 1455
    .end local v17    # "pkgList":[Ljava/lang/String;
    .local v0, "pkgList":[Ljava/lang/String;
    move-object/from16 v17, v0

    .end local v0    # "pkgList":[Ljava/lang/String;
    .restart local v17    # "pkgList":[Ljava/lang/String;
    new-array v0, v14, [I

    const/4 v14, -0x1

    invoke-virtual {v2, v7, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    aput v7, v0, v16

    move-object v7, v0

    move-object v14, v7

    move/from16 v33, v8

    move/from16 v34, v9

    move v7, v13

    move-object/from16 v0, v17

    move/from16 v8, v22

    .line 1461
    .end local v9    # "unsuspended":Z
    .end local v11    # "uri":Landroid/net/Uri;
    .end local v12    # "pkgName":Ljava/lang/String;
    .end local v13    # "cancelNotifications":Z
    .end local v17    # "pkgList":[Ljava/lang/String;
    .end local v18    # "uidList":[I
    .end local v22    # "hideNotifications":Z
    .restart local v0    # "pkgList":[Ljava/lang/String;
    .local v7, "cancelNotifications":Z
    .local v8, "hideNotifications":Z
    .local v14, "uidList":[I
    .local v33, "unhideNotifications":Z
    .local v34, "unsuspended":Z
    :goto_a
    if-eqz v0, :cond_13

    array-length v9, v0

    if-lez v9, :cond_13

    if-nez v7, :cond_13

    if-nez v8, :cond_13

    if-eqz v33, :cond_13

    if-eqz v34, :cond_13

    .line 1464
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "only trigger unhide once: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v12, v0

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x6

    invoke-static {v11}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v9, v0}, Lcom/android/server/notification/NotificationManagerService;->unhideNotificationsForPackages([Ljava/lang/String;)V

    .line 1466
    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v9}, Lcom/android/server/notification/NotificationManagerService;->access$1600(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v9

    invoke-virtual {v9, v4, v6, v0, v14}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->scheduleOnPackageChanged(ZI[Ljava/lang/String;[I)V

    .line 1467
    return-void

    .line 1471
    :cond_13
    if-eqz v0, :cond_1c

    array-length v9, v0

    if-lez v9, :cond_1c

    .line 1472
    array-length v13, v0

    move/from16 v12, v16

    :goto_b
    if-ge v12, v13, :cond_1b

    aget-object v36, v0, v12

    .line 1473
    .local v36, "pkgName":Ljava/lang/String;
    if-eqz v7, :cond_17

    .line 1480
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    .line 1481
    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$1700()I

    move-result v23

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$1800()I

    move-result v24

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    if-nez v5, :cond_14

    const/16 v29, 0x1

    goto :goto_c

    :cond_14
    move/from16 v29, v16

    :goto_c
    const/16 v31, 0x14

    const/16 v32, 0x0

    move-object/from16 v22, v9

    move-object/from16 v25, v36

    move/from16 v30, v6

    invoke-virtual/range {v22 .. v32}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    move/from16 v27, v12

    move/from16 v28, v13

    move-object/from16 v38, v14

    move-object/from16 v29, v15

    move/from16 v26, v16

    const/16 v25, 0x1

    goto/16 :goto_f

    .line 1484
    :cond_15
    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$1700()I

    move-result v11

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$1800()I

    move-result v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x0

    if-nez v5, :cond_16

    const/16 v23, 0x1

    goto :goto_d

    :cond_16
    move/from16 v23, v16

    :goto_d
    const/16 v24, 0x0

    move-object/from16 v37, v10

    move/from16 v26, v16

    const/16 v25, 0x1

    move v10, v11

    move/from16 v11, v17

    move/from16 v27, v12

    move-object/from16 v12, v36

    move/from16 v28, v13

    move-object/from16 v13, v18

    move-object/from16 v38, v14

    .end local v14    # "uidList":[I
    .local v38, "uidList":[I
    move/from16 v14, v19

    move-object/from16 v29, v15

    move/from16 v15, v22

    move/from16 v16, v23

    move/from16 v17, v6

    move/from16 v18, v20

    move-object/from16 v19, v24

    invoke-virtual/range {v9 .. v19}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    move-object/from16 v10, v37

    goto :goto_f

    .line 1488
    .end local v38    # "uidList":[I
    .restart local v14    # "uidList":[I
    :cond_17
    move-object/from16 v37, v10

    move/from16 v27, v12

    move/from16 v28, v13

    move-object/from16 v38, v14

    move-object/from16 v29, v15

    move/from16 v26, v16

    const/16 v25, 0x1

    .end local v14    # "uidList":[I
    .restart local v38    # "uidList":[I
    if-eqz v8, :cond_18

    .line 1489
    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v9, v0}, Lcom/android/server/notification/NotificationManagerService;->hideNotificationsForPackages([Ljava/lang/String;)V

    move-object/from16 v10, v37

    goto :goto_f

    .line 1490
    :cond_18
    if-eqz v33, :cond_1a

    .line 1493
    sget-boolean v9, Lcom/android/server/notification/NotificationManagerService;->DBG_ONEPLUS:Z

    if-eqz v9, :cond_19

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "unhideNotifications: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v10, v37

    invoke-static {v10, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :cond_19
    move-object/from16 v10, v37

    .line 1495
    :goto_e
    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v9, v0}, Lcom/android/server/notification/NotificationManagerService;->unhideNotificationsForPackages([Ljava/lang/String;)V

    goto :goto_f

    .line 1490
    :cond_1a
    move-object/from16 v10, v37

    .line 1472
    .end local v36    # "pkgName":Ljava/lang/String;
    :goto_f
    add-int/lit8 v12, v27, 0x1

    move/from16 v16, v26

    move/from16 v13, v28

    move-object/from16 v15, v29

    move-object/from16 v14, v38

    goto/16 :goto_b

    .end local v38    # "uidList":[I
    .restart local v14    # "uidList":[I
    :cond_1b
    move-object/from16 v38, v14

    .end local v14    # "uidList":[I
    .restart local v38    # "uidList":[I
    goto :goto_10

    .line 1471
    .end local v38    # "uidList":[I
    .restart local v14    # "uidList":[I
    :cond_1c
    move-object/from16 v38, v14

    .line 1501
    .end local v14    # "uidList":[I
    .restart local v38    # "uidList":[I
    :goto_10
    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v9}, Lcom/android/server/notification/NotificationManagerService;->access$1600(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v9

    move-object/from16 v10, v38

    .end local v38    # "uidList":[I
    .local v10, "uidList":[I
    invoke-virtual {v9, v4, v6, v0, v10}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->scheduleOnPackageChanged(ZI[Ljava/lang/String;[I)V

    move v0, v5

    move v6, v7

    move v7, v8

    .line 1503
    .end local v4    # "removingPackage":Z
    .end local v5    # "queryRestart":Z
    .end local v8    # "hideNotifications":Z
    .end local v10    # "uidList":[I
    .local v0, "queryRestart":Z
    .local v6, "cancelNotifications":Z
    .local v7, "hideNotifications":Z
    :goto_11
    return-void
.end method
