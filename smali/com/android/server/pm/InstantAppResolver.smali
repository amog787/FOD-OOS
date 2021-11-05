.class public abstract Lcom/android/server/pm/InstantAppResolver;
.super Ljava/lang/Object;
.source "InstantAppResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/InstantAppResolver$ResolutionStatus;
    }
.end annotation


# static fields
.field private static final DEBUG_INSTANT:Z

.field private static final RESOLUTION_BIND_TIMEOUT:I = 0x2

.field private static final RESOLUTION_CALL_TIMEOUT:I = 0x3

.field private static final RESOLUTION_FAILURE:I = 0x1

.field private static final RESOLUTION_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PackageManager"

.field private static sMetricsLogger:Lcom/android/internal/logging/MetricsLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/pm/InstantAppResolver;->DEBUG_INSTANT:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[I)Landroid/content/pm/AuxiliaryResolveInfo;
    .locals 1
    .param p0, "x0"    # Ljava/util/List;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # [I

    .line 71
    invoke-static/range {p0 .. p6}, Lcom/android/server/pm/InstantAppResolver;->filterInstantAppIntent(Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[I)Landroid/content/pm/AuxiliaryResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(IJLjava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # I

    .line 71
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/pm/InstantAppResolver;->logMetrics(IJLjava/lang/String;I)V

    return-void
.end method

.method public static buildEphemeralInstallerIntent(Landroid/content/Intent;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILandroid/content/ComponentName;Ljava/lang/String;ZLjava/util/List;)Landroid/content/Intent;
    .locals 25
    .param p0, "origIntent"    # Landroid/content/Intent;
    .param p1, "sanitizedIntent"    # Landroid/content/Intent;
    .param p2, "failureIntent"    # Landroid/content/Intent;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "callingFeatureId"    # Ljava/lang/String;
    .param p5, "verificationBundle"    # Landroid/os/Bundle;
    .param p6, "resolvedType"    # Ljava/lang/String;
    .param p7, "userId"    # I
    .param p8, "installFailureActivity"    # Landroid/content/ComponentName;
    .param p9, "token"    # Ljava/lang/String;
    .param p10, "needsPhaseTwo"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/Intent;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 279
    .local p11, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p5

    move-object/from16 v3, p8

    move-object/from16 v4, p9

    move-object/from16 v5, p11

    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getFlags()I

    move-result v6

    .line 280
    .local v6, "flags":I
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object v7, v0

    .line 281
    .local v7, "intent":Landroid/content/Intent;
    const/high16 v0, 0x40000000    # 2.0f

    or-int/2addr v0, v6

    const/high16 v8, 0x800000

    or-int/2addr v0, v8

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 284
    if-eqz v4, :cond_0

    .line 285
    const-string v0, "android.intent.extra.INSTANT_APP_TOKEN"

    invoke-virtual {v7, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 288
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v8, "android.intent.extra.INSTANT_APP_HOSTNAME"

    invoke-virtual {v7, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v8, "android.intent.extra.INSTANT_APP_ACTION"

    invoke-virtual {v7, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    const-string v0, "android.intent.extra.INTENT"

    move-object/from16 v8, p1

    invoke-virtual {v7, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 293
    if-eqz p10, :cond_2

    .line 294
    const-string v0, "android.intent.action.RESOLVE_INSTANT_APP_PACKAGE"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v13, p3

    goto/16 :goto_5

    .line 297
    :cond_2
    const-string v9, "android.intent.extra.SPLIT_NAME"

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-nez p2, :cond_3

    if-eqz v3, :cond_6

    .line 301
    :cond_3
    if-eqz v3, :cond_5

    .line 302
    :try_start_0
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 303
    .local v12, "onFailureIntent":Landroid/content/Intent;
    invoke-virtual {v12, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 304
    if-eqz v5, :cond_4

    invoke-interface/range {p11 .. p11}, Ljava/util/List;->size()I

    move-result v13

    if-ne v13, v11, :cond_4

    .line 305
    nop

    .line 306
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;

    iget-object v13, v13, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->splitName:Ljava/lang/String;

    .line 305
    invoke-virtual {v12, v9, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    :cond_4
    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 326
    .end local v12    # "onFailureIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    goto :goto_1

    .line 310
    :cond_5
    move-object/from16 v0, p2

    move-object v12, v0

    .line 312
    .restart local v12    # "onFailureIntent":Landroid/content/Intent;
    :goto_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v13

    const/4 v14, 0x2

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    new-array v0, v11, [Landroid/content/Intent;

    aput-object v12, v0, v10

    new-array v15, v11, [Ljava/lang/String;

    aput-object p6, v15, v10

    const/high16 v22, 0x54000000

    const/16 v23, 0x0

    .line 313
    move-object/from16 v21, v15

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    move-object/from16 v20, v0

    move/from16 v24, p7

    invoke-interface/range {v13 .. v24}, Landroid/app/IActivityManager;->getIntentSenderWithFeature(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v0

    .line 323
    .local v0, "failureIntentTarget":Landroid/content/IIntentSender;
    new-instance v13, Landroid/content/IntentSender;

    invoke-direct {v13, v0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    .line 325
    .local v13, "failureSender":Landroid/content/IntentSender;
    const-string v14, "android.intent.extra.INSTANT_APP_FAILURE"

    invoke-virtual {v7, v14, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    nop

    .line 330
    .end local v0    # "failureIntentTarget":Landroid/content/IIntentSender;
    .end local v12    # "onFailureIntent":Landroid/content/Intent;
    .end local v13    # "failureSender":Landroid/content/IntentSender;
    :cond_6
    :goto_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v12, v0

    .line 331
    .local v12, "successIntent":Landroid/content/Intent;
    invoke-virtual {v12, v4}, Landroid/content/Intent;->setLaunchToken(Ljava/lang/String;)V

    .line 333
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v13

    const/4 v14, 0x2

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    new-array v0, v11, [Landroid/content/Intent;

    aput-object v12, v0, v10

    new-array v15, v11, [Ljava/lang/String;

    aput-object p6, v15, v10

    const/high16 v22, 0x54000000

    const/16 v23, 0x0

    .line 334
    move-object/from16 v21, v15

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    move-object/from16 v20, v0

    move/from16 v24, p7

    invoke-interface/range {v13 .. v24}, Landroid/app/IActivityManager;->getIntentSenderWithFeature(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v0

    .line 343
    .local v0, "successIntentTarget":Landroid/content/IIntentSender;
    new-instance v13, Landroid/content/IntentSender;

    invoke-direct {v13, v0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    .line 344
    .local v13, "successSender":Landroid/content/IntentSender;
    const-string v14, "android.intent.extra.INSTANT_APP_SUCCESS"

    invoke-virtual {v7, v14, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 345
    nop

    .end local v0    # "successIntentTarget":Landroid/content/IIntentSender;
    .end local v13    # "successSender":Landroid/content/IntentSender;
    goto :goto_2

    :catch_1
    move-exception v0

    .line 346
    :goto_2
    if-eqz v2, :cond_7

    .line 347
    const-string v0, "android.intent.extra.VERIFICATION_BUNDLE"

    invoke-virtual {v7, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 349
    :cond_7
    const-string v0, "android.intent.extra.CALLING_PACKAGE"

    move-object/from16 v13, p3

    invoke-virtual {v7, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 351
    if-eqz v5, :cond_b

    .line 352
    invoke-interface/range {p11 .. p11}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/os/Bundle;

    .line 353
    .local v0, "resolvableFilters":[Landroid/os/Bundle;
    const/4 v14, 0x0

    .local v14, "i":I
    invoke-interface/range {p11 .. p11}, Ljava/util/List;->size()I

    move-result v15

    .local v15, "max":I
    :goto_3
    if-ge v14, v15, :cond_a

    .line 354
    new-instance v16, Landroid/os/Bundle;

    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v17, v16

    .line 355
    .local v17, "resolvableFilter":Landroid/os/Bundle;
    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v10, v16

    check-cast v10, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;

    .line 356
    .local v10, "filter":Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;
    iget-object v11, v10, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->resolveInfo:Landroid/content/pm/InstantAppResolveInfo;

    if-eqz v11, :cond_8

    iget-object v11, v10, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->resolveInfo:Landroid/content/pm/InstantAppResolveInfo;

    .line 358
    invoke-virtual {v11}, Landroid/content/pm/InstantAppResolveInfo;->shouldLetInstallerDecide()Z

    move-result v11

    if-eqz v11, :cond_8

    const/4 v11, 0x1

    goto :goto_4

    :cond_8
    const/4 v11, 0x0

    .line 356
    :goto_4
    const-string v1, "android.intent.extra.UNKNOWN_INSTANT_APP"

    move-object/from16 v2, v17

    .end local v17    # "resolvableFilter":Landroid/os/Bundle;
    .local v2, "resolvableFilter":Landroid/os/Bundle;
    invoke-virtual {v2, v1, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 359
    iget-object v1, v10, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->packageName:Ljava/lang/String;

    const-string v11, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v2, v11, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iget-object v1, v10, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->splitName:Ljava/lang/String;

    invoke-virtual {v2, v9, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-wide v3, v10, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->versionCode:J

    const-string v1, "android.intent.extra.LONG_VERSION_CODE"

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 362
    iget-object v1, v10, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->extras:Landroid/os/Bundle;

    const-string v3, "android.intent.extra.INSTANT_APP_EXTRAS"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 363
    aput-object v2, v0, v14

    .line 364
    if-nez v14, :cond_9

    .line 367
    invoke-virtual {v7, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 368
    iget-wide v3, v10, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->versionCode:J

    long-to-int v1, v3

    const-string v3, "android.intent.extra.VERSION_CODE"

    invoke-virtual {v7, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 353
    .end local v2    # "resolvableFilter":Landroid/os/Bundle;
    .end local v10    # "filter":Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;
    :cond_9
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p5

    move-object/from16 v3, p8

    move-object/from16 v4, p9

    const/4 v10, 0x0

    const/4 v11, 0x1

    goto :goto_3

    .line 371
    .end local v14    # "i":I
    .end local v15    # "max":I
    :cond_a
    const-string v1, "android.intent.extra.INSTANT_APP_BUNDLES"

    invoke-virtual {v7, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 373
    .end local v0    # "resolvableFilters":[Landroid/os/Bundle;
    :cond_b
    const-string v0, "android.intent.action.INSTALL_INSTANT_APP_PACKAGE"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    .end local v12    # "successIntent":Landroid/content/Intent;
    :goto_5
    return-object v7
.end method

.method private static buildRequestInfo(Landroid/content/pm/InstantAppRequest;)Landroid/content/pm/InstantAppRequestInfo;
    .locals 7
    .param p0, "request"    # Landroid/content/pm/InstantAppRequest;

    .line 379
    new-instance v6, Landroid/content/pm/InstantAppRequestInfo;

    iget-object v0, p0, Landroid/content/pm/InstantAppRequest;->origIntent:Landroid/content/Intent;

    .line 380
    invoke-static {v0}, Lcom/android/server/pm/InstantAppResolver;->sanitizeIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/InstantAppRequest;->hostDigestPrefixSecure:[I

    iget v0, p0, Landroid/content/pm/InstantAppRequest;->userId:I

    .line 383
    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v3

    iget-boolean v4, p0, Landroid/content/pm/InstantAppRequest;->isRequesterInstantApp:Z

    iget-object v5, p0, Landroid/content/pm/InstantAppRequest;->token:Ljava/lang/String;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/InstantAppRequestInfo;-><init>(Landroid/content/Intent;[ILandroid/os/UserHandle;ZLjava/lang/String;)V

    .line 379
    return-object v6
.end method

.method private static computeResolveFilters(Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/pm/InstantAppResolveInfo;)Ljava/util/List;
    .locals 16
    .param p0, "origIntent"    # Landroid/content/Intent;
    .param p1, "resolvedType"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "token"    # Ljava/lang/String;
    .param p5, "instantAppInfo"    # Landroid/content/pm/InstantAppResolveInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/pm/InstantAppResolveInfo;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;",
            ">;"
        }
    .end annotation

    .line 469
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-virtual/range {p5 .. p5}, Landroid/content/pm/InstantAppResolveInfo;->shouldLetInstallerDecide()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 470
    new-instance v3, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;

    .line 473
    invoke-virtual/range {p5 .. p5}, Landroid/content/pm/InstantAppResolveInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-direct {v3, v2, v4, v5}, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;-><init>(Landroid/content/pm/InstantAppResolveInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 470
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 475
    :cond_0
    if-eqz v0, :cond_1

    .line 476
    invoke-virtual/range {p5 .. p5}, Landroid/content/pm/InstantAppResolveInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 477
    return-object v4

    .line 479
    :cond_1
    nop

    .line 480
    invoke-virtual/range {p5 .. p5}, Landroid/content/pm/InstantAppResolveInfo;->getIntentFilters()Ljava/util/List;

    move-result-object v3

    .line 481
    .local v3, "instantAppFilters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstantAppIntentFilter;>;"
    const-string v5, "PackageManager"

    if-eqz v3, :cond_c

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    goto/16 :goto_4

    .line 492
    :cond_2
    new-instance v6, Lcom/android/server/pm/ComponentResolver$InstantAppIntentResolver;

    invoke-direct {v6}, Lcom/android/server/pm/ComponentResolver$InstantAppIntentResolver;-><init>()V

    .line 494
    .local v6, "instantAppResolver":Lcom/android/server/pm/ComponentResolver$InstantAppIntentResolver;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    .local v7, "j":I
    :goto_0
    if-ltz v7, :cond_8

    .line 495
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/InstantAppIntentFilter;

    .line 496
    .local v8, "instantAppFilter":Landroid/content/pm/InstantAppIntentFilter;
    invoke-virtual {v8}, Landroid/content/pm/InstantAppIntentFilter;->getFilters()Ljava/util/List;

    move-result-object v9

    .line 497
    .local v9, "splitFilters":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    if-eqz v9, :cond_7

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 498
    goto :goto_3

    .line 500
    :cond_3
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    .local v10, "k":I
    :goto_1
    if-ltz v10, :cond_7

    .line 501
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/IntentFilter;

    .line 502
    .local v11, "filter":Landroid/content/IntentFilter;
    nop

    .line 503
    invoke-virtual {v11}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v12

    .line 505
    .local v12, "authorities":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    if-eqz v12, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_6

    .line 506
    :cond_4
    const-string v13, "http"

    invoke-virtual {v11, v13}, Landroid/content/IntentFilter;->hasDataScheme(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_5

    const-string v13, "https"

    invoke-virtual {v11, v13}, Landroid/content/IntentFilter;->hasDataScheme(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 507
    :cond_5
    const-string v13, "android.intent.action.VIEW"

    invoke-virtual {v11, v13}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 508
    const-string v13, "android.intent.category.BROWSABLE"

    invoke-virtual {v11, v13}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 509
    goto :goto_2

    .line 511
    :cond_6
    new-instance v13, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;

    .line 515
    invoke-virtual {v8}, Landroid/content/pm/InstantAppIntentFilter;->getSplitName()Ljava/lang/String;

    move-result-object v14

    .line 516
    invoke-virtual/range {p5 .. p5}, Landroid/content/pm/InstantAppResolveInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v15

    invoke-direct {v13, v11, v2, v14, v15}, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;-><init>(Landroid/content/IntentFilter;Landroid/content/pm/InstantAppResolveInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 511
    invoke-virtual {v6, v13}, Lcom/android/server/pm/ComponentResolver$InstantAppIntentResolver;->addFilter(Ljava/lang/Object;)V

    .line 500
    .end local v11    # "filter":Landroid/content/IntentFilter;
    .end local v12    # "authorities":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    :goto_2
    add-int/lit8 v10, v10, -0x1

    goto :goto_1

    .line 494
    .end local v8    # "instantAppFilter":Landroid/content/pm/InstantAppIntentFilter;
    .end local v9    # "splitFilters":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    .end local v10    # "k":I
    :cond_7
    :goto_3
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 520
    .end local v7    # "j":I
    :cond_8
    const/4 v7, 0x0

    .line 521
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    invoke-virtual {v6, v8, v9, v7, v10}, Lcom/android/server/pm/ComponentResolver$InstantAppIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v7

    .line 523
    .local v7, "matchedResolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;>;"
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v11

    const-string v12, "["

    if-nez v11, :cond_a

    .line 524
    sget-boolean v4, Lcom/android/server/pm/InstantAppResolver;->DEBUG_INSTANT:Z

    if-eqz v4, :cond_9

    .line 525
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "] Found match(es); "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_9
    return-object v7

    .line 528
    :cond_a
    sget-boolean v11, Lcom/android/server/pm/InstantAppResolver;->DEBUG_INSTANT:Z

    if-eqz v11, :cond_b

    .line 529
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "] No matches found package: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    invoke-virtual/range {p5 .. p5}, Landroid/content/pm/InstantAppResolveInfo;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", versionCode: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    invoke-virtual/range {p5 .. p5}, Landroid/content/pm/InstantAppResolveInfo;->getVersionCode()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 529
    invoke-static {v5, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :cond_b
    return-object v4

    .line 481
    .end local v6    # "instantAppResolver":Lcom/android/server/pm/ComponentResolver$InstantAppIntentResolver;
    .end local v7    # "matchedResolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;>;"
    :cond_c
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    .line 483
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->isWebIntent()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 484
    return-object v4

    .line 487
    :cond_d
    sget-boolean v4, Lcom/android/server/pm/InstantAppResolver;->DEBUG_INSTANT:Z

    if-eqz v4, :cond_e

    .line 488
    const-string v4, "No app filters; go to phase 2"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :cond_e
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    return-object v4
.end method

.method private static createFailureIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "origIntent"    # Landroid/content/Intent;
    .param p1, "token"    # Ljava/lang/String;

    .line 449
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 450
    .local v0, "failureIntent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    or-int/lit16 v1, v1, 0x200

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 451
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, -0x801

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 452
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setLaunchToken(Ljava/lang/String;)V

    .line 453
    return-object v0
.end method

.method public static doInstantAppResolutionPhaseOne(Lcom/android/server/pm/InstantAppResolverConnection;Landroid/content/pm/InstantAppRequest;)Landroid/content/pm/AuxiliaryResolveInfo;
    .locals 19
    .param p0, "connection"    # Lcom/android/server/pm/InstantAppResolverConnection;
    .param p1, "requestObj"    # Landroid/content/pm/InstantAppRequest;

    .line 139
    move-object/from16 v1, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 140
    .local v2, "startTime":J
    iget-object v11, v1, Landroid/content/pm/InstantAppRequest;->token:Ljava/lang/String;

    .line 141
    .local v11, "token":Ljava/lang/String;
    sget-boolean v0, Lcom/android/server/pm/InstantAppResolver;->DEBUG_INSTANT:Z

    const-string v12, "["

    const-string v13, "PackageManager"

    if-eqz v0, :cond_0

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] Phase1; resolving"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_0
    const/4 v14, 0x0

    .line 146
    .local v14, "resolveInfo":Landroid/content/pm/AuxiliaryResolveInfo;
    const/4 v15, 0x0

    .line 147
    .local v15, "resolutionStatus":I
    iget-object v10, v1, Landroid/content/pm/InstantAppRequest;->origIntent:Landroid/content/Intent;

    .line 149
    .local v10, "origIntent":Landroid/content/Intent;
    nop

    .line 150
    const/4 v9, 0x2

    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/InstantAppResolver;->buildRequestInfo(Landroid/content/pm/InstantAppRequest;)Landroid/content/pm/InstantAppRequestInfo;

    move-result-object v0

    move-object/from16 v8, p0

    invoke-virtual {v8, v0}, Lcom/android/server/pm/InstantAppResolverConnection;->getInstantAppResolveInfoList(Landroid/content/pm/InstantAppRequestInfo;)Ljava/util/List;

    move-result-object v0

    .line 151
    .local v0, "instantAppResolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstantAppResolveInfo;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 152
    iget-object v6, v1, Landroid/content/pm/InstantAppRequest;->resolvedType:Ljava/lang/String;

    iget v7, v1, Landroid/content/pm/InstantAppRequest;->userId:I

    .line 154
    invoke-virtual {v10}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v16

    iget-object v5, v1, Landroid/content/pm/InstantAppRequest;->hostDigestPrefixSecure:[I
    :try_end_0
    .catch Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 152
    move-object v4, v0

    move-object/from16 v17, v5

    move-object v5, v10

    move-object/from16 v8, v16

    move-object/from16 v16, v14

    move v14, v9

    .end local v14    # "resolveInfo":Landroid/content/pm/AuxiliaryResolveInfo;
    .local v16, "resolveInfo":Landroid/content/pm/AuxiliaryResolveInfo;
    move-object v9, v11

    move-object/from16 v18, v10

    .end local v10    # "origIntent":Landroid/content/Intent;
    .local v18, "origIntent":Landroid/content/Intent;
    move-object/from16 v10, v17

    :try_start_1
    invoke-static/range {v4 .. v10}, Lcom/android/server/pm/InstantAppResolver;->filterInstantAppIntent(Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[I)Landroid/content/pm/AuxiliaryResolveInfo;

    move-result-object v4
    :try_end_1
    .catch Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v16, v4

    .end local v16    # "resolveInfo":Landroid/content/pm/AuxiliaryResolveInfo;
    .local v4, "resolveInfo":Landroid/content/pm/AuxiliaryResolveInfo;
    goto :goto_0

    .line 157
    .end local v0    # "instantAppResolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstantAppResolveInfo;>;"
    .end local v4    # "resolveInfo":Landroid/content/pm/AuxiliaryResolveInfo;
    .restart local v16    # "resolveInfo":Landroid/content/pm/AuxiliaryResolveInfo;
    :catch_0
    move-exception v0

    goto :goto_1

    .line 151
    .end local v16    # "resolveInfo":Landroid/content/pm/AuxiliaryResolveInfo;
    .end local v18    # "origIntent":Landroid/content/Intent;
    .restart local v0    # "instantAppResolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstantAppResolveInfo;>;"
    .restart local v10    # "origIntent":Landroid/content/Intent;
    .restart local v14    # "resolveInfo":Landroid/content/pm/AuxiliaryResolveInfo;
    :cond_1
    move-object/from16 v18, v10

    move-object/from16 v16, v14

    move v14, v9

    .line 165
    .end local v0    # "instantAppResolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstantAppResolveInfo;>;"
    .end local v10    # "origIntent":Landroid/content/Intent;
    .end local v14    # "resolveInfo":Landroid/content/pm/AuxiliaryResolveInfo;
    .restart local v16    # "resolveInfo":Landroid/content/pm/AuxiliaryResolveInfo;
    .restart local v18    # "origIntent":Landroid/content/Intent;
    :goto_0
    goto :goto_2

    .line 157
    .end local v16    # "resolveInfo":Landroid/content/pm/AuxiliaryResolveInfo;
    .end local v18    # "origIntent":Landroid/content/Intent;
    .restart local v10    # "origIntent":Landroid/content/Intent;
    .restart local v14    # "resolveInfo":Landroid/content/pm/AuxiliaryResolveInfo;
    :catch_1
    move-exception v0

    move-object/from16 v18, v10

    move-object/from16 v16, v14

    move v14, v9

    .line 158
    .end local v10    # "origIntent":Landroid/content/Intent;
    .end local v14    # "resolveInfo":Landroid/content/pm/AuxiliaryResolveInfo;
    .local v0, "e":Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;
    .restart local v16    # "resolveInfo":Landroid/content/pm/AuxiliaryResolveInfo;
    .restart local v18    # "origIntent":Landroid/content/Intent;
    :goto_1
    iget v4, v0, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;->failure:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 159
    const/4 v15, 0x2

    goto :goto_2

    .line 160
    :cond_2
    iget v4, v0, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;->failure:I

    if-ne v4, v14, :cond_3

    .line 161
    const/4 v15, 0x3

    goto :goto_2

    .line 163
    :cond_3
    const/4 v15, 0x1

    .line 167
    .end local v0    # "e":Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;
    :goto_2
    iget-boolean v0, v1, Landroid/content/pm/InstantAppRequest;->resolveForStart:Z

    if-eqz v0, :cond_4

    if-nez v15, :cond_4

    .line 168
    const/16 v0, 0x383

    invoke-static {v0, v2, v3, v11, v15}, Lcom/android/server/pm/InstantAppResolver;->logMetrics(IJLjava/lang/String;I)V

    .line 171
    :cond_4
    sget-boolean v0, Lcom/android/server/pm/InstantAppResolver;->DEBUG_INSTANT:Z

    if-eqz v0, :cond_8

    if-nez v16, :cond_8

    .line 172
    if-ne v15, v14, :cond_5

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] Phase1; bind timed out"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 174
    :cond_5
    const/4 v0, 0x3

    if-ne v15, v0, :cond_6

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] Phase1; call timed out"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 176
    :cond_6
    if-eqz v15, :cond_7

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] Phase1; service connection error"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 179
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] Phase1; No results matched"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_8
    :goto_3
    if-nez v16, :cond_9

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_9

    .line 184
    new-instance v0, Landroid/content/pm/AuxiliaryResolveInfo;

    const/4 v6, 0x0

    move-object/from16 v10, v18

    .end local v18    # "origIntent":Landroid/content/Intent;
    .restart local v10    # "origIntent":Landroid/content/Intent;
    invoke-static {v10, v11}, Lcom/android/server/pm/InstantAppResolver;->createFailureIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v9, v1, Landroid/content/pm/InstantAppRequest;->hostDigestPrefixSecure:[I

    move-object v4, v0

    move-object v5, v11

    invoke-direct/range {v4 .. v9}, Landroid/content/pm/AuxiliaryResolveInfo;-><init>(Ljava/lang/String;ZLandroid/content/Intent;Ljava/util/List;[I)V

    return-object v0

    .line 183
    .end local v10    # "origIntent":Landroid/content/Intent;
    .restart local v18    # "origIntent":Landroid/content/Intent;
    :cond_9
    move-object/from16 v10, v18

    .line 187
    .end local v18    # "origIntent":Landroid/content/Intent;
    .restart local v10    # "origIntent":Landroid/content/Intent;
    return-object v16
.end method

.method public static doInstantAppResolutionPhaseTwo(Landroid/content/Context;Lcom/android/server/pm/InstantAppResolverConnection;Landroid/content/pm/InstantAppRequest;Landroid/content/pm/ActivityInfo;Landroid/os/Handler;)V
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "connection"    # Lcom/android/server/pm/InstantAppResolverConnection;
    .param p2, "requestObj"    # Landroid/content/pm/InstantAppRequest;
    .param p3, "instantAppInstaller"    # Landroid/content/pm/ActivityInfo;
    .param p4, "callbackHandler"    # Landroid/os/Handler;

    .line 193
    move-object/from16 v8, p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 194
    .local v9, "startTime":J
    iget-object v11, v8, Landroid/content/pm/InstantAppRequest;->token:Ljava/lang/String;

    .line 195
    .local v11, "token":Ljava/lang/String;
    sget-boolean v0, Lcom/android/server/pm/InstantAppResolver;->DEBUG_INSTANT:Z

    const-string v12, "["

    const-string v13, "PackageManager"

    if-eqz v0, :cond_0

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] Phase2; resolving"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_0
    iget-object v14, v8, Landroid/content/pm/InstantAppRequest;->origIntent:Landroid/content/Intent;

    .line 199
    .local v14, "origIntent":Landroid/content/Intent;
    invoke-static {v14}, Lcom/android/server/pm/InstantAppResolver;->sanitizeIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v15

    .line 201
    .local v15, "sanitizedIntent":Landroid/content/Intent;
    new-instance v0, Lcom/android/server/pm/InstantAppResolver$1;

    move-object v1, v0

    move-object v2, v14

    move-object v3, v11

    move-object/from16 v4, p2

    move-object v5, v15

    move-object/from16 v6, p3

    move-object/from16 v7, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/InstantAppResolver$1;-><init>(Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/InstantAppRequest;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/Context;)V

    move-object v3, v0

    .line 243
    .local v3, "callback":Lcom/android/server/pm/InstantAppResolverConnection$PhaseTwoCallback;
    :try_start_0
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/InstantAppResolver;->buildRequestInfo(Landroid/content/pm/InstantAppRequest;)Landroid/content/pm/InstantAppRequestInfo;

    move-result-object v2

    move-object/from16 v1, p1

    move-object/from16 v4, p4

    move-wide v5, v9

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/InstantAppResolverConnection;->getInstantAppIntentFilterList(Landroid/content/pm/InstantAppRequestInfo;Lcom/android/server/pm/InstantAppResolverConnection$PhaseTwoCallback;Landroid/os/Handler;J)V
    :try_end_0
    .catch Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    goto :goto_0

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;
    const/4 v1, 0x1

    .line 247
    .local v1, "resolutionStatus":I
    iget v2, v0, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;->failure:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 248
    const/4 v1, 0x2

    .line 250
    :cond_1
    const/16 v2, 0x384

    invoke-static {v2, v9, v10, v11, v1}, Lcom/android/server/pm/InstantAppResolver;->logMetrics(IJLjava/lang/String;I)V

    .line 252
    sget-boolean v2, Lcom/android/server/pm/InstantAppResolver;->DEBUG_INSTANT:Z

    if-eqz v2, :cond_3

    .line 253
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 254
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] Phase2; bind timed out"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 256
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] Phase2; service connection error"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    .end local v0    # "e":Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;
    .end local v1    # "resolutionStatus":I
    :cond_3
    :goto_0
    return-void
.end method

.method private static filterInstantAppIntent(Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[I)Landroid/content/pm/AuxiliaryResolveInfo;
    .locals 16
    .param p1, "origIntent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "token"    # Ljava/lang/String;
    .param p6, "hostDigestPrefixSecure"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/InstantAppResolveInfo;",
            ">;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[I)",
            "Landroid/content/pm/AuxiliaryResolveInfo;"
        }
    .end annotation

    .line 393
    .local p0, "instantAppResolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstantAppResolveInfo;>;"
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/InstantAppResolver;->parseDigest(Landroid/content/Intent;)Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    move-result-object v0

    .line 394
    .local v0, "digest":Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;
    invoke-virtual {v0}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->getDigestPrefix()[I

    move-result-object v1

    .line 395
    .local v1, "shaPrefix":[I
    invoke-virtual {v0}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->getDigestBytes()[[B

    move-result-object v2

    .line 396
    .local v2, "digestBytes":[[B
    const/4 v3, 0x0

    .line 397
    .local v3, "requiresSecondPhase":Z
    const/4 v4, 0x0

    .line 398
    .local v4, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->isWebIntent()Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_1

    array-length v5, v1

    if-lez v5, :cond_0

    .line 399
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v5

    and-int/lit16 v5, v5, 0x800

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v6

    .line 400
    .local v5, "requiresPrefixMatch":Z
    :goto_1
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/InstantAppResolveInfo;

    .line 401
    .local v8, "instantAppResolveInfo":Landroid/content/pm/InstantAppResolveInfo;
    if-eqz v5, :cond_2

    invoke-virtual {v8}, Landroid/content/pm/InstantAppResolveInfo;->shouldLetInstallerDecide()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 402
    const-string v9, "PackageManager"

    const-string v10, "InstantAppResolveInfo with mShouldLetInstallerDecide=true when digest required; ignoring"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    goto :goto_2

    .line 406
    :cond_2
    invoke-virtual {v8}, Landroid/content/pm/InstantAppResolveInfo;->getDigestBytes()[B

    move-result-object v15

    .line 409
    .local v15, "filterDigestBytes":[B
    array-length v9, v1

    if-lez v9, :cond_6

    if-nez v5, :cond_3

    array-length v9, v15

    if-lez v9, :cond_6

    .line 410
    :cond_3
    const/4 v9, 0x0

    .line 412
    .local v9, "matchFound":Z
    array-length v10, v1

    sub-int/2addr v10, v6

    .local v10, "i":I
    :goto_3
    if-ltz v10, :cond_5

    .line 413
    aget-object v11, v2, v10

    invoke-static {v11, v15}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 414
    const/4 v9, 0x1

    .line 415
    goto :goto_4

    .line 412
    :cond_4
    add-int/lit8 v10, v10, -0x1

    goto :goto_3

    .line 418
    .end local v10    # "i":I
    :cond_5
    :goto_4
    if-nez v9, :cond_6

    .line 419
    goto :goto_2

    .line 423
    .end local v9    # "matchFound":Z
    :cond_6
    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move-object v14, v8

    invoke-static/range {v9 .. v14}, Lcom/android/server/pm/InstantAppResolver;->computeResolveFilters(Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/pm/InstantAppResolveInfo;)Ljava/util/List;

    move-result-object v9

    .line 425
    .local v9, "matchFilters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;>;"
    if-eqz v9, :cond_9

    .line 426
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 427
    const/4 v3, 0x1

    .line 429
    :cond_7
    if-nez v4, :cond_8

    .line 430
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v4, v10

    goto :goto_5

    .line 432
    :cond_8
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 435
    .end local v8    # "instantAppResolveInfo":Landroid/content/pm/InstantAppResolveInfo;
    .end local v9    # "matchFilters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;>;"
    .end local v15    # "filterDigestBytes":[B
    :cond_9
    :goto_5
    goto :goto_2

    .line 436
    :cond_a
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_b

    .line 437
    new-instance v6, Landroid/content/pm/AuxiliaryResolveInfo;

    .line 438
    move-object/from16 v7, p1

    move-object/from16 v14, p5

    invoke-static {v7, v14}, Lcom/android/server/pm/InstantAppResolver;->createFailureIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    move-object v8, v6

    move-object/from16 v9, p5

    move v10, v3

    move-object v12, v4

    move-object/from16 v13, p6

    invoke-direct/range {v8 .. v13}, Landroid/content/pm/AuxiliaryResolveInfo;-><init>(Ljava/lang/String;ZLandroid/content/Intent;Ljava/util/List;[I)V

    .line 437
    return-object v6

    .line 436
    :cond_b
    move-object/from16 v7, p1

    move-object/from16 v14, p5

    .line 441
    const/4 v6, 0x0

    return-object v6
.end method

.method private static getLogger()Lcom/android/internal/logging/MetricsLogger;
    .locals 1

    .line 94
    sget-object v0, Lcom/android/server/pm/InstantAppResolver;->sMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    sput-object v0, Lcom/android/server/pm/InstantAppResolver;->sMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 97
    :cond_0
    sget-object v0, Lcom/android/server/pm/InstantAppResolver;->sMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object v0
.end method

.method private static logMetrics(IJLjava/lang/String;I)V
    .locals 4
    .param p0, "action"    # I
    .param p1, "startTime"    # J
    .param p3, "token"    # Ljava/lang/String;
    .param p4, "status"    # I

    .line 538
    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, p0}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 539
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    new-instance v1, Ljava/lang/Long;

    .line 541
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p1

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    .line 540
    const/16 v2, 0x385

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 542
    const/16 v1, 0x387

    invoke-virtual {v0, v1, p3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p4}, Ljava/lang/Integer;-><init>(I)V

    .line 543
    const/16 v2, 0x386

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 544
    .local v0, "logMaker":Landroid/metrics/LogMaker;
    invoke-static {}, Lcom/android/server/pm/InstantAppResolver;->getLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 545
    return-void
.end method

.method public static parseDigest(Landroid/content/Intent;)Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;
    .locals 3
    .param p0, "origIntent"    # Landroid/content/Intent;

    .line 129
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;-><init>(Ljava/lang/String;I)V

    return-object v0

    .line 133
    :cond_0
    sget-object v0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->UNDEFINED:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    return-object v0
.end method

.method public static sanitizeIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p0, "origIntent"    # Landroid/content/Intent;

    .line 106
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    .local v0, "sanitizedIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    .line 108
    .local v1, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 109
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 110
    .local v3, "category":Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    .end local v3    # "category":Ljava/lang/String;
    goto :goto_0

    .line 113
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_1

    .line 114
    const/4 v2, 0x0

    goto :goto_1

    .line 115
    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    :goto_1
    nop

    .line 116
    .local v2, "sanitizedUri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 118
    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    return-object v0
.end method
