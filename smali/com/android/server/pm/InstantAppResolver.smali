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

    .line 70
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/pm/InstantAppResolver;->DEBUG_INSTANT:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;Ljava/lang/String;)Landroid/content/pm/AuxiliaryResolveInfo;
    .locals 1
    .param p0, "x0"    # Ljava/util/List;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;
    .param p6, "x6"    # Ljava/lang/String;

    .line 69
    invoke-static/range {p0 .. p6}, Lcom/android/server/pm/InstantAppResolver;->filterInstantAppIntent(Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;Ljava/lang/String;)Landroid/content/pm/AuxiliaryResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(IJLjava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # I

    .line 69
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/pm/InstantAppResolver;->logMetrics(IJLjava/lang/String;I)V

    return-void
.end method

.method public static buildEphemeralInstallerIntent(Landroid/content/Intent;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILandroid/content/ComponentName;Ljava/lang/String;ZLjava/util/List;)Landroid/content/Intent;
    .locals 24
    .param p0, "origIntent"    # Landroid/content/Intent;
    .param p1, "sanitizedIntent"    # Landroid/content/Intent;
    .param p2, "failureIntent"    # Landroid/content/Intent;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "verificationBundle"    # Landroid/os/Bundle;
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "userId"    # I
    .param p7, "installFailureActivity"    # Landroid/content/ComponentName;
    .param p8, "token"    # Ljava/lang/String;
    .param p9, "needsPhaseTwo"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/Intent;",
            "Landroid/content/Intent;",
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

    .line 262
    .local p10, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-object/from16 v5, p10

    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getFlags()I

    move-result v6

    .line 263
    .local v6, "flags":I
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object v7, v0

    .line 264
    .local v7, "intent":Landroid/content/Intent;
    const/high16 v0, 0x40000000    # 2.0f

    or-int/2addr v0, v6

    const/high16 v8, 0x800000

    or-int/2addr v0, v8

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 267
    if-eqz v4, :cond_0

    .line 268
    const-string v0, "android.intent.extra.INSTANT_APP_TOKEN"

    invoke-virtual {v7, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 271
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v8, "android.intent.extra.INSTANT_APP_HOSTNAME"

    invoke-virtual {v7, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v8, "android.intent.extra.INSTANT_APP_ACTION"

    invoke-virtual {v7, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    const-string v0, "android.intent.extra.INTENT"

    move-object/from16 v8, p1

    invoke-virtual {v7, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 276
    if-eqz p9, :cond_2

    .line 277
    const-string v0, "android.intent.action.RESOLVE_INSTANT_APP_PACKAGE"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v13, p3

    goto/16 :goto_5

    .line 280
    :cond_2
    const-string v9, "android.intent.extra.SPLIT_NAME"

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-nez p2, :cond_3

    if-eqz v3, :cond_6

    .line 284
    :cond_3
    if-eqz v3, :cond_5

    .line 285
    :try_start_0
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 286
    .local v12, "onFailureIntent":Landroid/content/Intent;
    invoke-virtual {v12, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 287
    if-eqz v5, :cond_4

    invoke-interface/range {p10 .. p10}, Ljava/util/List;->size()I

    move-result v13

    if-ne v13, v11, :cond_4

    .line 288
    nop

    .line 289
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;

    iget-object v13, v13, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->splitName:Ljava/lang/String;

    .line 288
    invoke-virtual {v12, v9, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    :cond_4
    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 308
    .end local v12    # "onFailureIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    goto :goto_1

    .line 293
    :cond_5
    move-object/from16 v12, p2

    .line 295
    .restart local v12    # "onFailureIntent":Landroid/content/Intent;
    :goto_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v13

    const/4 v14, 0x2

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    new-array v0, v11, [Landroid/content/Intent;

    aput-object v12, v0, v10

    new-array v15, v11, [Ljava/lang/String;

    aput-object p5, v15, v10

    const/high16 v21, 0x54000000

    const/16 v22, 0x0

    .line 296
    move-object/from16 v20, v15

    move-object/from16 v15, p3

    move-object/from16 v19, v0

    move/from16 v23, p6

    invoke-interface/range {v13 .. v23}, Landroid/app/IActivityManager;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v0

    .line 305
    .local v0, "failureIntentTarget":Landroid/content/IIntentSender;
    new-instance v13, Landroid/content/IntentSender;

    invoke-direct {v13, v0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    .line 307
    .local v13, "failureSender":Landroid/content/IntentSender;
    const-string v14, "android.intent.extra.INSTANT_APP_FAILURE"

    invoke-virtual {v7, v14, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    nop

    .line 312
    .end local v0    # "failureIntentTarget":Landroid/content/IIntentSender;
    .end local v12    # "onFailureIntent":Landroid/content/Intent;
    .end local v13    # "failureSender":Landroid/content/IntentSender;
    :cond_6
    :goto_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v12, v0

    .line 313
    .local v12, "successIntent":Landroid/content/Intent;
    invoke-virtual {v12, v4}, Landroid/content/Intent;->setLaunchToken(Ljava/lang/String;)V

    .line 315
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v13

    const/4 v14, 0x2

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    new-array v0, v11, [Landroid/content/Intent;

    aput-object v12, v0, v10

    new-array v15, v11, [Ljava/lang/String;

    aput-object p5, v15, v10

    const/high16 v21, 0x54000000

    const/16 v22, 0x0

    .line 316
    move-object/from16 v20, v15

    move-object/from16 v15, p3

    move-object/from16 v19, v0

    move/from16 v23, p6

    invoke-interface/range {v13 .. v23}, Landroid/app/IActivityManager;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v0

    .line 324
    .local v0, "successIntentTarget":Landroid/content/IIntentSender;
    new-instance v13, Landroid/content/IntentSender;

    invoke-direct {v13, v0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    .line 325
    .local v13, "successSender":Landroid/content/IntentSender;
    const-string v14, "android.intent.extra.INSTANT_APP_SUCCESS"

    invoke-virtual {v7, v14, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 326
    nop

    .end local v0    # "successIntentTarget":Landroid/content/IIntentSender;
    .end local v13    # "successSender":Landroid/content/IntentSender;
    goto :goto_2

    :catch_1
    move-exception v0

    .line 327
    :goto_2
    if-eqz v2, :cond_7

    .line 328
    const-string v0, "android.intent.extra.VERIFICATION_BUNDLE"

    invoke-virtual {v7, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 330
    :cond_7
    const-string v0, "android.intent.extra.CALLING_PACKAGE"

    move-object/from16 v13, p3

    invoke-virtual {v7, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    if-eqz v5, :cond_b

    .line 333
    invoke-interface/range {p10 .. p10}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/os/Bundle;

    .line 334
    .local v0, "resolvableFilters":[Landroid/os/Bundle;
    const/4 v14, 0x0

    .local v14, "i":I
    invoke-interface/range {p10 .. p10}, Ljava/util/List;->size()I

    move-result v15

    .local v15, "max":I
    :goto_3
    if-ge v14, v15, :cond_a

    .line 335
    new-instance v16, Landroid/os/Bundle;

    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v17, v16

    .line 336
    .local v17, "resolvableFilter":Landroid/os/Bundle;
    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v10, v16

    check-cast v10, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;

    .line 337
    .local v10, "filter":Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;
    iget-object v11, v10, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->resolveInfo:Landroid/content/pm/InstantAppResolveInfo;

    if-eqz v11, :cond_8

    iget-object v11, v10, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->resolveInfo:Landroid/content/pm/InstantAppResolveInfo;

    .line 339
    invoke-virtual {v11}, Landroid/content/pm/InstantAppResolveInfo;->shouldLetInstallerDecide()Z

    move-result v11

    if-eqz v11, :cond_8

    const/4 v11, 0x1

    goto :goto_4

    :cond_8
    const/4 v11, 0x0

    .line 337
    :goto_4
    const-string v1, "android.intent.extra.UNKNOWN_INSTANT_APP"

    move-object/from16 v2, v17

    .end local v17    # "resolvableFilter":Landroid/os/Bundle;
    .local v2, "resolvableFilter":Landroid/os/Bundle;
    invoke-virtual {v2, v1, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 340
    iget-object v1, v10, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->packageName:Ljava/lang/String;

    const-string v11, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v2, v11, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    iget-object v1, v10, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->splitName:Ljava/lang/String;

    invoke-virtual {v2, v9, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-wide v3, v10, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->versionCode:J

    const-string v1, "android.intent.extra.LONG_VERSION_CODE"

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 343
    iget-object v1, v10, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->extras:Landroid/os/Bundle;

    const-string v3, "android.intent.extra.INSTANT_APP_EXTRAS"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 344
    aput-object v2, v0, v14

    .line 345
    if-nez v14, :cond_9

    .line 348
    invoke-virtual {v7, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 349
    iget-wide v3, v10, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->versionCode:J

    long-to-int v1, v3

    const-string v3, "android.intent.extra.VERSION_CODE"

    invoke-virtual {v7, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 334
    .end local v2    # "resolvableFilter":Landroid/os/Bundle;
    .end local v10    # "filter":Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;
    :cond_9
    add-int/lit8 v14, v14, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    goto :goto_3

    .line 352
    .end local v14    # "i":I
    .end local v15    # "max":I
    :cond_a
    const-string v1, "android.intent.extra.INSTANT_APP_BUNDLES"

    invoke-virtual {v7, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 354
    .end local v0    # "resolvableFilters":[Landroid/os/Bundle;
    :cond_b
    const-string v0, "android.intent.action.INSTALL_INSTANT_APP_PACKAGE"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    .end local v12    # "successIntent":Landroid/content/Intent;
    :goto_5
    return-object v7
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

    .line 438
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-virtual/range {p5 .. p5}, Landroid/content/pm/InstantAppResolveInfo;->shouldLetInstallerDecide()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 439
    new-instance v3, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;

    .line 442
    invoke-virtual/range {p5 .. p5}, Landroid/content/pm/InstantAppResolveInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-direct {v3, v2, v4, v5}, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;-><init>(Landroid/content/pm/InstantAppResolveInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 439
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 444
    :cond_0
    if-eqz v0, :cond_1

    .line 445
    invoke-virtual/range {p5 .. p5}, Landroid/content/pm/InstantAppResolveInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 446
    return-object v4

    .line 448
    :cond_1
    nop

    .line 449
    invoke-virtual/range {p5 .. p5}, Landroid/content/pm/InstantAppResolveInfo;->getIntentFilters()Ljava/util/List;

    move-result-object v3

    .line 450
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

    .line 461
    :cond_2
    new-instance v6, Lcom/android/server/pm/ComponentResolver$InstantAppIntentResolver;

    invoke-direct {v6}, Lcom/android/server/pm/ComponentResolver$InstantAppIntentResolver;-><init>()V

    .line 463
    .local v6, "instantAppResolver":Lcom/android/server/pm/ComponentResolver$InstantAppIntentResolver;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    .local v7, "j":I
    :goto_0
    if-ltz v7, :cond_8

    .line 464
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/InstantAppIntentFilter;

    .line 465
    .local v8, "instantAppFilter":Landroid/content/pm/InstantAppIntentFilter;
    invoke-virtual {v8}, Landroid/content/pm/InstantAppIntentFilter;->getFilters()Ljava/util/List;

    move-result-object v9

    .line 466
    .local v9, "splitFilters":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    if-eqz v9, :cond_7

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 467
    goto :goto_3

    .line 469
    :cond_3
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    .local v10, "k":I
    :goto_1
    if-ltz v10, :cond_7

    .line 470
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/IntentFilter;

    .line 471
    .local v11, "filter":Landroid/content/IntentFilter;
    nop

    .line 472
    invoke-virtual {v11}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v12

    .line 474
    .local v12, "authorities":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    if-eqz v12, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_6

    .line 475
    :cond_4
    const-string v13, "http"

    invoke-virtual {v11, v13}, Landroid/content/IntentFilter;->hasDataScheme(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_5

    const-string v13, "https"

    invoke-virtual {v11, v13}, Landroid/content/IntentFilter;->hasDataScheme(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 476
    :cond_5
    const-string v13, "android.intent.action.VIEW"

    invoke-virtual {v11, v13}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 477
    const-string v13, "android.intent.category.BROWSABLE"

    invoke-virtual {v11, v13}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 478
    goto :goto_2

    .line 480
    :cond_6
    new-instance v13, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;

    .line 484
    invoke-virtual {v8}, Landroid/content/pm/InstantAppIntentFilter;->getSplitName()Ljava/lang/String;

    move-result-object v14

    .line 485
    invoke-virtual/range {p5 .. p5}, Landroid/content/pm/InstantAppResolveInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v15

    invoke-direct {v13, v11, v2, v14, v15}, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;-><init>(Landroid/content/IntentFilter;Landroid/content/pm/InstantAppResolveInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 480
    invoke-virtual {v6, v13}, Lcom/android/server/pm/ComponentResolver$InstantAppIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    .line 469
    .end local v11    # "filter":Landroid/content/IntentFilter;
    .end local v12    # "authorities":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    :goto_2
    add-int/lit8 v10, v10, -0x1

    goto :goto_1

    .line 463
    .end local v8    # "instantAppFilter":Landroid/content/pm/InstantAppIntentFilter;
    .end local v9    # "splitFilters":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    .end local v10    # "k":I
    :cond_7
    :goto_3
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 489
    .end local v7    # "j":I
    :cond_8
    const/4 v7, 0x0

    .line 490
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    invoke-virtual {v6, v8, v9, v7, v10}, Lcom/android/server/pm/ComponentResolver$InstantAppIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v7

    .line 492
    .local v7, "matchedResolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;>;"
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v11

    const-string v12, "["

    if-nez v11, :cond_a

    .line 493
    sget-boolean v4, Lcom/android/server/pm/InstantAppResolver;->DEBUG_INSTANT:Z

    if-eqz v4, :cond_9

    .line 494
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

    .line 496
    :cond_9
    return-object v7

    .line 497
    :cond_a
    sget-boolean v11, Lcom/android/server/pm/InstantAppResolver;->DEBUG_INSTANT:Z

    if-eqz v11, :cond_b

    .line 498
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "] No matches found package: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    invoke-virtual/range {p5 .. p5}, Landroid/content/pm/InstantAppResolveInfo;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", versionCode: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    invoke-virtual/range {p5 .. p5}, Landroid/content/pm/InstantAppResolveInfo;->getVersionCode()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 498
    invoke-static {v5, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :cond_b
    return-object v4

    .line 450
    .end local v6    # "instantAppResolver":Lcom/android/server/pm/ComponentResolver$InstantAppIntentResolver;
    .end local v7    # "matchedResolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;>;"
    :cond_c
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    .line 452
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->isWebIntent()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 453
    return-object v4

    .line 456
    :cond_d
    sget-boolean v4, Lcom/android/server/pm/InstantAppResolver;->DEBUG_INSTANT:Z

    if-eqz v4, :cond_e

    .line 457
    const-string v4, "No app filters; go to phase 2"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_e
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    return-object v4
.end method

.method private static createFailureIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "origIntent"    # Landroid/content/Intent;
    .param p1, "token"    # Ljava/lang/String;

    .line 418
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 419
    .local v0, "failureIntent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    or-int/lit16 v1, v1, 0x200

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 420
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, -0x801

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 421
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setLaunchToken(Ljava/lang/String;)V

    .line 422
    return-object v0
.end method

.method public static doInstantAppResolutionPhaseOne(Lcom/android/server/pm/InstantAppResolverConnection;Landroid/content/pm/InstantAppRequest;)Landroid/content/pm/AuxiliaryResolveInfo;
    .locals 19
    .param p0, "connection"    # Lcom/android/server/pm/InstantAppResolverConnection;
    .param p1, "requestObj"    # Landroid/content/pm/InstantAppRequest;

    .line 122
    move-object/from16 v1, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 123
    .local v2, "startTime":J
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v11

    .line 124
    .local v11, "token":Ljava/lang/String;
    sget-boolean v0, Lcom/android/server/pm/InstantAppResolver;->DEBUG_INSTANT:Z

    const-string v12, "["

    const-string v13, "PackageManager"

    if-eqz v0, :cond_0

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] Phase1; resolving"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_0
    iget-object v14, v1, Landroid/content/pm/InstantAppRequest;->origIntent:Landroid/content/Intent;

    .line 128
    .local v14, "origIntent":Landroid/content/Intent;
    invoke-static {v14}, Lcom/android/server/pm/InstantAppResolver;->sanitizeIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v15

    .line 130
    .local v15, "sanitizedIntent":Landroid/content/Intent;
    const/16 v16, 0x0

    .line 131
    .local v16, "resolveInfo":Landroid/content/pm/AuxiliaryResolveInfo;
    const/16 v17, 0x0

    .line 133
    .local v17, "resolutionStatus":I
    const/4 v10, 0x2

    :try_start_0
    iget-object v0, v1, Landroid/content/pm/InstantAppRequest;->digest:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    .line 135
    invoke-virtual {v0}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->getDigestPrefixSecure()[I

    move-result-object v0

    iget v4, v1, Landroid/content/pm/InstantAppRequest;->userId:I

    .line 134
    move-object/from16 v9, p0

    invoke-virtual {v9, v15, v0, v4, v11}, Lcom/android/server/pm/InstantAppResolverConnection;->getInstantAppResolveInfoList(Landroid/content/Intent;[IILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 136
    .local v0, "instantAppResolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstantAppResolveInfo;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 137
    iget-object v6, v1, Landroid/content/pm/InstantAppRequest;->resolvedType:Ljava/lang/String;

    iget v7, v1, Landroid/content/pm/InstantAppRequest;->userId:I

    .line 139
    invoke-virtual {v14}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v8

    iget-object v5, v1, Landroid/content/pm/InstantAppRequest;->digest:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;
    :try_end_0
    .catch Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 137
    move-object v4, v0

    move-object/from16 v18, v5

    move-object v5, v14

    move-object/from16 v9, v18

    move-object/from16 v18, v15

    move v15, v10

    .end local v15    # "sanitizedIntent":Landroid/content/Intent;
    .local v18, "sanitizedIntent":Landroid/content/Intent;
    move-object v10, v11

    :try_start_1
    invoke-static/range {v4 .. v10}, Lcom/android/server/pm/InstantAppResolver;->filterInstantAppIntent(Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;Ljava/lang/String;)Landroid/content/pm/AuxiliaryResolveInfo;

    move-result-object v4
    :try_end_1
    .catch Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v16, v4

    .end local v16    # "resolveInfo":Landroid/content/pm/AuxiliaryResolveInfo;
    .local v4, "resolveInfo":Landroid/content/pm/AuxiliaryResolveInfo;
    goto :goto_0

    .line 141
    .end local v0    # "instantAppResolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstantAppResolveInfo;>;"
    .end local v4    # "resolveInfo":Landroid/content/pm/AuxiliaryResolveInfo;
    .restart local v16    # "resolveInfo":Landroid/content/pm/AuxiliaryResolveInfo;
    :catch_0
    move-exception v0

    goto :goto_1

    .line 136
    .end local v18    # "sanitizedIntent":Landroid/content/Intent;
    .restart local v0    # "instantAppResolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstantAppResolveInfo;>;"
    .restart local v15    # "sanitizedIntent":Landroid/content/Intent;
    :cond_1
    move-object/from16 v18, v15

    move v15, v10

    .line 149
    .end local v0    # "instantAppResolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstantAppResolveInfo;>;"
    .end local v15    # "sanitizedIntent":Landroid/content/Intent;
    .restart local v18    # "sanitizedIntent":Landroid/content/Intent;
    :goto_0
    move/from16 v0, v17

    goto :goto_2

    .line 141
    .end local v18    # "sanitizedIntent":Landroid/content/Intent;
    .restart local v15    # "sanitizedIntent":Landroid/content/Intent;
    :catch_1
    move-exception v0

    move-object/from16 v18, v15

    move v15, v10

    .line 142
    .end local v15    # "sanitizedIntent":Landroid/content/Intent;
    .local v0, "e":Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;
    .restart local v18    # "sanitizedIntent":Landroid/content/Intent;
    :goto_1
    iget v4, v0, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;->failure:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 143
    const/16 v17, 0x2

    move/from16 v0, v17

    goto :goto_2

    .line 144
    :cond_2
    iget v4, v0, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;->failure:I

    if-ne v4, v15, :cond_3

    .line 145
    const/16 v17, 0x3

    move/from16 v0, v17

    goto :goto_2

    .line 147
    :cond_3
    const/16 v17, 0x1

    move/from16 v0, v17

    .line 151
    .end local v17    # "resolutionStatus":I
    .local v0, "resolutionStatus":I
    :goto_2
    iget-boolean v4, v1, Landroid/content/pm/InstantAppRequest;->resolveForStart:Z

    if-eqz v4, :cond_4

    if-nez v0, :cond_4

    .line 152
    const/16 v4, 0x383

    invoke-static {v4, v2, v3, v11, v0}, Lcom/android/server/pm/InstantAppResolver;->logMetrics(IJLjava/lang/String;I)V

    .line 155
    :cond_4
    sget-boolean v4, Lcom/android/server/pm/InstantAppResolver;->DEBUG_INSTANT:Z

    if-eqz v4, :cond_8

    if-nez v16, :cond_8

    .line 156
    if-ne v0, v15, :cond_5

    .line 157
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] Phase1; bind timed out"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 158
    :cond_5
    const/4 v4, 0x3

    if-ne v0, v4, :cond_6

    .line 159
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] Phase1; call timed out"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 160
    :cond_6
    if-eqz v0, :cond_7

    .line 161
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] Phase1; service connection error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 163
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] Phase1; No results matched"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_8
    :goto_3
    if-nez v16, :cond_9

    invoke-virtual {v14}, Landroid/content/Intent;->getFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x800

    if-eqz v4, :cond_9

    .line 168
    new-instance v4, Landroid/content/pm/AuxiliaryResolveInfo;

    const/4 v5, 0x0

    invoke-static {v14, v11}, Lcom/android/server/pm/InstantAppResolver;->createFailureIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v4, v11, v5, v6, v7}, Landroid/content/pm/AuxiliaryResolveInfo;-><init>(Ljava/lang/String;ZLandroid/content/Intent;Ljava/util/List;)V

    return-object v4

    .line 171
    :cond_9
    return-object v16
.end method

.method public static doInstantAppResolutionPhaseTwo(Landroid/content/Context;Lcom/android/server/pm/InstantAppResolverConnection;Landroid/content/pm/InstantAppRequest;Landroid/content/pm/ActivityInfo;Landroid/os/Handler;)V
    .locals 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "connection"    # Lcom/android/server/pm/InstantAppResolverConnection;
    .param p2, "requestObj"    # Landroid/content/pm/InstantAppRequest;
    .param p3, "instantAppInstaller"    # Landroid/content/pm/ActivityInfo;
    .param p4, "callbackHandler"    # Landroid/os/Handler;

    .line 177
    move-object/from16 v8, p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 178
    .local v12, "startTime":J
    iget-object v0, v8, Landroid/content/pm/InstantAppRequest;->responseObj:Landroid/content/pm/AuxiliaryResolveInfo;

    iget-object v15, v0, Landroid/content/pm/AuxiliaryResolveInfo;->token:Ljava/lang/String;

    .line 179
    .local v15, "token":Ljava/lang/String;
    sget-boolean v0, Lcom/android/server/pm/InstantAppResolver;->DEBUG_INSTANT:Z

    const-string v11, "["

    const-string v10, "PackageManager"

    if-eqz v0, :cond_0

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] Phase2; resolving"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_0
    iget-object v9, v8, Landroid/content/pm/InstantAppRequest;->origIntent:Landroid/content/Intent;

    .line 183
    .local v9, "origIntent":Landroid/content/Intent;
    invoke-static {v9}, Lcom/android/server/pm/InstantAppResolver;->sanitizeIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v18

    .line 185
    .local v18, "sanitizedIntent":Landroid/content/Intent;
    new-instance v14, Lcom/android/server/pm/InstantAppResolver$1;

    move-object v1, v14

    move-object v2, v9

    move-object/from16 v3, p2

    move-object v4, v15

    move-object/from16 v5, v18

    move-object/from16 v6, p3

    move-object/from16 v7, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/InstantAppResolver$1;-><init>(Landroid/content/Intent;Landroid/content/pm/InstantAppRequest;Ljava/lang/String;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/Context;)V

    .line 226
    .local v14, "callback":Lcom/android/server/pm/InstantAppResolverConnection$PhaseTwoCallback;
    :try_start_0
    iget-object v0, v8, Landroid/content/pm/InstantAppRequest;->digest:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    .line 227
    invoke-virtual {v0}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->getDigestPrefixSecure()[I

    move-result-object v0

    iget v1, v8, Landroid/content/pm/InstantAppRequest;->userId:I
    :try_end_0
    .catch Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 226
    move-object v2, v9

    .end local v9    # "origIntent":Landroid/content/Intent;
    .local v2, "origIntent":Landroid/content/Intent;
    move-object/from16 v9, p1

    move-object v3, v10

    move-object/from16 v10, v18

    move-object v4, v11

    move-object v11, v0

    move-wide v5, v12

    .end local v12    # "startTime":J
    .local v5, "startTime":J
    move v12, v1

    move-object v13, v15

    move-object v1, v15

    .end local v15    # "token":Ljava/lang/String;
    .local v1, "token":Ljava/lang/String;
    move-object/from16 v15, p4

    move-wide/from16 v16, v5

    :try_start_1
    invoke-virtual/range {v9 .. v17}, Lcom/android/server/pm/InstantAppResolverConnection;->getInstantAppIntentFilterList(Landroid/content/Intent;[IILjava/lang/String;Lcom/android/server/pm/InstantAppResolverConnection$PhaseTwoCallback;Landroid/os/Handler;J)V
    :try_end_1
    .catch Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException; {:try_start_1 .. :try_end_1} :catch_0

    .line 243
    goto :goto_1

    .line 229
    :catch_0
    move-exception v0

    goto :goto_0

    .end local v1    # "token":Ljava/lang/String;
    .end local v2    # "origIntent":Landroid/content/Intent;
    .end local v5    # "startTime":J
    .restart local v9    # "origIntent":Landroid/content/Intent;
    .restart local v12    # "startTime":J
    .restart local v15    # "token":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object v2, v9

    move-object v3, v10

    move-object v4, v11

    move-wide v5, v12

    move-object v1, v15

    .line 230
    .end local v9    # "origIntent":Landroid/content/Intent;
    .end local v12    # "startTime":J
    .end local v15    # "token":Ljava/lang/String;
    .local v0, "e":Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;
    .restart local v1    # "token":Ljava/lang/String;
    .restart local v2    # "origIntent":Landroid/content/Intent;
    .restart local v5    # "startTime":J
    :goto_0
    const/4 v7, 0x1

    .line 231
    .local v7, "resolutionStatus":I
    iget v9, v0, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;->failure:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    .line 232
    const/4 v7, 0x2

    .line 234
    :cond_1
    const/16 v9, 0x384

    invoke-static {v9, v5, v6, v1, v7}, Lcom/android/server/pm/InstantAppResolver;->logMetrics(IJLjava/lang/String;I)V

    .line 236
    sget-boolean v9, Lcom/android/server/pm/InstantAppResolver;->DEBUG_INSTANT:Z

    if-eqz v9, :cond_3

    .line 237
    const/4 v9, 0x2

    if-ne v7, v9, :cond_2

    .line 238
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] Phase2; bind timed out"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 240
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] Phase2; service connection error"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    .end local v0    # "e":Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;
    .end local v7    # "resolutionStatus":I
    :cond_3
    :goto_1
    return-void
.end method

.method private static filterInstantAppIntent(Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;Ljava/lang/String;)Landroid/content/pm/AuxiliaryResolveInfo;
    .locals 16
    .param p1, "origIntent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "digest"    # Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;
    .param p6, "token"    # Ljava/lang/String;
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
            "Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/AuxiliaryResolveInfo;"
        }
    .end annotation

    .line 363
    .local p0, "instantAppResolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstantAppResolveInfo;>;"
    move-object/from16 v6, p6

    invoke-virtual/range {p5 .. p5}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->getDigestPrefix()[I

    move-result-object v7

    .line 364
    .local v7, "shaPrefix":[I
    invoke-virtual/range {p5 .. p5}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->getDigestBytes()[[B

    move-result-object v8

    .line 365
    .local v8, "digestBytes":[[B
    const/4 v0, 0x0

    .line 366
    .local v0, "requiresSecondPhase":Z
    const/4 v1, 0x0

    .line 367
    .local v1, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->isWebIntent()Z

    move-result v2

    const/4 v9, 0x1

    if-nez v2, :cond_1

    array-length v2, v7

    if-lez v2, :cond_0

    .line 368
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x800

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v9

    :goto_1
    move v10, v2

    .line 369
    .local v10, "requiresPrefixMatch":Z
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v13, v0

    move-object v12, v1

    .end local v0    # "requiresSecondPhase":Z
    .end local v1    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;>;"
    .local v12, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;>;"
    .local v13, "requiresSecondPhase":Z
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/content/pm/InstantAppResolveInfo;

    .line 370
    .local v14, "instantAppResolveInfo":Landroid/content/pm/InstantAppResolveInfo;
    if-eqz v10, :cond_2

    invoke-virtual {v14}, Landroid/content/pm/InstantAppResolveInfo;->shouldLetInstallerDecide()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 371
    const-string v0, "PackageManager"

    const-string v1, "InstantAppResolveInfo with mShouldLetInstallerDecide=true when digest required; ignoring"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    goto :goto_2

    .line 375
    :cond_2
    invoke-virtual {v14}, Landroid/content/pm/InstantAppResolveInfo;->getDigestBytes()[B

    move-result-object v15

    .line 378
    .local v15, "filterDigestBytes":[B
    array-length v0, v7

    if-lez v0, :cond_6

    if-nez v10, :cond_3

    array-length v0, v15

    if-lez v0, :cond_6

    .line 379
    :cond_3
    const/4 v0, 0x0

    .line 381
    .local v0, "matchFound":Z
    array-length v1, v7

    sub-int/2addr v1, v9

    .local v1, "i":I
    :goto_3
    if-ltz v1, :cond_5

    .line 382
    aget-object v2, v8, v1

    invoke-static {v2, v15}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 383
    const/4 v0, 0x1

    .line 384
    goto :goto_4

    .line 381
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 387
    .end local v1    # "i":I
    :cond_5
    :goto_4
    if-nez v0, :cond_6

    .line 388
    goto :goto_2

    .line 392
    .end local v0    # "matchFound":Z
    :cond_6
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p6

    move-object v5, v14

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/InstantAppResolver;->computeResolveFilters(Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/pm/InstantAppResolveInfo;)Ljava/util/List;

    move-result-object v0

    .line 394
    .local v0, "matchFilters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;>;"
    if-eqz v0, :cond_9

    .line 395
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 396
    const/4 v13, 0x1

    .line 398
    :cond_7
    if-nez v12, :cond_8

    .line 399
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v12, v1

    .end local v12    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;>;"
    .local v1, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;>;"
    goto :goto_5

    .line 401
    .end local v1    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;>;"
    .restart local v12    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;>;"
    :cond_8
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 404
    .end local v0    # "matchFilters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;>;"
    .end local v14    # "instantAppResolveInfo":Landroid/content/pm/InstantAppResolveInfo;
    .end local v15    # "filterDigestBytes":[B
    :cond_9
    :goto_5
    goto :goto_2

    .line 405
    :cond_a
    if-eqz v12, :cond_b

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 406
    new-instance v0, Landroid/content/pm/AuxiliaryResolveInfo;

    .line 407
    move-object/from16 v1, p1

    invoke-static {v1, v6}, Lcom/android/server/pm/InstantAppResolver;->createFailureIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v0, v6, v13, v2, v12}, Landroid/content/pm/AuxiliaryResolveInfo;-><init>(Ljava/lang/String;ZLandroid/content/Intent;Ljava/util/List;)V

    .line 406
    return-object v0

    .line 405
    :cond_b
    move-object/from16 v1, p1

    .line 410
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getLogger()Lcom/android/internal/logging/MetricsLogger;
    .locals 1

    .line 92
    sget-object v0, Lcom/android/server/pm/InstantAppResolver;->sMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    sput-object v0, Lcom/android/server/pm/InstantAppResolver;->sMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 95
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

    .line 507
    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, p0}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 508
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    new-instance v1, Ljava/lang/Long;

    .line 510
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p1

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    .line 509
    const/16 v2, 0x385

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 511
    const/16 v1, 0x387

    invoke-virtual {v0, v1, p3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p4}, Ljava/lang/Integer;-><init>(I)V

    .line 512
    const/16 v2, 0x386

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 513
    .local v0, "logMaker":Landroid/metrics/LogMaker;
    invoke-static {}, Lcom/android/server/pm/InstantAppResolver;->getLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 514
    return-void
.end method

.method public static sanitizeIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p0, "origIntent"    # Landroid/content/Intent;

    .line 104
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 105
    .local v0, "sanitizedIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    .line 106
    .local v1, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 107
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 108
    .local v3, "category":Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    .end local v3    # "category":Ljava/lang/String;
    goto :goto_0

    .line 111
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_1

    .line 112
    const/4 v2, 0x0

    goto :goto_1

    .line 113
    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    :goto_1
    nop

    .line 114
    .local v2, "sanitizedUri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 116
    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    return-object v0
.end method
