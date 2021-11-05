.class Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver$1;
.super Landroid/content/IIntentSender$Stub;
.source "PackageInstallerSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;

    .line 1271
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver$1;->this$1:Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;

    invoke-direct {p0}, Landroid/content/IIntentSender$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public send(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "whitelistToken"    # Landroid/os/IBinder;
    .param p5, "finishedReceiver"    # Landroid/content/IIntentReceiver;
    .param p6, "requiredPermission"    # Ljava/lang/String;
    .param p7, "options"    # Landroid/os/Bundle;

    .line 1275
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver$1;->this$1:Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->statusUpdate(Landroid/content/Intent;)V

    .line 1276
    return-void
.end method
