.class Lcom/android/server/policy/LegacyGlobalActions$10;
.super Landroid/telephony/PhoneStateListener;
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
.method constructor <init>(Lcom/android/server/policy/LegacyGlobalActions;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/LegacyGlobalActions;

    .line 759
    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$10;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .line 762
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$10;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->access$000(Lcom/android/server/policy/LegacyGlobalActions;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 763
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 764
    .local v0, "inAirplaneMode":Z
    :goto_0
    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions$10;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    if-eqz v0, :cond_2

    sget-object v2, Lcom/android/internal/globalactions/ToggleAction$State;->On:Lcom/android/internal/globalactions/ToggleAction$State;

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/android/internal/globalactions/ToggleAction$State;->Off:Lcom/android/internal/globalactions/ToggleAction$State;

    :goto_1
    invoke-static {v1, v2}, Lcom/android/server/policy/LegacyGlobalActions;->access$402(Lcom/android/server/policy/LegacyGlobalActions;Lcom/android/internal/globalactions/ToggleAction$State;)Lcom/android/internal/globalactions/ToggleAction$State;

    .line 765
    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions$10;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/LegacyGlobalActions;->access$900(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/internal/globalactions/ToggleAction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions$10;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/LegacyGlobalActions;->access$400(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/internal/globalactions/ToggleAction$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/globalactions/ToggleAction;->updateState(Lcom/android/internal/globalactions/ToggleAction$State;)V

    .line 766
    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions$10;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/LegacyGlobalActions;->access$500(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/internal/globalactions/ActionsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/globalactions/ActionsAdapter;->notifyDataSetChanged()V

    .line 767
    return-void
.end method
