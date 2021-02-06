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
.field private mExtendedFingerprint:Ljava/lang/String;

.field private final mFingerprints:Landroid/util/SparseArray;
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

.field private final mPermissionUpgradeNeeded:Landroid/util/SparseBooleanArray;

.field private final mPersistence:Lcom/android/permission/persistence/RuntimePermissionsPersistence;

.field private final mPersistenceLock:Ljava/lang/Object;

.field private final mVersions:Landroid/util/SparseIntArray;

.field private final mWriteScheduled:Landroid/util/SparseBooleanArray;

.field final synthetic this$0:Lcom/android/server/pm/Settings;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/Settings;Ljava/lang/Object;)V
    .locals 0
    .param p2, "persistenceLock"    # Ljava/lang/Object;

    .line 5472
    iput-object p1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5446
    nop

    .line 5447
    invoke-static {}, Lcom/android/permission/persistence/RuntimePermissionsPersistence;->createInstance()Lcom/android/permission/persistence/RuntimePermissionsPersistence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPersistence:Lcom/android/permission/persistence/RuntimePermissionsPersistence;

    .line 5449
    new-instance p1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;

    invoke-direct {p1, p0}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;-><init>(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;)V

    iput-object p1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    .line 5453
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mWriteScheduled:Landroid/util/SparseBooleanArray;

    .line 5456
    new-instance p1, Landroid/util/SparseLongArray;

    invoke-direct {p1}, Landroid/util/SparseLongArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLastNotWrittenMutationTimesMillis:Landroid/util/SparseLongArray;

    .line 5460
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mVersions:Landroid/util/SparseIntArray;

    .line 5464
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    .line 5468
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPermissionUpgradeNeeded:Landroid/util/SparseBooleanArray;

    .line 5473
    iput-object p2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPersistenceLock:Ljava/lang/Object;

    .line 5474
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/Settings$RuntimePermissionPersistence;
    .param p1, "x1"    # I

    .line 5437
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->onUserRemovedLPw(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/Settings$RuntimePermissionPersistence;
    .param p1, "x1"    # I

    .line 5437
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsSync(I)V

    return-void
.end method

.method private getExtendedFingerprint(J)Ljava/lang/String;
    .locals 2
    .param p1, "version"    # J

    .line 5515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?pc_version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPermissionsFromPermissionsState(Lcom/android/server/pm/permission/PermissionsState;I)Ljava/util/List;
    .locals 9
    .param p1, "permissionsState"    # Lcom/android/server/pm/permission/PermissionsState;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/PermissionsState;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;",
            ">;"
        }
    .end annotation

    .line 5601
    invoke-virtual {p1, p2}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionStates(I)Ljava/util/List;

    move-result-object v0

    .line 5603
    .local v0, "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5605
    .local v1, "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 5606
    .local v2, "permissionStatesSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 5607
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 5609
    .local v4, "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    new-instance v5, Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;

    .line 5610
    invoke-virtual {v4}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v6

    .line 5611
    invoke-virtual {v4}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->isGranted()Z

    move-result v7

    invoke-virtual {v4}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getFlags()I

    move-result v8

    invoke-direct {v5, v6, v7, v8}, Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;-><init>(Ljava/lang/String;ZI)V

    .line 5612
    .local v5, "permission":Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5606
    .end local v4    # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .end local v5    # "permission":Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5614
    .end local v3    # "i":I
    :cond_0
    return-object v1
.end method

