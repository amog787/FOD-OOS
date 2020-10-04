.class Lcom/android/server/policy/LegacyGlobalActions$13;
.super Landroid/os/Handler;
.source "LegacyGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/LegacyGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/LegacyGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/LegacyGlobalActions;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/LegacyGlobalActions;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 808
    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$13;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 812
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 824
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$13;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->access$1300(Lcom/android/server/policy/LegacyGlobalActions;)V

    goto :goto_0

    .line 820
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$13;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->access$1200(Lcom/android/server/policy/LegacyGlobalActions;)V

    .line 821
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$13;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->access$500(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/internal/globalactions/ActionsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/globalactions/ActionsAdapter;->notifyDataSetChanged()V

    .line 822
    goto :goto_0

    .line 814
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$13;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->access$1100(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/internal/globalactions/ActionsDialog;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 815
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$13;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->access$1100(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/internal/globalactions/ActionsDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/globalactions/ActionsDialog;->dismiss()V

    .line 816
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$13;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/policy/LegacyGlobalActions;->access$1102(Lcom/android/server/policy/LegacyGlobalActions;Lcom/android/internal/globalactions/ActionsDialog;)Lcom/android/internal/globalactions/ActionsDialog;

    .line 827
    :cond_3
    :goto_0
    return-void
.end method
