.class public Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;
.super Ljava/lang/Object;
.source "PermissionManagerServiceInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PermissionCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGidsChanged(II)V
    .locals 0
    .param p1, "appId"    # I
    .param p2, "userId"    # I

    .line 152
    return-void
.end method

.method public onInstallPermissionGranted()V
    .locals 0

    .line 158
    return-void
.end method

.method public onInstallPermissionRevoked()V
    .locals 0

    .line 162
    return-void
.end method

.method public onInstallPermissionUpdated()V
    .locals 0

    .line 172
    return-void
.end method

.method public onInstallPermissionUpdatedNotifyListener(I)V
    .locals 0
    .param p1, "uid"    # I

    .line 174
    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onInstallPermissionUpdated()V

    .line 175
    return-void
.end method

.method public onPermissionChanged()V
    .locals 0

    .line 154
    return-void
.end method

.method public onPermissionGranted(II)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "userId"    # I

    .line 156
    return-void
.end method

.method public onPermissionRemoved()V
    .locals 0

    .line 170
    return-void
.end method

.method public onPermissionRevoked(IILjava/lang/String;)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "userId"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .line 160
    return-void
.end method

.method public onPermissionUpdated([IZ)V
    .locals 0
    .param p1, "updatedUserIds"    # [I
    .param p2, "sync"    # Z

    .line 164
    return-void
.end method

.method public onPermissionUpdatedNotifyListener([IZI)V
    .locals 0
    .param p1, "updatedUserIds"    # [I
    .param p2, "sync"    # Z
    .param p3, "uid"    # I

    .line 167
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onPermissionUpdated([IZ)V

    .line 168
    return-void
.end method
