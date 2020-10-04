.class Lcom/android/server/policy/LegacyGlobalActions$5;
.super Lcom/android/internal/globalactions/SinglePressAction;
.source "LegacyGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/LegacyGlobalActions;->getAssistAction()Lcom/android/internal/globalactions/Action;
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

    .line 462
    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$5;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-direct {p0, p2, p3}, Lcom/android/internal/globalactions/SinglePressAction;-><init>(II)V

    return-void
.end method


# virtual methods
.method public onPress()V
    .locals 2

    .line 465
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ASSIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 466
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 467
    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions$5;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/LegacyGlobalActions;->access$200(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 468
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .line 477
    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .line 472
    const/4 v0, 0x1

    return v0
.end method
