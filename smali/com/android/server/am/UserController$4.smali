.class Lcom/android/server/am/UserController$4;
.super Landroid/content/IIntentReceiver$Stub;
.source "UserController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/UserController;->lambda$stopSingleUserLU$5(ILcom/android/server/am/UserState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/UserController;

.field final synthetic val$userId:I

.field final synthetic val$uss:Lcom/android/server/am/UserState;


# direct methods
.method constructor <init>(Lcom/android/server/am/UserController;ILcom/android/server/am/UserState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/UserController;

    .line 800
    iput-object p1, p0, Lcom/android/server/am/UserController$4;->this$0:Lcom/android/server/am/UserController;

    iput p2, p0, Lcom/android/server/am/UserController$4;->val$userId:I

    iput-object p3, p0, Lcom/android/server/am/UserController$4;->val$uss:Lcom/android/server/am/UserState;

    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$performReceive$0$UserController$4(ILcom/android/server/am/UserState;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "uss"    # Lcom/android/server/am/UserState;

    .line 804
    iget-object v0, p0, Lcom/android/server/am/UserController$4;->this$0:Lcom/android/server/am/UserController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/UserController;->finishUserStopping(ILcom/android/server/am/UserState;)V

    return-void
.end method

.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resultCode"    # I
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "ordered"    # Z
    .param p6, "sticky"    # Z
    .param p7, "sendingUser"    # I

    .line 804
    iget-object v0, p0, Lcom/android/server/am/UserController$4;->this$0:Lcom/android/server/am/UserController;

    invoke-static {v0}, Lcom/android/server/am/UserController;->access$200(Lcom/android/server/am/UserController;)Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/UserController$4;->val$userId:I

    iget-object v2, p0, Lcom/android/server/am/UserController$4;->val$uss:Lcom/android/server/am/UserState;

    new-instance v3, Lcom/android/server/am/-$$Lambda$UserController$4$P3Sj7pxBXLC7k_puCIIki2uVgGE;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/server/am/-$$Lambda$UserController$4$P3Sj7pxBXLC7k_puCIIki2uVgGE;-><init>(Lcom/android/server/am/UserController$4;ILcom/android/server/am/UserState;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 805
    return-void
.end method
