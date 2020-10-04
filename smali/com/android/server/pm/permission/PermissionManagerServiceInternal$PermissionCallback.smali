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

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGidsChanged(II)V
    .locals 0
    .param p1, "appId"    # I
    .param p2, "userId"    # I

    .line 48
    return-void
.end method

.method public onInstallPermissionGranted()V
    .locals 0

    .line 54
    return-void
.end method

.method public onInstallPermissionRevoked()V
    .locals 0

    .line 58
    return-void
.end method

.method public onInstallPermissionUpdated()V
    .locals 0

    .line 64
    return-void
.end method

.method public onPermissionChanged()V
    .locals 0

    .line 50
    return-void
.end method

.method public onPermissionGranted(II)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "userId"    # I

    .line 52
    return-void
.end method

.method public onPermissionRemoved()V
    .locals 0

    .line 62
    return-void
.end method

.method public onPermissionRevoked(II)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "userId"    # I

    .line 56
    return-void
.end method

.method public onPermissionUpdated([IZ)V
    .locals 0
    .param p1, "updatedUserIds"    # [I
    .param p2, "sync"    # Z

    .line 60
    return-void
.end method
