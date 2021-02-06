.class Lcom/android/server/rollback/LocalIntentReceiver$1;
.super Landroid/content/IIntentSender$Stub;
.source "LocalIntentReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/rollback/LocalIntentReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/rollback/LocalIntentReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/rollback/LocalIntentReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/rollback/LocalIntentReceiver;

    .line 36
    iput-object p1, p0, Lcom/android/server/rollback/LocalIntentReceiver$1;->this$0:Lcom/android/server/rollback/LocalIntentReceiver;

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

    .line 40
    iget-object v0, p0, Lcom/android/server/rollback/LocalIntentReceiver$1;->this$0:Lcom/android/server/rollback/LocalIntentReceiver;

    iget-object v0, v0, Lcom/android/server/rollback/LocalIntentReceiver;->mConsumer:Ljava/util/function/Consumer;

    invoke-interface {v0, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 41
    return-void
.end method
