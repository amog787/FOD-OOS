.class Lcom/android/server/policy/LegacyGlobalActions$1;
.super Lcom/android/internal/globalactions/ToggleAction;
.source "LegacyGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/LegacyGlobalActions;->createDialog()Lcom/android/internal/globalactions/ActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/LegacyGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/LegacyGlobalActions;IIIII)V
    .locals 6
    .param p1, "this$0"    # Lcom/android/server/policy/LegacyGlobalActions;
    .param p2, "enabledIconResId"    # I
    .param p3, "disabledIconResid"    # I
    .param p4, "message"    # I
    .param p5, "enabledStatusMessageResId"    # I
    .param p6, "disabledStatusMessageResId"    # I

    .line 227
    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$1;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/globalactions/ToggleAction;-><init>(IIIII)V

    return-void
.end method


# virtual methods
.method protected changeStateFromPress(Z)V
    .locals 2
    .param p1, "buttonOn"    # Z

    .line 245
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$1;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->access$000(Lcom/android/server/policy/LegacyGlobalActions;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 248
    :cond_0
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->in_ecm_mode()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 249
    if-eqz p1, :cond_1

    sget-object v0, Lcom/android/internal/globalactions/ToggleAction$State;->TurningOn:Lcom/android/internal/globalactions/ToggleAction$State;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/internal/globalactions/ToggleAction$State;->TurningOff:Lcom/android/internal/globalactions/ToggleAction$State;

    :goto_0
    iput-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$1;->mState:Lcom/android/internal/globalactions/ToggleAction$State;

    .line 250
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$1;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions$1;->mState:Lcom/android/internal/globalactions/ToggleAction$State;

    invoke-static {v0, v1}, Lcom/android/server/policy/LegacyGlobalActions;->access$402(Lcom/android/server/policy/LegacyGlobalActions;Lcom/android/internal/globalactions/ToggleAction$State;)Lcom/android/internal/globalactions/ToggleAction$State;

    .line 252
    :cond_2
    return-void
.end method

.method public onToggle(Z)V
    .locals 3
    .param p1, "on"    # Z

    .line 231
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$1;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->access$000(Lcom/android/server/policy/LegacyGlobalActions;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/sysprop/TelephonyProperties;->in_ecm_mode()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$1;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/policy/LegacyGlobalActions;->access$102(Lcom/android/server/policy/LegacyGlobalActions;Z)Z

    .line 234
    new-instance v0, Landroid/content/Intent;

    const/4 v1, 0x0

    const-string v2, "android.telephony.action.SHOW_NOTICE_ECM_BLOCK_OTHERS"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 236
    .local v0, "ecmDialogIntent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 237
    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions$1;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/LegacyGlobalActions;->access$200(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 238
    .end local v0    # "ecmDialogIntent":Landroid/content/Intent;
    goto :goto_0

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$1;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0, p1}, Lcom/android/server/policy/LegacyGlobalActions;->access$300(Lcom/android/server/policy/LegacyGlobalActions;Z)V

    .line 241
    :goto_0
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .line 261
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .line 256
    const/4 v0, 0x1

    return v0
.end method
