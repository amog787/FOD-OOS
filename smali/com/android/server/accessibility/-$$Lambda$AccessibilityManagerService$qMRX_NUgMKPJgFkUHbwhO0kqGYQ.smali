.class public final synthetic Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$qMRX_NUgMKPJgFkUHbwhO0kqGYQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lcom/android/server/accessibility/AccessibilityUserState;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/android/server/accessibility/AccessibilityUserState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$qMRX_NUgMKPJgFkUHbwhO0kqGYQ;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$qMRX_NUgMKPJgFkUHbwhO0kqGYQ;->f$1:Lcom/android/server/accessibility/AccessibilityUserState;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$qMRX_NUgMKPJgFkUHbwhO0kqGYQ;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$qMRX_NUgMKPJgFkUHbwhO0kqGYQ;->f$1:Lcom/android/server/accessibility/AccessibilityUserState;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->lambda$migrateAccessibilityButtonSettingsIfNecessaryLocked$15(Ljava/lang/String;Lcom/android/server/accessibility/AccessibilityUserState;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
