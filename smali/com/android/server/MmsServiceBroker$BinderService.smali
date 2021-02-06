.class final Lcom/android/server/MmsServiceBroker$BinderService;
.super Lcom/android/internal/telephony/IMms$Stub;
.source "MmsServiceBroker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MmsServiceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# static fields
.field private static final PHONE_PACKAGE_NAME:Ljava/lang/String; = "com.android.phone"


# instance fields
.field final synthetic this$0:Lcom/android/server/MmsServiceBroker;


# direct methods
.method private constructor <init>(Lcom/android/server/MmsServiceBroker;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-direct {p0}, Lcom/android/internal/telephony/IMms$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/MmsServiceBroker;Lcom/android/server/MmsServiceBroker$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/MmsServiceBroker;
    .param p2, "x1"    # Lcom/android/server/MmsServiceBroker$1;

    .line 330
    invoke-direct {p0, p1}, Lcom/android/server/MmsServiceBroker$BinderService;-><init>(Lcom/android/server/MmsServiceBroker;)V

    return-void
.end method

.method private adjustUriForUserAndGrantPermission(Landroid/net/Uri;Ljava/lang/String;II)Landroid/net/Uri;
    .locals 16
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "permission"    # I
    .param p4, "subId"    # I

    .line 504
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 505
    .local v2, "grantIntent":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 506
    move/from16 v3, p3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 508
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 509
    .local v4, "callingUid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 510
    .local v5, "callingUserId":I
    if-eqz v5, :cond_0

    .line 511
    invoke-static {v0, v5}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    move-object v6, v0

    .end local p1    # "contentUri":Landroid/net/Uri;
    .local v0, "contentUri":Landroid/net/Uri;
    goto :goto_0

    .line 510
    .end local v0    # "contentUri":Landroid/net/Uri;
    .restart local p1    # "contentUri":Landroid/net/Uri;
    :cond_0
    move-object v6, v0

    .line 514
    .end local p1    # "contentUri":Landroid/net/Uri;
    .local v6, "contentUri":Landroid/net/Uri;
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 516
    .local v7, "token":J
    :try_start_0
    const-class v0, Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 517
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 518
    .local v0, "ugm":Lcom/android/server/uri/UriGrantsManagerInternal;
    const-string v9, "com.android.phone"

    const/4 v10, 0x0

    invoke-interface {v0, v2, v4, v9, v10}, Lcom/android/server/uri/UriGrantsManagerInternal;->checkGrantUriPermissionFromIntent(Landroid/content/Intent;ILjava/lang/String;I)Lcom/android/server/uri/NeededUriGrants;

    move-result-object v9

    .line 520
    .local v9, "needed":Lcom/android/server/uri/NeededUriGrants;
    const/4 v11, 0x0

    invoke-interface {v0, v9, v11}, Lcom/android/server/uri/UriGrantsManagerInternal;->grantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V

    .line 523
    new-instance v12, Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v13, p2

    :try_start_1
    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 524
    .local v12, "intent":Landroid/content/Intent;
    iget-object v14, v1, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    .line 525
    invoke-static {v14}, Lcom/android/server/MmsServiceBroker;->access$300(Lcom/android/server/MmsServiceBroker;)Landroid/content/Context;

    move-result-object v14

    const-string/jumbo v15, "phone"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/telephony/TelephonyManager;

    .line 526
    .local v14, "telephonyManager":Landroid/telephony/TelephonyManager;
    iget-object v15, v1, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 528
    move/from16 v11, p4

    :try_start_2
    invoke-static {v15, v11}, Lcom/android/server/MmsServiceBroker;->access$1100(Lcom/android/server/MmsServiceBroker;I)I

    move-result v15

    .line 527
    invoke-virtual {v14, v12, v15}, Landroid/telephony/TelephonyManager;->getCarrierPackageNamesForIntentAndPhone(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v15

    .line 529
    .local v15, "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v15, :cond_1

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v10

    const/4 v1, 0x1

    if-ne v10, v1, :cond_1

    .line 530
    nop

    .line 531
    const/4 v1, 0x0

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 530
    invoke-interface {v0, v2, v4, v10, v1}, Lcom/android/server/uri/UriGrantsManagerInternal;->checkGrantUriPermissionFromIntent(Landroid/content/Intent;ILjava/lang/String;I)Lcom/android/server/uri/NeededUriGrants;

    move-result-object v1

    .line 533
    .local v1, "carrierNeeded":Lcom/android/server/uri/NeededUriGrants;
    const/4 v10, 0x0

    invoke-interface {v0, v1, v10}, Lcom/android/server/uri/UriGrantsManagerInternal;->grantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 536
    .end local v0    # "ugm":Lcom/android/server/uri/UriGrantsManagerInternal;
    .end local v1    # "carrierNeeded":Lcom/android/server/uri/NeededUriGrants;
    .end local v9    # "needed":Lcom/android/server/uri/NeededUriGrants;
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v14    # "telephonyManager":Landroid/telephony/TelephonyManager;
    .end local v15    # "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 537
    nop

    .line 538
    return-object v6

    .line 536
    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object/from16 v13, p2

    :goto_1
    move/from16 v11, p4

    :goto_2
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 537
    throw v0
.end method


# virtual methods
.method public addMultimediaMessageDraft(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 458
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$500(Lcom/android/server/MmsServiceBroker;)Landroid/app/AppOpsManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    invoke-static {}, Lcom/android/server/MmsServiceBroker;->access$1000()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$600(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/IMms;->addMultimediaMessageDraft(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public addTextMessageDraft(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 446
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$500(Lcom/android/server/MmsServiceBroker;)Landroid/app/AppOpsManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    invoke-static {}, Lcom/android/server/MmsServiceBroker;->access$900()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$600(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/IMms;->addTextMessageDraft(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public archiveStoredConversation(Ljava/lang/String;JZ)Z
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "conversationId"    # J
    .param p4, "archived"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 435
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$500(Lcom/android/server/MmsServiceBroker;)Landroid/app/AppOpsManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    const/4 v0, 0x0

    return v0

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$600(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    .line 440
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IMms;->archiveStoredConversation(Ljava/lang/String;JZ)Z

    move-result v0

    .line 439
    return v0
.end method

.method public deleteStoredConversation(Ljava/lang/String;J)Z
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "conversationId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 414
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$500(Lcom/android/server/MmsServiceBroker;)Landroid/app/AppOpsManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    const/4 v0, 0x0

    return v0

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$600(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/IMms;->deleteStoredConversation(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public deleteStoredMessage(Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "messageUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 404
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$500(Lcom/android/server/MmsServiceBroker;)Landroid/app/AppOpsManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    const/4 v0, 0x0

    return v0

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$600(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/IMms;->deleteStoredMessage(Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public downloadMessage(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;J)V
    .locals 13
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "locationUrl"    # Ljava/lang/String;
    .param p4, "contentUri"    # Landroid/net/Uri;
    .param p5, "configOverrides"    # Landroid/os/Bundle;
    .param p6, "downloadedIntent"    # Landroid/app/PendingIntent;
    .param p7, "messageId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 357
    move-object v0, p0

    move-object v10, p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadMessage() by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MmsServiceBroker"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v1, v0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-static {v1}, Lcom/android/server/MmsServiceBroker;->access$300(Lcom/android/server/MmsServiceBroker;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "android.permission.RECEIVE_MMS"

    const-string v4, "Download MMS message"

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iget-object v1, v0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-static {v1}, Lcom/android/server/MmsServiceBroker;->access$500(Lcom/android/server/MmsServiceBroker;)Landroid/app/AppOpsManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/16 v4, 0x12

    invoke-virtual {v1, v4, v3, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 362
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not allowed to call downloadMessage()"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    return-void

    .line 365
    :cond_0
    const/4 v1, 0x3

    const-string v2, "android.service.carrier.CarrierMessagingService"

    move v11, p1

    move-object/from16 v3, p4

    invoke-direct {p0, v3, v2, v1, p1}, Lcom/android/server/MmsServiceBroker$BinderService;->adjustUriForUserAndGrantPermission(Landroid/net/Uri;Ljava/lang/String;II)Landroid/net/Uri;

    move-result-object v12

    .line 370
    .end local p4    # "contentUri":Landroid/net/Uri;
    .local v12, "contentUri":Landroid/net/Uri;
    iget-object v1, v0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-static {v1}, Lcom/android/server/MmsServiceBroker;->access$600(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    move-result-object v1

    move v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object v5, v12

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    invoke-interface/range {v1 .. v9}, Lcom/android/internal/telephony/IMms;->downloadMessage(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;J)V

    .line 372
    return-void
.end method

.method public getAutoPersisting()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 489
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$600(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IMms;->getAutoPersisting()Z

    move-result v0

    return v0
.end method

.method public importMultimediaMessage(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JZZ)Landroid/net/Uri;
    .locals 13
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "messageId"    # Ljava/lang/String;
    .param p4, "timestampSecs"    # J
    .param p6, "seen"    # Z
    .param p7, "read"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 391
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-static {v1}, Lcom/android/server/MmsServiceBroker;->access$500(Lcom/android/server/MmsServiceBroker;)Landroid/app/AppOpsManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0xf

    move-object v12, p1

    invoke-virtual {v1, v3, v2, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 395
    invoke-static {}, Lcom/android/server/MmsServiceBroker;->access$800()Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 397
    :cond_0
    iget-object v1, v0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-static {v1}, Lcom/android/server/MmsServiceBroker;->access$600(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    move-result-object v4

    move-object v5, p1

    move-object v6, p2

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-interface/range {v4 .. v11}, Lcom/android/internal/telephony/IMms;->importMultimediaMessage(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JZZ)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public importTextMessage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JZZ)Landroid/net/Uri;
    .locals 14
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "timestampMillis"    # J
    .param p7, "seen"    # Z
    .param p8, "read"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 377
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-static {v1}, Lcom/android/server/MmsServiceBroker;->access$500(Lcom/android/server/MmsServiceBroker;)Landroid/app/AppOpsManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0xf

    move-object v13, p1

    invoke-virtual {v1, v3, v2, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 381
    invoke-static {}, Lcom/android/server/MmsServiceBroker;->access$700()Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 383
    :cond_0
    iget-object v1, v0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-static {v1}, Lcom/android/server/MmsServiceBroker;->access$600(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    move-result-object v4

    move-object v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move-wide/from16 v9, p5

    move/from16 v11, p7

    move/from16 v12, p8

    invoke-interface/range {v4 .. v12}, Lcom/android/internal/telephony/IMms;->importTextMessage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JZZ)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public sendMessage(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;J)V
    .locals 13
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "contentUri"    # Landroid/net/Uri;
    .param p4, "locationUrl"    # Ljava/lang/String;
    .param p5, "configOverrides"    # Landroid/os/Bundle;
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "messageId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 338
    move-object v0, p0

    move-object v10, p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendMessage() by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MmsServiceBroker"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v1, v0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-static {v1}, Lcom/android/server/MmsServiceBroker;->access$300(Lcom/android/server/MmsServiceBroker;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "android.permission.SEND_SMS"

    const-string v4, "Send MMS message"

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object v1, v0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-static {v1}, Lcom/android/server/MmsServiceBroker;->access$500(Lcom/android/server/MmsServiceBroker;)Landroid/app/AppOpsManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/16 v4, 0x14

    invoke-virtual {v1, v4, v3, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not allowed to call sendMessage()"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    return-void

    .line 345
    :cond_0
    const/4 v1, 0x1

    const-string v2, "android.service.carrier.CarrierMessagingService"

    move v11, p1

    move-object/from16 v3, p3

    invoke-direct {p0, v3, v2, v1, p1}, Lcom/android/server/MmsServiceBroker$BinderService;->adjustUriForUserAndGrantPermission(Landroid/net/Uri;Ljava/lang/String;II)Landroid/net/Uri;

    move-result-object v12

    .line 349
    .end local p3    # "contentUri":Landroid/net/Uri;
    .local v12, "contentUri":Landroid/net/Uri;
    iget-object v1, v0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-static {v1}, Lcom/android/server/MmsServiceBroker;->access$600(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    move-result-object v1

    move v2, p1

    move-object v3, p2

    move-object v4, v12

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    invoke-interface/range {v1 .. v9}, Lcom/android/internal/telephony/IMms;->sendMessage(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;J)V

    .line 351
    return-void
.end method

.method public sendStoredMessage(ILjava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    .locals 7
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "messageUri"    # Landroid/net/Uri;
    .param p4, "configOverrides"    # Landroid/os/Bundle;
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 470
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$500(Lcom/android/server/MmsServiceBroker;)Landroid/app/AppOpsManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x14

    invoke-virtual {v0, v2, v1, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    return-void

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$600(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    move-result-object v1

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/telephony/IMms;->sendStoredMessage(ILjava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;)V

    .line 476
    return-void
.end method

.method public setAutoPersisting(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 480
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$500(Lcom/android/server/MmsServiceBroker;)Landroid/app/AppOpsManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    return-void

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$600(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/IMms;->setAutoPersisting(Ljava/lang/String;Z)V

    .line 485
    return-void
.end method

.method public updateStoredMessageStatus(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Z
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "messageUri"    # Landroid/net/Uri;
    .param p3, "statusValues"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 424
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$500(Lcom/android/server/MmsServiceBroker;)Landroid/app/AppOpsManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    const/4 v0, 0x0

    return v0

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$600(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    .line 429
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/IMms;->updateStoredMessageStatus(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Z

    move-result v0

    .line 428
    return v0
.end method
