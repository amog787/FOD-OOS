.class Lcom/android/server/policy/LegacyGlobalActions$4;
.super Lcom/android/internal/globalactions/SinglePressAction;
.source "LegacyGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/LegacyGlobalActions;->getEmergencyAction()Lcom/android/internal/globalactions/Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/LegacyGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/LegacyGlobalActions;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/LegacyGlobalActions;
    .param p2, "x0"    # I
    .param p3, "x1"    # I

    .line 442
    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$4;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-direct {p0, p2, p3}, Lcom/android/internal/globalactions/SinglePressAction;-><init>(II)V

    return-void
.end method


# virtual methods
.method public onPress()V
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$4;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->access$700(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/internal/util/EmergencyAffordanceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/EmergencyAffordanceManager;->performEmergencyCall()V

    .line 446
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .line 455
    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .line 450
    const/4 v0, 0x1

    return v0
.end method
