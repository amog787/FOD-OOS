.class Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;
.super Ljava/lang/Thread;
.source "ConfigUpdateInstallReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/updates/ConfigUpdateInstallReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/server/updates/ConfigUpdateInstallReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    .line 60
    iput-object p1, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    iput-object p2, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 65
    const-string v0, "ConfigUpdateInstallReceiver"

    const v1, 0xc864

    :try_start_0
    iget-object v2, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    iget-object v3, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-static {v2, v3, v4}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->access$000(Lcom/android/server/updates/ConfigUpdateInstallReceiver;Landroid/content/Context;Landroid/content/Intent;)[B

    move-result-object v2

    .line 67
    .local v2, "altContent":[B
    iget-object v3, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    iget-object v4, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-static {v3, v4}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->access$100(Lcom/android/server/updates/ConfigUpdateInstallReceiver;Landroid/content/Intent;)I

    move-result v3

    .line 69
    .local v3, "altVersion":I
    iget-object v4, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    iget-object v5, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-static {v4, v5}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->access$200(Lcom/android/server/updates/ConfigUpdateInstallReceiver;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    .line 71
    .local v4, "altRequiredHash":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    invoke-static {v5}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->access$300(Lcom/android/server/updates/ConfigUpdateInstallReceiver;)I

    move-result v5

    .line 73
    .local v5, "currentVersion":I
    iget-object v6, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    invoke-static {v6}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->access$400(Lcom/android/server/updates/ConfigUpdateInstallReceiver;)[B

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->access$500([B)Ljava/lang/String;

    move-result-object v6

    .line 74
    .local v6, "currentHash":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    invoke-virtual {v7, v5, v3}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->verifyVersion(II)Z

    move-result v7

    if-nez v7, :cond_0

    .line 75
    const-string v7, "Not installing, new version is <= current version"

    invoke-static {v0, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 76
    :cond_0
    iget-object v7, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    invoke-static {v7, v6, v4}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->access$600(Lcom/android/server/updates/ConfigUpdateInstallReceiver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 77
    const-string v7, "Current hash did not match required value"

    invoke-static {v1, v7}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    goto :goto_0

    .line 81
    :cond_1
    const-string v7, "Found new update, installing..."

    invoke-static {v0, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v7, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    invoke-virtual {v7, v2, v3}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->install([BI)V

    .line 83
    const-string v7, "Installation successful"

    invoke-static {v0, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v7, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    iget-object v8, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->val$context:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v7, v8, v9}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->postInstall(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .end local v2    # "altContent":[B
    .end local v3    # "altVersion":I
    .end local v4    # "altRequiredHash":Ljava/lang/String;
    .end local v5    # "currentVersion":I
    .end local v6    # "currentHash":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 86
    :catch_0
    move-exception v2

    .line 87
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Could not update content!"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "errMsg":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x64

    if-le v3, v4, :cond_2

    .line 91
    const/4 v3, 0x0

    const/16 v4, 0x63

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 93
    :cond_2
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 95
    .end local v0    # "errMsg":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
