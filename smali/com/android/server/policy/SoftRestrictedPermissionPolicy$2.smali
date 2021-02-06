.class Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;
.super Lcom/android/server/policy/SoftRestrictedPermissionPolicy;
.source "SoftRestrictedPermissionPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->forPermission(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/os/UserHandle;Ljava/lang/String;)Lcom/android/server/policy/SoftRestrictedPermissionPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$hasRequestedLegacyExternalStorage:Z

.field final synthetic val$hasWriteMediaStorageGrantedForUid:Z

.field final synthetic val$isWhiteListed:Z

.field final synthetic val$shouldApplyRestriction:Z

.field final synthetic val$shouldPreserveLegacyExternalStorage:Z

.field final synthetic val$targetSDK:I


# direct methods
.method constructor <init>(ZIZZZZ)V
    .locals 0

    .line 167
    iput-boolean p1, p0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;->val$isWhiteListed:Z

    iput p2, p0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;->val$targetSDK:I

    iput-boolean p3, p0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;->val$shouldApplyRestriction:Z

    iput-boolean p4, p0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;->val$hasRequestedLegacyExternalStorage:Z

    iput-boolean p5, p0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;->val$hasWriteMediaStorageGrantedForUid:Z

    iput-boolean p6, p0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;->val$shouldPreserveLegacyExternalStorage:Z

    invoke-direct {p0}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;-><init>()V

    return-void
.end method


# virtual methods
.method public getExtraAppOpCode()I
    .locals 1

    .line 174
    const/16 v0, 0x57

    return v0
.end method

.method public mayAllowExtraAppOp()Z
    .locals 1

    .line 178
    iget-boolean v0, p0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;->val$shouldApplyRestriction:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;->val$hasRequestedLegacyExternalStorage:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;->val$hasWriteMediaStorageGrantedForUid:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;->val$shouldPreserveLegacyExternalStorage:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public mayDenyExtraAppOpIfGranted()Z
    .locals 1

    .line 185
    iget-boolean v0, p0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;->val$shouldApplyRestriction:Z

    return v0
.end method

.method public mayGrantPermission()Z
    .locals 2

    .line 170
    iget-boolean v0, p0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;->val$isWhiteListed:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;->val$targetSDK:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
