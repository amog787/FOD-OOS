.class Lcom/android/server/am/UserController$5$1;
.super Ljava/lang/Object;
.source "UserController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/UserController$5;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/UserController$5;


# direct methods
.method constructor <init>(Lcom/android/server/am/UserController$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/am/UserController$5;

    .line 1028
    iput-object p1, p0, Lcom/android/server/am/UserController$5$1;->this$1:Lcom/android/server/am/UserController$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1031
    iget-object v0, p0, Lcom/android/server/am/UserController$5$1;->this$1:Lcom/android/server/am/UserController$5;

    iget-object v0, v0, Lcom/android/server/am/UserController$5;->this$0:Lcom/android/server/am/UserController;

    iget-object v1, p0, Lcom/android/server/am/UserController$5$1;->this$1:Lcom/android/server/am/UserController$5;

    iget-object v1, v1, Lcom/android/server/am/UserController$5;->val$uss:Lcom/android/server/am/UserState;

    iget-object v2, p0, Lcom/android/server/am/UserController$5$1;->this$1:Lcom/android/server/am/UserController$5;

    iget-boolean v2, v2, Lcom/android/server/am/UserController$5;->val$allowDelayedLocking:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/UserController;->finishUserStopped(Lcom/android/server/am/UserState;Z)V

    .line 1032
    return-void
.end method
