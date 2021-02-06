.class Lcom/android/server/pm/PackageInstallerSession$4;
.super Ljava/lang/Object;
.source "PackageInstallerSession.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageInstallerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageInstallerSession;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 447
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$4;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 18
    .param p1, "msg"    # Landroid/os/Message;

    .line 450
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_1

    const/4 v4, 0x4

    if-eq v2, v4, :cond_0

    goto :goto_0

    .line 472
    :cond_0
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 473
    .local v2, "error":I
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 474
    .local v4, "detailMessage":Ljava/lang/String;
    iget-object v5, v0, Lcom/android/server/pm/PackageInstallerSession$4;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v5, v2, v4}, Lcom/android/server/pm/PackageInstallerSession;->access$500(Lcom/android/server/pm/PackageInstallerSession;ILjava/lang/String;)V

    goto :goto_0

    .line 458
    .end local v2    # "error":I
    .end local v4    # "detailMessage":Ljava/lang/String;
    :cond_1
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 459
    .local v2, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 460
    .local v4, "packageName":Ljava/lang/String;
    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v14, v5

    check-cast v14, Ljava/lang/String;

    .line 461
    .local v14, "message":Ljava/lang/String;
    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object v15, v5

    check-cast v15, Landroid/os/Bundle;

    .line 462
    .local v15, "extras":Landroid/os/Bundle;
    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object/from16 v16, v5

    check-cast v16, Landroid/content/IntentSender;

    .line 463
    .local v16, "statusReceiver":Landroid/content/IntentSender;
    iget v13, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 464
    .local v13, "returnCode":I
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 466
    iget-object v5, v0, Lcom/android/server/pm/PackageInstallerSession$4;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v5}, Lcom/android/server/pm/PackageInstallerSession;->access$200(Lcom/android/server/pm/PackageInstallerSession;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/pm/PackageInstallerSession$4;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget v7, v6, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    iget-object v6, v0, Lcom/android/server/pm/PackageInstallerSession$4;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 467
    invoke-static {v6}, Lcom/android/server/pm/PackageInstallerSession;->access$300(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v8

    iget-object v6, v0, Lcom/android/server/pm/PackageInstallerSession$4;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget v9, v6, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    .line 466
    move-object/from16 v6, v16

    move-object v10, v4

    move v11, v13

    move-object v12, v14

    move/from16 v17, v13

    .end local v13    # "returnCode":I
    .local v17, "returnCode":I
    move-object v13, v15

    invoke-static/range {v5 .. v13}, Lcom/android/server/pm/PackageInstallerSession;->access$400(Landroid/content/Context;Landroid/content/IntentSender;IZILjava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 470
    goto :goto_0

    .line 455
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v14    # "message":Ljava/lang/String;
    .end local v15    # "extras":Landroid/os/Bundle;
    .end local v16    # "statusReceiver":Landroid/content/IntentSender;
    .end local v17    # "returnCode":I
    :cond_2
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession$4;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v2}, Lcom/android/server/pm/PackageInstallerSession;->access$100(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 456
    goto :goto_0

    .line 452
    :cond_3
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession$4;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v2}, Lcom/android/server/pm/PackageInstallerSession;->access$000(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 453
    nop

    .line 478
    :goto_0
    return v3
.end method
