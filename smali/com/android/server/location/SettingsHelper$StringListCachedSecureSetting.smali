.class Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;
.super Lcom/android/server/location/SettingsHelper$ObservingSetting;
.source "SettingsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/SettingsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringListCachedSecureSetting"
.end annotation


# instance fields
.field private mCachedUserId:I

.field private mCachedValue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mSettingName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "settingName"    # Ljava/lang/String;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 461
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/android/server/location/SettingsHelper$ObservingSetting;-><init>(Landroid/os/Handler;Lcom/android/server/location/SettingsHelper$1;)V

    .line 462
    iput-object p1, p0, Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;->mContext:Landroid/content/Context;

    .line 463
    iput-object p2, p0, Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;->mSettingName:Ljava/lang/String;

    .line 465
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;->mCachedUserId:I

    .line 466
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/android/server/location/SettingsHelper$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Landroid/os/Handler;
    .param p4, "x3"    # Lcom/android/server/location/SettingsHelper$1;

    .line 449
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized getValueForUser(I)Ljava/util/List;
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 473
    const/16 v0, -0x2710

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 475
    iget-object v0, p0, Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;->mCachedValue:Ljava/util/List;

    .line 476
    .local v0, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget v1, p0, Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;->mCachedUserId:I

    if-eq p1, v1, :cond_2

    .line 477
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 479
    .local v1, "identity":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;->mSettingName:Ljava/lang/String;

    invoke-static {v3, v4, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 481
    .local v3, "setting":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_1

    .line 482
    :try_start_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v4

    goto :goto_1

    .line 487
    .end local v3    # "setting":Ljava/lang/String;
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 484
    .restart local v3    # "setting":Ljava/lang/String;
    :cond_1
    :try_start_3
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v0, v4

    .line 487
    .end local v3    # "setting":Ljava/lang/String;
    :goto_1
    :try_start_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 488
    nop

    .line 490
    invoke-virtual {p0}, Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;->isRegistered()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 491
    iput p1, p0, Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;->mCachedUserId:I

    .line 492
    iput-object v0, p0, Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;->mCachedValue:Ljava/util/List;

    goto :goto_3

    .line 487
    .end local p0    # "this":Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;
    :catchall_1
    move-exception v3

    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 488
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 496
    .end local v1    # "identity":J
    :cond_2
    :goto_3
    monitor-exit p0

    return-object v0

    .line 472
    .end local v0    # "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p1    # "userId":I
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized invalidateForUser(I)V
    .locals 1
    .param p1, "userId"    # I

    monitor-enter p0

    .line 500
    :try_start_0
    iget v0, p0, Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;->mCachedUserId:I

    if-ne v0, p1, :cond_0

    .line 501
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;->mCachedUserId:I

    .line 502
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;->mCachedValue:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 504
    .end local p0    # "this":Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;
    :cond_0
    monitor-exit p0

    return-void

    .line 499
    .end local p1    # "userId":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onChange(ZLandroid/net/Uri;I)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .line 508
    invoke-virtual {p0, p3}, Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;->invalidateForUser(I)V

    .line 509
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/location/SettingsHelper$ObservingSetting;->onChange(ZLandroid/net/Uri;I)V

    .line 510
    return-void
.end method

.method public register()V
    .locals 2

    .line 469
    iget-object v0, p0, Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;->mSettingName:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;->register(Landroid/content/Context;Landroid/net/Uri;)V

    .line 470
    return-void
.end method
