.class public final synthetic Lcom/android/server/policy/-$$Lambda$jaDybyCEM2y6SS96P5BBES0UITE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/permission/PermissionControllerManager;


# direct methods
.method public synthetic constructor <init>(Landroid/permission/PermissionControllerManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/-$$Lambda$jaDybyCEM2y6SS96P5BBES0UITE;->f$0:Landroid/permission/PermissionControllerManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/-$$Lambda$jaDybyCEM2y6SS96P5BBES0UITE;->f$0:Landroid/permission/PermissionControllerManager;

    invoke-virtual {v0}, Landroid/permission/PermissionControllerManager;->updateUserSensitive()V

    return-void
.end method
