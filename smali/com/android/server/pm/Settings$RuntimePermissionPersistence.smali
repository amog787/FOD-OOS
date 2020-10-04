.class final Lcom/android/server/pm/Settings$RuntimePermissionPersistence;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RuntimePermissionPersistence"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;
    }
.end annotation


# static fields
.field private static final INITIAL_VERSION:I = 0x0

.field private static final MAX_WRITE_PERMISSIONS_DELAY_MILLIS:J = 0x7d0L

.field private static final UPGRADE_VERSION:I = -0x1

.field private static final WRITE_PERMISSIONS_DELAY_MILLIS:J = 0xc8L


# instance fields
.field private final mDefaultPermissionsGranted:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mFingerprints:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mLastNotWrittenMutationTimesMillis:Landroid/util/SparseLongArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mPersistenceLock:Ljava/lang/Object;

.field private final mVersions:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mWriteScheduled:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/pm/Settings;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/Settings;Ljava/lang/Object;)V
    .locals 0
    .param p2, "persistenceLock"    # Ljava/lang/Object;

    .line 5225
    iput-object p1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5202
    new-instance p1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;

    invoke-direct {p1, p0}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;-><init>(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;)V

    iput-object p1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    .line 5206
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mWriteScheduled:Landroid/util/SparseBooleanArray;

    .line 5209
    new-instance p1, Landroid/util/SparseLongArray;

    invoke-direct {p1}, Landroid/util/SparseLongArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLastNotWrittenMutationTimesMillis:Landroid/util/SparseLongArray;

    .line 5213
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mVersions:Landroid/util/SparseIntArray;

    .line 5217
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    .line 5221
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mDefaultPermissionsGranted:Landroid/util/SparseBooleanArray;

    .line 5226
    iput-object p2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPersistenceLock:Ljava/lang/Object;

    .line 5227
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/Settings$RuntimePermissionPersistence;
    .param p1, "x1"    # I

    .line 5195
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->onUserRemovedLPw(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/Settings$RuntimePermissionPersistence;
    .param p1, "x1"    # I

    .line 5195
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsSync(I)V

    return-void
.end method

.method private onUserRemovedLPw(I)V
    .locals 2
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "Settings.this.mLock"
        }
    .end annotation

    .line 5388
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5390
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/SettingBase;

    .line 5391
    .local v1, "sb":Lcom/android/server/pm/SettingBase;
    invoke-direct {p0, v1, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->revokeRuntimePermissionsAndClearFlags(Lcom/android/server/pm/SettingBase;I)V

    .line 5392
    .end local v1    # "sb":Lcom/android/server/pm/SettingBase;
    goto :goto_0

    .line 5394
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/SettingBase;

    .line 5395
    .restart local v1    # "sb":Lcom/android/server/pm/SettingBase;
    invoke-direct {p0, v1, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->revokeRuntimePermissionsAndClearFlags(Lcom/android/server/pm/SettingBase;I)V

    .line 5396
    .end local v1    # "sb":Lcom/android/server/pm/SettingBase;
    goto :goto_1

    .line 5398
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mDefaultPermissionsGranted:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 5399
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mVersions:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 5400
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 5401
    return-void
.end method

.method private parsePermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/permission/PermissionsState;I)V
    .locals 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "permissionsState"    # Lcom/android/server/pm/permission/PermissionsState;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 5501
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 5503
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_b

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    .line 5504
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_b

    .line 5505
    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    .line 5506
    goto :goto_0

    .line 5509
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, 0x317b13

    const/4 v7, 0x0

    if-eq v5, v6, :cond_4

    :cond_3
    goto :goto_1

    :cond_4
    const-string/jumbo v5, "item"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v4, v7

    :goto_1
    if-eqz v4, :cond_5

    goto :goto_5

    .line 5511
    :cond_5
    const/4 v1, 0x0

    const-string/jumbo v4, "name"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5512
    .local v4, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v5, v5, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/permission/PermissionSettings;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v5

    .line 5513
    .local v5, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-nez v5, :cond_6

    .line 5514
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown permission:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "PackageManager"

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5515
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5516
    goto :goto_0

    .line 5519
    :cond_6
    const-string v6, "granted"

    invoke-interface {p1, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 5520
    .local v6, "grantedStr":Ljava/lang/String;
    if-eqz v6, :cond_8

    .line 5521
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    goto :goto_2

    :cond_7
    move v3, v7

    goto :goto_3

    :cond_8
    :goto_2
    nop

    .line 5523
    .local v3, "granted":Z
    :goto_3
    const-string v8, "flags"

    invoke-interface {p1, v1, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5524
    .local v1, "flagsStr":Ljava/lang/String;
    if-eqz v1, :cond_9

    .line 5525
    const/16 v7, 0x10

    invoke-static {v1, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    goto :goto_4

    :cond_9
    nop

    .line 5527
    .local v7, "flags":I
    :goto_4
    const v8, 0xfbff

    if-eqz v3, :cond_a

    .line 5528
    invoke-virtual {p2, v5, p3}, Lcom/android/server/pm/permission/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    .line 5529
    invoke-virtual {p2, v5, p3, v8, v7}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    goto :goto_5

    .line 5532
    :cond_a
    invoke-virtual {p2, v5, p3, v8, v7}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 5536
    .end local v1    # "flagsStr":Ljava/lang/String;
    .end local v3    # "granted":Z
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v6    # "grantedStr":Ljava/lang/String;
    .end local v7    # "flags":I
    :goto_5
    goto/16 :goto_0

    .line 5539
    :cond_b
    return-void
.end method

.method private parseRuntimePermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "Settings.this.mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 5453
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 5455
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_c

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    .line 5456
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_c

    .line 5457
    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    .line 5458
    goto :goto_0

    .line 5461
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, 0x1b1cc

    const/4 v6, 0x2

    const/4 v7, -0x1

    if-eq v4, v5, :cond_6

    const v5, 0x98dd20f

    if-eq v4, v5, :cond_5

    const v5, 0x1cf15833

    if-eq v4, v5, :cond_4

    :cond_3
    goto :goto_1

    :cond_4
    const-string/jumbo v4, "shared-user"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v6

    goto :goto_2

    :cond_5
    const-string/jumbo v4, "runtime-permissions"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_2

    :cond_6
    const-string/jumbo v4, "pkg"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_2

    :goto_1
    move v1, v7

    :goto_2
    const/4 v4, 0x0

    if-eqz v1, :cond_b

    const-string v5, "PackageManager"

    const-string/jumbo v7, "name"

    if-eq v1, v3, :cond_9

    if-eq v1, v6, :cond_7

    goto/16 :goto_3

    .line 5486
    :cond_7
    invoke-interface {p1, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5487
    .local v1, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v3, v3, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/SharedUserSetting;

    .line 5488
    .local v3, "sus":Lcom/android/server/pm/SharedUserSetting;
    if-nez v3, :cond_8

    .line 5489
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown shared user:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5490
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5491
    goto/16 :goto_0

    .line 5493
    :cond_8
    invoke-virtual {v3}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v4

    invoke-direct {p0, p1, v4, p2}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->parsePermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/permission/PermissionsState;I)V

    goto :goto_3

    .line 5475
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "sus":Lcom/android/server/pm/SharedUserSetting;
    :cond_9
    invoke-interface {p1, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5476
    .restart local v1    # "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v3, v3, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 5477
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v3, :cond_a

    .line 5478
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown package:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5479
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5480
    goto/16 :goto_0

    .line 5482
    :cond_a
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v4

    invoke-direct {p0, p1, v4, p2}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->parsePermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/permission/PermissionsState;I)V

    .line 5483
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    goto :goto_3

    .line 5465
    :cond_b
    const-string/jumbo v1, "version"

    invoke-static {p1, v1, v7}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    .line 5467
    .local v1, "version":I
    iget-object v3, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mVersions:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 5468
    const-string v3, "fingerprint"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5469
    .local v3, "fingerprint":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    invoke-virtual {v4, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5470
    sget-object v4, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 5471
    .local v4, "defaultsGranted":Z
    iget-object v5, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mDefaultPermissionsGranted:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, p2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 5472
    .end local v1    # "version":I
    .end local v3    # "fingerprint":Ljava/lang/String;
    .end local v4    # "defaultsGranted":Z
    nop

    .line 5494
    :goto_3
    goto/16 :goto_0

    .line 5497
    :cond_c
    return-void
.end method

.method private revokeRuntimePermissionsAndClearFlags(Lcom/android/server/pm/SettingBase;I)V
    .locals 6
    .param p1, "sb"    # Lcom/android/server/pm/SettingBase;
    .param p2, "userId"    # I

    .line 5404
    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v0

    .line 5406
    .local v0, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {v0, p2}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionStates(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 5407
    .local v2, "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    iget-object v3, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v3, v3, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/pm/permission/PermissionSettings;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v3

    .line 5408
    .local v3, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v3, :cond_0

    .line 5409
    invoke-virtual {v0, v3, p2}, Lcom/android/server/pm/permission/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    .line 5410
    const v4, 0xfbff

    const/4 v5, 0x0

    invoke-virtual {v0, v3, p2, v4, v5}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 5413
    .end local v2    # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .end local v3    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_0
    goto :goto_0

    .line 5414
    :cond_1
    return-void
.end method

.method private writePermissions(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V
    .locals 6
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/PermissionsState$PermissionState;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5543
    .local p2, "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 5544
    .local v1, "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    const-string/jumbo v2, "item"

    const/4 v3, 0x0

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5545
    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "name"

    invoke-interface {p1, v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5546
    nop

    .line 5547
    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->isGranted()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    .line 5546
    const-string v5, "granted"

    invoke-interface {p1, v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5548
    nop

    .line 5549
    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 5548
    const-string v5, "flags"

    invoke-interface {p1, v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5550
    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5551
    .end local v1    # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    goto :goto_0

    .line 5552
    :cond_0
    return-void
.end method

.method private writePermissionsSync(I)V
    .locals 16
    .param p1, "userId"    # I

    .line 5291
    move-object/from16 v1, p0

    move/from16 v2, p1

    new-instance v0, Landroid/util/AtomicFile;

    iget-object v3, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    invoke-static {v3, v2}, Lcom/android/server/pm/Settings;->access$200(Lcom/android/server/pm/Settings;I)Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "package-perms-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v3, v0

    .line 5294
    .local v3, "destination":Landroid/util/AtomicFile;
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v4, v0

    .line 5295
    .local v4, "permissionsForPackage":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;>;"
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v5, v0

    .line 5297
    .local v5, "permissionsForSharedUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;>;"
    iget-object v6, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPersistenceLock:Ljava/lang/Object;

    monitor-enter v6

    .line 5298
    :try_start_0
    iget-object v0, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mWriteScheduled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 5300
    iget-object v0, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 5301
    .local v0, "packageCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v0, :cond_1

    .line 5302
    iget-object v8, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v8, v8, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 5303
    .local v8, "packageName":Ljava/lang/String;
    iget-object v9, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v9, v9, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/PackageSetting;

    .line 5304
    .local v9, "packageSetting":Lcom/android/server/pm/PackageSetting;
    iget-object v10, v9, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v10, :cond_0

    .line 5305
    invoke-virtual {v9}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v10

    .line 5306
    .local v10, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    nop

    .line 5307
    invoke-virtual {v10, v2}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionStates(I)Ljava/util/List;

    move-result-object v11

    .line 5308
    .local v11, "permissionsStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_0

    .line 5309
    invoke-virtual {v4, v8, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5301
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    .end local v10    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v11    # "permissionsStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 5314
    .end local v7    # "i":I
    :cond_1
    iget-object v7, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v7, v7, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    .line 5315
    .local v7, "sharedUserCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v7, :cond_3

    .line 5316
    iget-object v9, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v9, v9, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 5317
    .local v9, "sharedUserName":Ljava/lang/String;
    iget-object v10, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v10, v10, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v10, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/SharedUserSetting;

    .line 5318
    .local v10, "sharedUser":Lcom/android/server/pm/SharedUserSetting;
    invoke-virtual {v10}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v11

    .line 5319
    .local v11, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    nop

    .line 5320
    invoke-virtual {v11, v2}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionStates(I)Ljava/util/List;

    move-result-object v12

    .line 5321
    .local v12, "permissionsStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_2

    .line 5322
    invoke-virtual {v5, v9, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5315
    .end local v9    # "sharedUserName":Ljava/lang/String;
    .end local v10    # "sharedUser":Lcom/android/server/pm/SharedUserSetting;
    .end local v11    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v12    # "permissionsStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 5325
    .end local v0    # "packageCount":I
    .end local v7    # "sharedUserCount":I
    .end local v8    # "i":I
    :cond_3
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 5327
    const/4 v6, 0x0

    .line 5329
    .local v6, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0

    move-object v6, v0

    .line 5331
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    .line 5332
    .local v0, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 5333
    const-string v7, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v8, 0x1

    invoke-interface {v0, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 5335
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v9, 0x0

    invoke-interface {v0, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 5337
    const-string/jumbo v7, "runtime-permissions"

    invoke-interface {v0, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5339
    iget-object v7, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mVersions:Landroid/util/SparseIntArray;

    const/4 v10, 0x0

    invoke-virtual {v7, v2, v10}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    .line 5340
    .local v7, "version":I
    const-string/jumbo v10, "version"

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5342
    iget-object v10, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    invoke-virtual {v10, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 5343
    .local v10, "fingerprint":Ljava/lang/String;
    if-eqz v10, :cond_4

    .line 5344
    const-string v11, "fingerprint"

    invoke-interface {v0, v9, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5347
    :cond_4
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v11

    .line 5348
    .local v11, "packageCount":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    if-ge v12, v11, :cond_5

    .line 5349
    invoke-virtual {v4, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 5350
    .local v13, "packageName":Ljava/lang/String;
    invoke-virtual {v4, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    .line 5351
    .local v14, "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    const-string/jumbo v15, "pkg"

    invoke-interface {v0, v9, v15}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5352
    const-string/jumbo v15, "name"

    invoke-interface {v0, v9, v15, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5353
    invoke-direct {v1, v0, v14}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissions(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    .line 5354
    const-string/jumbo v15, "pkg"

    invoke-interface {v0, v9, v15}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5348
    nop

    .end local v13    # "packageName":Ljava/lang/String;
    .end local v14    # "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 5357
    .end local v12    # "i":I
    :cond_5
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v12

    .line 5358
    .local v12, "sharedUserCount":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_3
    if-ge v13, v12, :cond_6

    .line 5359
    invoke-virtual {v5, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 5360
    .local v14, "packageName":Ljava/lang/String;
    invoke-virtual {v5, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    .line 5361
    .local v15, "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    const-string/jumbo v8, "shared-user"

    invoke-interface {v0, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5362
    const-string/jumbo v8, "name"

    invoke-interface {v0, v9, v8, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5363
    invoke-direct {v1, v0, v15}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissions(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    .line 5364
    const-string/jumbo v8, "shared-user"

    invoke-interface {v0, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5358
    nop

    .end local v14    # "packageName":Ljava/lang/String;
    .end local v15    # "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    add-int/lit8 v13, v13, 0x1

    const/4 v8, 0x1

    goto :goto_3

    .line 5367
    .end local v13    # "i":I
    :cond_6
    const-string/jumbo v8, "runtime-permissions"

    invoke-interface {v0, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5369
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 5370
    invoke-virtual {v3, v6}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 5372
    sget-object v8, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 5373
    iget-object v8, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mDefaultPermissionsGranted:Landroid/util/SparseBooleanArray;

    const/4 v9, 0x1

    invoke-virtual {v8, v2, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 5376
    .end local v0    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v7    # "version":I
    .end local v10    # "fingerprint":Ljava/lang/String;
    .end local v11    # "packageCount":I
    .end local v12    # "sharedUserCount":I
    :catchall_0
    move-exception v0

    .line 5377
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string v7, "PackageManager"

    const-string v8, "Failed to write settings, restoring backup"

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5379
    invoke-virtual {v3, v6}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5381
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_7
    :goto_4
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 5382
    nop

    .line 5383
    return-void

    .line 5381
    :catchall_1
    move-exception v0

    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    .line 5325
    .end local v6    # "out":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v0

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
.end method


# virtual methods
.method public areDefaultRuntimePermissionsGrantedLPr(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "Settings.this.mLock"
        }
    .end annotation

    .line 5242
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mDefaultPermissionsGranted:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method public deleteUserRuntimePermissionsFile(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 5417
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    invoke-static {v0, p1}, Lcom/android/server/pm/Settings;->access$200(Lcom/android/server/pm/Settings;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 5418
    return-void
.end method

.method getVersionLPr(I)I
    .locals 2
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "Settings.this.mLock"
        }
    .end annotation

    .line 5231
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mVersions:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method public readStateForUserSyncLPr(I)V
    .locals 6
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "Settings.this.mLock"
        }
    .end annotation

    .line 5422
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    invoke-static {v0, p1}, Lcom/android/server/pm/Settings;->access$200(Lcom/android/server/pm/Settings;I)Ljava/io/File;

    move-result-object v0

    .line 5423
    .local v0, "permissionsFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5424
    return-void

    .line 5429
    :cond_0
    :try_start_0
    new-instance v1, Landroid/util/AtomicFile;

    invoke-direct {v1, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 5433
    .local v1, "in":Ljava/io/FileInputStream;
    nop

    .line 5436
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 5437
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 5438
    invoke-direct {p0, v2, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->parseRuntimePermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;I)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5444
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 5445
    nop

    .line 5446
    return-void

    .line 5444
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 5440
    :catch_0
    move-exception v2

    .line 5441
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed parsing permissions file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "permissionsFile":Ljava/io/File;
    .end local v1    # "in":Ljava/io/FileInputStream;
    .end local p0    # "this":Lcom/android/server/pm/Settings$RuntimePermissionPersistence;
    .end local p1    # "userId":I
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5444
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "permissionsFile":Ljava/io/File;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/server/pm/Settings$RuntimePermissionPersistence;
    .restart local p1    # "userId":I
    :goto_0
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2

    .line 5430
    .end local v1    # "in":Ljava/io/FileInputStream;
    :catch_1
    move-exception v1

    .line 5431
    .local v1, "fnfe":Ljava/io/FileNotFoundException;
    const-string v2, "PackageManager"

    const-string v3, "No permissions state"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5432
    return-void
.end method

.method public setRuntimePermissionsFingerPrintLPr(Ljava/lang/String;I)V
    .locals 1
    .param p1, "fingerPrint"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "Settings.this.mLock"
        }
    .end annotation

    .line 5248
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5249
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsForUserAsyncLPr(I)V

    .line 5250
    return-void
.end method

.method setVersionLPr(II)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "Settings.this.mLock"
        }
    .end annotation

    .line 5236
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mVersions:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 5237
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsForUserAsyncLPr(I)V

    .line 5238
    return-void
.end method

.method public writePermissionsForUserAsyncLPr(I)V
    .locals 13
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "Settings.this.mLock"
        }
    .end annotation

    .line 5259
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 5261
    .local v0, "currentTimeMillis":J
    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mWriteScheduled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    const-wide/16 v3, 0xc8

    if-eqz v2, :cond_1

    .line 5262
    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5265
    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLastNotWrittenMutationTimesMillis:Landroid/util/SparseLongArray;

    .line 5266
    invoke-virtual {v2, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v5

    .line 5267
    .local v5, "lastNotWrittenMutationTimeMillis":J
    sub-long v7, v0, v5

    .line 5269
    .local v7, "timeSinceLastNotWrittenMutationMillis":J
    const-wide/16 v9, 0x7d0

    cmp-long v2, v7, v9

    if-ltz v2, :cond_0

    .line 5270
    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 5271
    return-void

    .line 5275
    :cond_0
    add-long/2addr v9, v5

    sub-long/2addr v9, v0

    const-wide/16 v11, 0x0

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    .line 5277
    .local v9, "maxDelayMillis":J
    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 5280
    .local v2, "writeDelayMillis":J
    iget-object v4, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 5281
    .local v4, "message":Landroid/os/Message;
    iget-object v11, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    invoke-virtual {v11, v4, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5282
    .end local v2    # "writeDelayMillis":J
    .end local v4    # "message":Landroid/os/Message;
    .end local v5    # "lastNotWrittenMutationTimeMillis":J
    .end local v7    # "timeSinceLastNotWrittenMutationMillis":J
    .end local v9    # "maxDelayMillis":J
    goto :goto_0

    .line 5283
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLastNotWrittenMutationTimesMillis:Landroid/util/SparseLongArray;

    invoke-virtual {v2, p1, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 5284
    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 5285
    .local v2, "message":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5286
    iget-object v3, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mWriteScheduled:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 5288
    .end local v2    # "message":Landroid/os/Message;
    :goto_0
    return-void
.end method

.method public writePermissionsForUserSyncLPr(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 5253
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5254
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsSync(I)V

    .line 5255
    return-void
.end method
