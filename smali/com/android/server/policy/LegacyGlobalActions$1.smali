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
    .param p2, "x0"    # I
    .param p3, "x1"    # I
    .param p4, "x2"    # I
    .param p5, "x3"    # I
    .param p6, "x4"    # I

    .line 228
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

    .line 247
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$1;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->access$000(Lcom/android/server/policy/LegacyGlobalActions;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 250
    :cond_0
    nop

    .line 251
    const-string/jumbo v0, "ril.cdma.inecmmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 250
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 252
    if-eqz p1, :cond_1

    sget-object v0, Lcom/android/internal/globalactions/ToggleAction$State;->TurningOn:Lcom/android/internal/globalactions/ToggleAction$State;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/internal/globalactions/ToggleAction$State;->TurningOff:Lcom/android/internal/globalactions/ToggleAction$State;

    :goto_0
    iput-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$1;->mState:Lcom/android/internal/globalactions/ToggleAction$State;

    .line 253
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$1;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions$1;->mState:Lcom/android/internal/globalactions/ToggleAction$State;

    invoke-static {v0, v1}, Lcom/android/server/policy/LegacyGlobalActions;->access$402(Lcom/android/server/policy/LegacyGlobalActions;Lcom/android/internal/globalactions/ToggleAction$State;)Lcom/android/internal/globalactions/ToggleAction$State;

    .line 255
    :cond_2
    return-void
.end method

.method public onToggle(Z)V
    .locals 3
    .param p1, "on"    # Z

    .line 232
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$1;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->access$000(Lcom/android/server/policy/LegacyGlobalActions;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    const-string/jumbo v0, "ril.cdma.inecmmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$1;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/policy/LegacyGlobalActions;->access$102(Lcom/android/server/policy/LegacyGlobalActions;Z)Z

    .line 236
    new-instance v0, Landroid/content/Intent;

    const/4 v1, 0x0

    const-string v2, "com.android.internal.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 238
    .local v0, "ecmDialogIntent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 239
    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions$1;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/LegacyGlobalActions;->access$200(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 240
    .end local v0    # "ecmDialogIntent":Landroid/content/Intent;
    goto :goto_0

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$1;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0, p1}, Lcom/android/server/policy/LegacyGlobalActions;->access$300(Lcom/android/server/policy/LegacyGlobalActions;Z)V

    .line 243
    :goto_0
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .line 264
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .line 259
    const/4 v0, 0x1

    return v0
.end method
