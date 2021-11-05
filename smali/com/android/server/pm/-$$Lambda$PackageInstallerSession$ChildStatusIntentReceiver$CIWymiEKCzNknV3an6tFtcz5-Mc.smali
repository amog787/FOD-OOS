.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageInstallerSession$ChildStatusIntentReceiver$CIWymiEKCzNknV3an6tFtcz5-Mc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$PackageInstallerSession$ChildStatusIntentReceiver$CIWymiEKCzNknV3an6tFtcz5-Mc;->f$0:Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;

    iput-object p2, p0, Lcom/android/server/pm/-$$Lambda$PackageInstallerSession$ChildStatusIntentReceiver$CIWymiEKCzNknV3an6tFtcz5-Mc;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$PackageInstallerSession$ChildStatusIntentReceiver$CIWymiEKCzNknV3an6tFtcz5-Mc;->f$0:Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;

    iget-object v1, p0, Lcom/android/server/pm/-$$Lambda$PackageInstallerSession$ChildStatusIntentReceiver$CIWymiEKCzNknV3an6tFtcz5-Mc;->f$1:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->lambda$statusUpdate$0$PackageInstallerSession$ChildStatusIntentReceiver(Landroid/content/Intent;)V

    return-void
.end method
