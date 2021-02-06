.class public final synthetic Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$GUp_mA8vmiAcg0R2-X_abqkp5m8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/accessibility/AccessibilityUserState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$GUp_mA8vmiAcg0R2-X_abqkp5m8;->f$0:Lcom/android/server/accessibility/AccessibilityUserState;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$GUp_mA8vmiAcg0R2-X_abqkp5m8;->f$0:Lcom/android/server/accessibility/AccessibilityUserState;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->lambda$updateAccessibilityButtonTargetsLocked$13(Lcom/android/server/accessibility/AccessibilityUserState;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
