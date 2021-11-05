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
.method constructor <init>(Lcom/android/server/updates/ConfigUpdateInstallReceiver;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    .line 63
    iput-object p1, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    iput-object p2, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 68
    const-string v0, "ConfigUpdateInstallReceiver"

    const v1, 0xc864

    :try_start_0
    iget-object v2, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    iget-object v3, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-static {v2, v3}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->access$000(Lcom/android/server/updates/ConfigUpdateInstallReceiver;Landroid/content/Intent;)I

    move-result v2

    .line 70
    .local v2, "altVersion":I
    iget-object v3, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    iget-object v4, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-static {v3, v4}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->access$100(Lcom/android/server/updates/ConfigUpdateInstallReceiver;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, "altRequiredHash":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    invoke-static {v4}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->access$200(Lcom/android/server/updates/ConfigUpdateInstallReceiver;)I

    move-result v4

    .line 74
    .local v4, "currentVersion":I
    iget-object v5, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    invoke-static {v5}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->access$300(Lcom/android/server/updates/ConfigUpdateInstallReceiver;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->access$400([B)Ljava/lang/String;

    move-result-object v5

    .line 75
    .local v5, "currentHash":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    invoke-virtual {v6, v4, v2}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->verifyVersion(II)Z

    move-result v6

    if-nez v6, :cond_0

    .line 76
    const-string v6, "Not installing, new version is <= current version"

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 77
    :cond_0
    iget-object v6, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    invoke-static {v6, v5, v3}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->access$500(Lcom/android/server/updates/ConfigUpdateInstallReceiver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 78
    const-string v6, "Current hash did not match required value"

    invoke-static {v1, v6}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    goto :goto_0

    .line 82
    :cond_1
    const-string v6, "Found new update, installing..."

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v6, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    iget-object v7, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->val$context:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-static {v6, v7, v8}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->access$600(Lcom/android/server/updates/ConfigUpdateInstallReceiver;Landroid/content/Context;Landroid/content/Intent;)Ljava/io/BufferedInputStream;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .local v6, "altContent":Ljava/io/BufferedInputStream;
    :try_start_1
    iget-object v7, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    invoke-virtual {v7, v6, v2}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->install(Ljava/io/InputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    if-eqz v6, :cond_2

    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V

    .line 86
    .end local v6    # "altContent":Ljava/io/BufferedInputStream;
    :cond_2
    const-string v6, "Installation successful"

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v6, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    iget-object v7, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->val$context:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v6, v7, v8}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->postInstall(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 97
    .end local v2    # "altVersion":I
    .end local v3    # "altRequiredHash":Ljava/lang/String;
    .end local v4    # "currentVersion":I
    .end local v5    # "currentHash":Ljava/lang/String;
    :goto_0
    goto :goto_2

    .line 83
    .restart local v2    # "altVersion":I
    .restart local v3    # "altRequiredHash":Ljava/lang/String;
    .restart local v4    # "currentVersion":I
    .restart local v5    # "currentHash":Ljava/lang/String;
    .restart local v6    # "altContent":Ljava/io/BufferedInputStream;
    :catchall_0
    move-exception v7

    if-eqz v6, :cond_3

    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v8

    :try_start_4
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;
    :cond_3
    :goto_1
    throw v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 89
    .end local v2    # "altVersion":I
    .end local v3    # "altRequiredHash":Ljava/lang/String;
    .end local v4    # "currentVersion":I
    .end local v5    # "currentHash":Ljava/lang/String;
    .end local v6    # "altContent":Ljava/io/BufferedInputStream;
    .restart local p0    # "this":Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;
    :catch_0
    move-exception v2

    .line 90
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Could not update content!"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "errMsg":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x64

    if-le v3, v4, :cond_4

    .line 94
    const/4 v3, 0x0

    const/16 v4, 0x63

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 96
    :cond_4
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 98
    .end local v0    # "errMsg":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method
