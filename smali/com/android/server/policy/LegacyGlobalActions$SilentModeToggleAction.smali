.class Lcom/android/server/policy/LegacyGlobalActions$SilentModeToggleAction;
.super Lcom/android/internal/globalactions/ToggleAction;
.source "LegacyGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/LegacyGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SilentModeToggleAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/LegacyGlobalActions;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/LegacyGlobalActions;)V
    .locals 6

    .line 635
    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$SilentModeToggleAction;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    .line 636
    const v1, 0x108031c

    const v2, 0x108031b

    const v3, 0x10402cc

    const v4, 0x10402cb

    const v5, 0x10402ca

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/globalactions/ToggleAction;-><init>(IIIII)V

    .line 641
    return-void
.end method


# virtual methods
.method public onToggle(Z)V
    .locals 2
    .param p1, "on"    # Z

    .line 645
    if-eqz p1, :cond_0

    .line 646
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$SilentModeToggleAction;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->access$800(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 648
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$SilentModeToggleAction;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->access$800(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 650
    :goto_0
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .line 659
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .line 654
    const/4 v0, 0x1

    return v0
.end method
