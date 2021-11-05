.class Lcom/android/server/policy/SoftRestrictedPermissionPolicy$3;
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
.field final synthetic val$isWhiteListed:Z

.field final synthetic val$targetSDK:I


# direct methods
.method constructor <init>(ZI)V
    .locals 0

    .line 203
    iput-boolean p1, p0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$3;->val$isWhiteListed:Z

    iput p2, p0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$3;->val$targetSDK:I

    invoke-direct {p0}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;-><init>()V

    return-void
.end method


# virtual methods
.method public mayGrantPermission()Z
    .locals 2

    .line 206
    iget-boolean v0, p0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$3;->val$isWhiteListed:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$3;->val$targetSDK:I

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
