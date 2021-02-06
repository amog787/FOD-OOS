.class Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "AppIntegrityManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManagerInternal;Ljava/util/function/Supplier;Lcom/android/server/integrity/engine/RuleEvaluationEngine;Lcom/android/server/integrity/IntegrityFileManager;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;

    .line 173
    iput-object p1, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$1;->this$0:Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onReceive$0$AppIntegrityManagerServiceImpl$1(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 180
    iget-object v0, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$1;->this$0:Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;

    invoke-static {v0, p1}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->access$100(Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;Landroid/content/Intent;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 176
    nop

    .line 177
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 176
    const-string v1, "android.intent.action.PACKAGE_NEEDS_INTEGRITY_VERIFICATION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$1;->this$0:Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->access$000(Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/integrity/-$$Lambda$AppIntegrityManagerServiceImpl$1$AQicMJqZVSufBnAD8HJ81gPtf7Y;

    invoke-direct {v1, p0, p2}, Lcom/android/server/integrity/-$$Lambda$AppIntegrityManagerServiceImpl$1$AQicMJqZVSufBnAD8HJ81gPtf7Y;-><init>(Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$1;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 181
    return-void
.end method