.method private onUserRemovedLPw(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 5620
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5622
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

    .line 5623
    .local v1, "sb":Lcom/android/server/pm/SettingBase;
    invoke-direct {p0, v1, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->revokeRuntimePermissionsAndClearFlags(Lcom/android/server/pm/SettingBase;I)V

    .line 5624
    .end local v1    # "sb":Lcom/android/server/pm/SettingBase;
    goto :goto_0

    .line 5626
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

    .line 5627
    .restart local v1    # "sb":Lcom/android/server/pm/SettingBase;
    invoke-direct {p0, v1, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->revokeRuntimePermissionsAndClearFlags(Lcom/android/server/pm/SettingBase;I)V

    .line 5628
    .end local v1    # "sb":Lcom/android/server/pm/SettingBase;
    goto :goto_1

    .line 5630
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPermissionUpgradeNeeded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 5631
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mVersions:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 5632
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 5633
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

    .line 5818
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 5820
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

    .line 5821
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_b

    .line 5822
    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    .line 5823
    goto :goto_0

    .line 5826
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

    .line 5828
    :cond_5
    const/4 v1, 0x0

    const-string/jumbo v4, "name"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5829
    .local v4, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v5, v5, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/permission/PermissionSettings;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v5

    .line 5830
    .local v5, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-nez v5, :cond_6

    .line 5831
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown permission:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "PackageManager"

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5832
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5833
    goto :goto_0

    .line 5836
    :cond_6
    const-string v6, "granted"

    invoke-interface {p1, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 5837
    .local v6, "grantedStr":Ljava/lang/String;
    if-eqz v6, :cond_8

    .line 5838
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

    .line 5840
    .local v3, "granted":Z
    :goto_3
    const-string v8, "flags"

    invoke-interface {p1, v1, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5841
    .local v1, "flagsStr":Ljava/lang/String;
    if-eqz v1, :cond_9

    .line 5842
    const/16 v7, 0x10

    invoke-static {v1, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    goto :goto_4

    :cond_9
    nop

    .line 5844
    .local v7, "flags":I
    :goto_4
    const v8, 0x3fbff

    if-eqz v3, :cond_a

    .line 5845
    invoke-virtual {p2, v5, p3}, Lcom/android/server/pm/permission/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    .line 5846
    invoke-virtual {p2, v5, p3, v8, v7}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    goto :goto_5

    .line 5849
    :cond_a
    invoke-virtual {p2, v5, p3, v8, v7}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 5854
    .end local v1    # "flagsStr":Ljava/lang/String;
    .end local v3    # "granted":Z
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v6    # "grantedStr":Ljava/lang/String;
    .end local v7    # "flags":I
    :goto_5
    goto/16 :goto_0

    .line 5857
    :cond_b
    return-void
.end method

.method private parseRuntimePermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 5772
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 5774
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

    .line 5775
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_c

    .line 5776
    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    .line 5777
    goto :goto_0

    .line 5780
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

    .line 5803
    :cond_7
    invoke-interface {p1, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5804
    .local v1, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v3, v3, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/SharedUserSetting;

    .line 5805
    .local v3, "sus":Lcom/android/server/pm/SharedUserSetting;
    if-nez v3, :cond_8

    .line 5806
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown shared user:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5807
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5808
    goto/16 :goto_0

    .line 5810
    :cond_8
    invoke-virtual {v3}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v4

    invoke-direct {p0, p1, v4, p2}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->parsePermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/permission/PermissionsState;I)V

    goto :goto_3

    .line 5792
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "sus":Lcom/android/server/pm/SharedUserSetting;
    :cond_9
    invoke-interface {p1, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5793
    .restart local v1    # "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v3, v3, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 5794
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v3, :cond_a

    .line 5795
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown package:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5796
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5797
    goto/16 :goto_0

    .line 5799
    :cond_a
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v4

    invoke-direct {p0, p1, v4, p2}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->parsePermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/permission/PermissionsState;I)V

    .line 5800
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    goto :goto_3

    .line 5784
    :cond_b
    const-string/jumbo v1, "version"

    invoke-static {p1, v1, v7}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    .line 5786
    .local v1, "version":I
    iget-object v3, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mVersions:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 5787
    const-string v3, "fingerprint"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5788
    .local v3, "fingerprint":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    invoke-virtual {v4, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5789
    .end local v1    # "version":I
    .end local v3    # "fingerprint":Ljava/lang/String;
    nop

    .line 5811
    :goto_3
    goto/16 :goto_0

    .line 5814
    :cond_c
    return-void
.end method

.method private readLegacyStateForUserSyncLPr(I)V
    .locals 6
    .param p1, "userId"    # I

    .line 5741
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    invoke-static {v0, p1}, Lcom/android/server/pm/Settings;->access$200(Lcom/android/server/pm/Settings;I)Ljava/io/File;

    move-result-object v0

    .line 5742
    .local v0, "permissionsFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5743
    return-void

    .line 5748
    :cond_0
    :try_start_0
    new-instance v1, Landroid/util/AtomicFile;

    invoke-direct {v1, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 5752
    .local v1, "in":Ljava/io/FileInputStream;
    nop

    .line 5755
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 5756
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 5757
    invoke-direct {p0, v2, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->parseRuntimePermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;I)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5763
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 5764
    nop

    .line 5765
    return-void

    .line 5763
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 5759
    :catch_0
    move-exception v2

    .line 5760
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

    .line 5763
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "permissionsFile":Ljava/io/File;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/server/pm/Settings$RuntimePermissionPersistence;
    .restart local p1    # "userId":I
    :goto_0
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 5764
    throw v2

    .line 5749
    .end local v1    # "in":Ljava/io/FileInputStream;
    :catch_1
    move-exception v1

    .line 5750
    .local v1, "fnfe":Ljava/io/FileNotFoundException;
    const-string v2, "PackageManager"

    const-string v3, "No permissions state"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5751
    return-void
.end method

.method private readPermissionsStateLpr(Ljava/util/List;Lcom/android/server/pm/permission/PermissionsState;I)V
    .locals 8
    .param p2, "permissionsState"    # Lcom/android/server/pm/permission/PermissionsState;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;",
            ">;",
            "Lcom/android/server/pm/permission/PermissionsState;",
            "I)V"
        }
    .end annotation

    .line 5715
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 5716
    .local v0, "permissionsSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 5717
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;

    .line 5719
    .local v2, "permission":Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;
    invoke-virtual {v2}, Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v3

    .line 5720
    .local v3, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v4, v4, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/permission/PermissionSettings;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v4

    .line 5721
    .local v4, "basePermission":Lcom/android/server/pm/permission/BasePermission;
    if-nez v4, :cond_0

    .line 5722
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown permission:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PackageManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5723
    goto :goto_1

    .line 5725
    :cond_0
    invoke-virtual {v2}, Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;->isGranted()Z

    move-result v5

    .line 5726
    .local v5, "granted":Z
    invoke-virtual {v2}, Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;->getFlags()I

    move-result v6

    .line 5728
    .local v6, "flags":I
    const v7, 0x3fbff

    if-eqz v5, :cond_1

    .line 5729
    invoke-virtual {p2, v4, p3}, Lcom/android/server/pm/permission/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    .line 5730
    invoke-virtual {p2, v4, p3, v7, v6}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    goto :goto_1

    .line 5733
    :cond_1
    invoke-virtual {p2, v4, p3, v7, v6}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 5716
    .end local v2    # "permission":Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "basePermission":Lcom/android/server/pm/permission/BasePermission;
    .end local v5    # "granted":Z
    .end local v6    # "flags":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5737
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private revokeRuntimePermissionsAndClearFlags(Lcom/android/server/pm/SettingBase;I)V
    .locals 6
    .param p1, "sb"    # Lcom/android/server/pm/SettingBase;
    .param p2, "userId"    # I

    .line 5636
    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v0

    .line 5638
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

    .line 5639
    .local v2, "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    iget-object v3, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v3, v3, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/pm/permission/PermissionSettings;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v3

    .line 5640
    .local v3, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v3, :cond_0

    .line 5641
    invoke-virtual {v0, v3, p2}, Lcom/android/server/pm/permission/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    .line 5642
    const v4, 0x3fbff

    const/4 v5, 0x0

    invoke-virtual {v0, v3, p2, v4, v5}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 5645
    .end local v2    # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .end local v3    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_0
    goto :goto_0

    .line 5646
    :cond_1
    return-void
.end method

.method private writePermissionsSync(I)V
    .locals 11
    .param p1, "userId"    # I

    .line 5558
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPersistenceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5559
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mWriteScheduled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 5561
    iget-object v1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mVersions:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 5563
    .local v1, "version":I
    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5565
    .local v2, "fingerprint":Ljava/lang/String;
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 5567
    .local v3, "packagePermissions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;>;>;"
    iget-object v4, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v4, v4, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 5568
    .local v4, "packagesSize":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_1

    .line 5569
    iget-object v6, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v6, v6, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 5570
    .local v6, "packageName":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v7, v7, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PackageSetting;

    .line 5571
    .local v7, "packageSetting":Lcom/android/server/pm/PackageSetting;
    iget-object v8, v7, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v8, :cond_0

    .line 5572
    nop

    .line 5574
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v8

    .line 5573
    invoke-direct {p0, v8, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->getPermissionsFromPermissionsState(Lcom/android/server/pm/permission/PermissionsState;I)Ljava/util/List;

    move-result-object v8

    .line 5575
    .local v8, "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;>;"
    invoke-interface {v3, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5568
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    .end local v8    # "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;>;"
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 5579
    .end local v5    # "i":I
    :cond_1
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 5581
    .local v5, "sharedUserPermissions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;>;>;"
    iget-object v6, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v6, v6, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 5582
    .local v6, "sharedUsersSize":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v6, :cond_2

    .line 5583
    iget-object v8, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v8, v8, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 5584
    .local v8, "sharedUserName":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v9, v9, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/SharedUserSetting;

    .line 5585
    .local v9, "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    nop

    .line 5587
    invoke-virtual {v9}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v10

    .line 5586
    invoke-direct {p0, v10, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->getPermissionsFromPermissionsState(Lcom/android/server/pm/permission/PermissionsState;I)Ljava/util/List;

    move-result-object v10

    .line 5588
    .local v10, "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;>;"
    invoke-interface {v5, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5582
    nop

    .end local v8    # "sharedUserName":Ljava/lang/String;
    .end local v9    # "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    .end local v10    # "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;>;"
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 5591
    .end local v7    # "i":I
    :cond_2
    new-instance v7, Lcom/android/permission/persistence/RuntimePermissionsState;

    invoke-direct {v7, v1, v2, v3, v5}, Lcom/android/permission/persistence/RuntimePermissionsState;-><init>(ILjava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    move-object v1, v7

    .line 5593
    .end local v2    # "fingerprint":Ljava/lang/String;
    .end local v3    # "packagePermissions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;>;>;"
    .end local v4    # "packagesSize":I
    .end local v5    # "sharedUserPermissions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;>;>;"
    .end local v6    # "sharedUsersSize":I
    .local v1, "runtimePermissions":Lcom/android/permission/persistence/RuntimePermissionsState;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5595
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPersistence:Lcom/android/permission/persistence/RuntimePermissionsPersistence;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/permission/persistence/RuntimePermissionsPersistence;->writeForUser(Lcom/android/permission/persistence/RuntimePermissionsState;Landroid/os/UserHandle;)V

    .line 5596
    return-void

    .line 5593
    .end local v1    # "runtimePermissions":Lcom/android/permission/persistence/RuntimePermissionsState;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public deleteUserRuntimePermissionsFile(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 5649
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPersistence:Lcom/android/permission/persistence/RuntimePermissionsPersistence;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/permission/persistence/RuntimePermissionsPersistence;->deleteForUser(Landroid/os/UserHandle;)V

    .line 5650
    return-void
.end method

.method getVersionLPr(I)I
    .locals 2
    .param p1, "userId"    # I

    .line 5478
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mVersions:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method public isPermissionUpgradeNeeded(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 5489
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPermissionUpgradeNeeded:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    return v0
.end method

.method public readStateForUserSyncLPr(I)V
    .locals 16
    .param p1, "userId"    # I

    .line 5654
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPersistence:Lcom/android/permission/persistence/RuntimePermissionsPersistence;

    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/permission/persistence/RuntimePermissionsPersistence;->readForUser(Landroid/os/UserHandle;)Lcom/android/permission/persistence/RuntimePermissionsState;

    move-result-object v2

    .line 5656
    .local v2, "runtimePermissions":Lcom/android/permission/persistence/RuntimePermissionsState;
    if-nez v2, :cond_0

    .line 5657
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->readLegacyStateForUserSyncLPr(I)V

    .line 5658
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsForUserAsyncLPr(I)V

    .line 5659
    return-void

    .line 5664
    :cond_0
    invoke-virtual {v2}, Lcom/android/permission/persistence/RuntimePermissionsState;->getVersion()I

    move-result v3

    .line 5665
    .local v3, "version":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 5666
    const/4 v3, -0x1

    .line 5668
    :cond_1
    iget-object v4, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mVersions:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 5670
    invoke-virtual {v2}, Lcom/android/permission/persistence/RuntimePermissionsState;->getFingerprint()Ljava/lang/String;

    move-result-object v4

    .line 5671
    .local v4, "fingerprint":Ljava/lang/String;
    iget-object v5, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    invoke-virtual {v5, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5673
    iget-object v5, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    invoke-virtual {v5}, Lcom/android/server/pm/Settings;->getInternalVersion()Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v5

    iget v5, v5, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    const/16 v6, 0x1e

    const/4 v7, 0x1

    if-ge v5, v6, :cond_2

    move v5, v7

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    .line 5675
    .local v5, "isUpgradeToR":Z
    :goto_0
    nop

    .line 5676
    invoke-virtual {v2}, Lcom/android/permission/persistence/RuntimePermissionsState;->getPackagePermissions()Ljava/util/Map;

    move-result-object v6

    .line 5677
    .local v6, "packagePermissions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;>;>;"
    iget-object v8, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v8, v8, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 5678
    .local v8, "packagesSize":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    const-string v10, "PackageSettings"

    if-ge v9, v8, :cond_5

    .line 5679
    iget-object v11, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v11, v11, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v11, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 5680
    .local v11, "packageName":Ljava/lang/String;
    iget-object v12, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v12, v12, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v12, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/pm/PackageSetting;

    .line 5682
    .local v12, "packageSetting":Lcom/android/server/pm/PackageSetting;
    nop

    .line 5683
    invoke-interface {v6, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 5684
    .local v13, "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;>;"
    if-eqz v13, :cond_3

    .line 5685
    invoke-virtual {v12}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v10

    invoke-direct {v0, v13, v10, v1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->readPermissionsStateLpr(Ljava/util/List;Lcom/android/server/pm/permission/PermissionsState;I)V

    goto :goto_2

    .line 5687
    :cond_3
    iget-object v14, v12, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v14, :cond_4

    if-nez v5, :cond_4

    .line 5688
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Missing permission state for package: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v10, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5689
    invoke-virtual {v12}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v10

    invoke-virtual {v10, v7, v1}, Lcom/android/server/pm/permission/PermissionsState;->setMissing(ZI)V

    .line 5678
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v12    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    .end local v13    # "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;>;"
    :cond_4
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 5693
    .end local v9    # "i":I
    :cond_5
    nop

    .line 5694
    invoke-virtual {v2}, Lcom/android/permission/persistence/RuntimePermissionsState;->getSharedUserPermissions()Ljava/util/Map;

    move-result-object v9

    .line 5695
    .local v9, "sharedUserPermissions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;>;>;"
    iget-object v11, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v11, v11, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    .line 5696
    .local v11, "sharedUsersSize":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3
    if-ge v12, v11, :cond_8

    .line 5697
    iget-object v13, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v13, v13, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v13, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 5698
    .local v13, "sharedUserName":Ljava/lang/String;
    iget-object v14, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v14, v14, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v14, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/pm/SharedUserSetting;

    .line 5700
    .local v14, "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    nop

    .line 5701
    invoke-interface {v9, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    .line 5702
    .local v15, "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;>;"
    if-eqz v15, :cond_6

    .line 5703
    invoke-virtual {v14}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v7

    invoke-direct {v0, v15, v7, v1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->readPermissionsStateLpr(Ljava/util/List;Lcom/android/server/pm/permission/PermissionsState;I)V

    const/4 v7, 0x1

    goto :goto_4

    .line 5705
    :cond_6
    if-nez v5, :cond_7

    .line 5706
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Missing permission state for shared user: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5707
    invoke-virtual {v14}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v0

    const/4 v7, 0x1

    invoke-virtual {v0, v7, v1}, Lcom/android/server/pm/permission/PermissionsState;->setMissing(ZI)V

    goto :goto_4

    .line 5705
    :cond_7
    const/4 v7, 0x1

    .line 5696
    .end local v13    # "sharedUserName":Ljava/lang/String;
    .end local v14    # "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    .end local v15    # "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;>;"
    :goto_4
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    goto :goto_3

    .line 5710
    .end local v12    # "i":I
    :cond_8
    return-void
.end method

.method public setPermissionControllerVersion(J)V
    .locals 6
    .param p1, "version"    # J

    .line 5503
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 5504
    .local v0, "numUser":I
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->getExtendedFingerprint(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mExtendedFingerprint:Ljava/lang/String;

    .line 5506
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 5507
    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 5508
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5509
    .local v3, "fingerprint":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPermissionUpgradeNeeded:Landroid/util/SparseBooleanArray;

    iget-object v5, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mExtendedFingerprint:Ljava/lang/String;

    .line 5510
    invoke-static {v5, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    .line 5509
    xor-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v2, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 5506
    .end local v2    # "userId":I
    .end local v3    # "fingerprint":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5512
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method setVersionLPr(II)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "userId"    # I

    .line 5483
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mVersions:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 5484
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsForUserAsyncLPr(I)V

    .line 5485
    return-void
.end method

.method public updateRuntimePermissionsFingerprintLPr(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 5494
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mExtendedFingerprint:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5498
    iget-object v1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5499
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsForUserAsyncLPr(I)V

    .line 5500
    return-void

    .line 5495
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The version of the permission controller hasn\'t been set before trying to update the fingerprint."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writePermissionsForUserAsyncLPr(I)V
    .locals 13
    .param p1, "userId"    # I

    .line 5525
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 5527
    .local v0, "currentTimeMillis":J
    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mWriteScheduled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    const-wide/16 v3, 0xc8

    if-eqz v2, :cond_1

    .line 5528
    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5531
    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLastNotWrittenMutationTimesMillis:Landroid/util/SparseLongArray;

    .line 5532
    invoke-virtual {v2, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v5

    .line 5533
    .local v5, "lastNotWrittenMutationTimeMillis":J
    sub-long v7, v0, v5

    .line 5535
    .local v7, "timeSinceLastNotWrittenMutationMillis":J
    const-wide/16 v9, 0x7d0

    cmp-long v2, v7, v9

    if-ltz v2, :cond_0

    .line 5536
    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 5537
    return-void

    .line 5541
    :cond_0
    add-long/2addr v9, v5

    sub-long/2addr v9, v0

    const-wide/16 v11, 0x0

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    .line 5543
    .local v9, "maxDelayMillis":J
    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 5546
    .local v2, "writeDelayMillis":J
    iget-object v4, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 5547
    .local v4, "message":Landroid/os/Message;
    iget-object v11, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    invoke-virtual {v11, v4, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5548
    .end local v2    # "writeDelayMillis":J
    .end local v4    # "message":Landroid/os/Message;
    .end local v5    # "lastNotWrittenMutationTimeMillis":J
    .end local v7    # "timeSinceLastNotWrittenMutationMillis":J
    .end local v9    # "maxDelayMillis":J
    goto :goto_0

    .line 5549
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLastNotWrittenMutationTimesMillis:Landroid/util/SparseLongArray;

    invoke-virtual {v2, p1, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 5550
    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 5551
    .local v2, "message":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5552
    iget-object v3, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mWriteScheduled:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 5554
    .end local v2    # "message":Landroid/os/Message;
    :goto_0
    return-void
.end method

.method public writePermissionsForUserSyncLPr(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 5519
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5520
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsSync(I)V

    .line 5521
    return-void
.end method
