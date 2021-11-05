.class public final synthetic Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$1$7A2ffMA57G4PvFD5RbG2mRh2Q_8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$1$7A2ffMA57G4PvFD5RbG2mRh2Q_8;->f$0:I

    iput p2, p0, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$1$7A2ffMA57G4PvFD5RbG2mRh2Q_8;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$1$7A2ffMA57G4PvFD5RbG2mRh2Q_8;->f$0:I

    iget v1, p0, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$1$7A2ffMA57G4PvFD5RbG2mRh2Q_8;->f$1:I

    invoke-static {v0, v1}, Lcom/android/server/pm/permission/PermissionManagerService$1;->lambda$onPermissionRevoked$1(II)V

    return-void
.end method
