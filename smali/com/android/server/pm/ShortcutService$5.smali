.class Lcom/android/server/pm/ShortcutService$5;
.super Landroid/content/BroadcastReceiver;
.source "ShortcutService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShortcutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/ShortcutService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/ShortcutService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/ShortcutService;

    .line 3398
    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 3401
    const-string v0, "android.intent.extra.user_handle"

    const/16 v1, -0x2710

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 3402
    .local v0, "userId":I
    if-ne v0, v1, :cond_0

    .line 3403
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Intent broadcast does not contain user handle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ShortcutService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3404
    return-void

    .line 3407
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 3411
    .local v1, "action":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v2}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v2

    .line 3413
    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v4}, Lcom/android/server/pm/ShortcutService;->access$200(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3414
    :try_start_1
    iget-object v5, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v5, v0}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 3419
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3473
    iget-object v4, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3419
    return-void

    .line 3424
    :cond_1
    :try_start_2
    iget-object v5, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v5, v0}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v5

    .line 3425
    .local v5, "user":Lcom/android/server/pm/ShortcutUser;
    invoke-virtual {v5}, Lcom/android/server/pm/ShortcutUser;->clearLauncher()V

    .line 3426
    .end local v5    # "user":Lcom/android/server/pm/ShortcutUser;
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3427
    :try_start_3
    const-string v4, "android.intent.action.ACTION_PREFERRED_ACTIVITY_CHANGED"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v4, :cond_4

    .line 3428
    iget-object v4, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v4, v0}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v4

    .line 3429
    .local v4, "user":Lcom/android/server/pm/ShortcutUser;
    invoke-virtual {v4}, Lcom/android/server/pm/ShortcutUser;->getLastKnownLauncher()Landroid/content/ComponentName;

    move-result-object v8

    .line 3430
    .local v8, "lastLauncher":Landroid/content/ComponentName;
    iget-object v9, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v9, v0}, Lcom/android/server/pm/ShortcutService;->getDefaultLauncher(I)Landroid/content/ComponentName;

    move-result-object v9

    .line 3431
    .local v9, "currentLauncher":Landroid/content/ComponentName;
    if-eqz v9, :cond_2

    invoke-virtual {v9, v8}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 3433
    :cond_2
    iget-object v10, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v10}, Lcom/android/server/pm/ShortcutService;->access$1300(Lcom/android/server/pm/ShortcutService;)Lcom/android/server/uri/UriGrantsManagerInternal;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v11}, Lcom/android/server/pm/ShortcutService;->access$900(Lcom/android/server/pm/ShortcutService;)Landroid/os/IBinder;

    move-result-object v11

    invoke-interface {v10, v11, v6, v5, v7}, Lcom/android/server/uri/UriGrantsManagerInternal;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3473
    :cond_3
    iget-object v5, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v5, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3436
    return-void

    .line 3439
    .end local v4    # "user":Lcom/android/server/pm/ShortcutUser;
    .end local v8    # "lastLauncher":Landroid/content/ComponentName;
    .end local v9    # "currentLauncher":Landroid/content/ComponentName;
    :cond_4
    :try_start_4
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 3440
    .local v4, "intentUri":Landroid/net/Uri;
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 3441
    :cond_5
    nop

    :goto_0
    nop

    .line 3442
    .local v6, "packageName":Ljava/lang/String;
    if-nez v6, :cond_6

    .line 3443
    const-string v5, "ShortcutService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Intent broadcast does not contain package name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3473
    iget-object v5, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v5, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3444
    return-void

    .line 3447
    :cond_6
    :try_start_5
    const-string v8, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v8, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 3449
    .local v8, "replacing":Z
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v9

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    sparse-switch v9, :sswitch_data_0

    :cond_7
    goto :goto_1

    :sswitch_0
    const-string v9, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    move v5, v7

    goto :goto_1

    :sswitch_1
    const-string v7, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    move v5, v12

    goto :goto_1

    :sswitch_2
    const-string v7, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    move v5, v10

    goto :goto_1

    :sswitch_3
    const-string v7, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    move v5, v11

    :goto_1
    if-eqz v5, :cond_b

    if-eq v5, v12, :cond_a

    if-eq v5, v11, :cond_9

    if-eq v5, v10, :cond_8

    goto :goto_2

    .line 3467
    :cond_8
    iget-object v5, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v5, v6, v0}, Lcom/android/server/pm/ShortcutService;->access$1800(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    goto :goto_2

    .line 3463
    :cond_9
    iget-object v5, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v5, v6, v0}, Lcom/android/server/pm/ShortcutService;->access$1700(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    .line 3465
    goto :goto_2

    .line 3458
    :cond_a
    if-nez v8, :cond_d

    .line 3459
    iget-object v5, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v5, v6, v0}, Lcom/android/server/pm/ShortcutService;->access$1600(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    goto :goto_2

    .line 3451
    :cond_b
    if-eqz v8, :cond_c

    .line 3452
    iget-object v5, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v5, v6, v0}, Lcom/android/server/pm/ShortcutService;->access$1400(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    goto :goto_2

    .line 3454
    :cond_c
    iget-object v5, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v5, v6, v0}, Lcom/android/server/pm/ShortcutService;->access$1500(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3456
    goto :goto_2

    .line 3426
    .end local v4    # "intentUri":Landroid/net/Uri;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v8    # "replacing":Z
    :catchall_0
    move-exception v5

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .end local v0    # "userId":I
    .end local v1    # "action":Ljava/lang/String;
    .end local v2    # "token":J
    .end local p0    # "this":Lcom/android/server/pm/ShortcutService$5;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "intent":Landroid/content/Intent;
    :try_start_7
    throw v5
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 3473
    .restart local v0    # "userId":I
    .restart local v1    # "action":Ljava/lang/String;
    .restart local v2    # "token":J
    .restart local p0    # "this":Lcom/android/server/pm/ShortcutService$5;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "intent":Landroid/content/Intent;
    :catchall_1
    move-exception v4

    goto :goto_3

    .line 3470
    :catch_0
    move-exception v4

    .line 3471
    .local v4, "e":Ljava/lang/Exception;
    :try_start_8
    iget-object v5, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    const-string v6, "Exception in mPackageMonitor.onReceive"

    invoke-virtual {v5, v6, v4}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 3473
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_d
    :goto_2
    iget-object v4, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3474
    nop

    .line 3475
    return-void

    .line 3473
    :goto_3
    iget-object v5, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v5, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3474
    throw v4

    nop

    :sswitch_data_0
    .sparse-switch
        0xa480416 -> :sswitch_3
        0xff13fb5 -> :sswitch_2
        0x1f50b9c2 -> :sswitch_1
        0x5c1076e2 -> :sswitch_0
    .end sparse-switch
.end method
